var gulp = require('gulp'),
    del    = require('del'),//Подключаем библиотеку для удаления файлов и папок
    cache = require('gulp-cache'), //Кеширование изображений
    imagemin = require('gulp-imagemin');// Сжатие изображение
    cssnano = require("gulp-cssnano"), // Минимизация CSS
    autoprefixer = require('gulp-autoprefixer'), // Проставлет вендорные префиксы в CSS для поддержки старых браузеров
    concat = require("gulp-concat"), // Объединение файлов - конкатенация
    uglify = require("gulp-uglify"), // Минимизация javascript
    rename = require("gulp-rename"); // Переименование файлов

var shell = require("gulp-shell"); // Переименование файлов
var rsync = require('gulp-rsync'); //Синхронизация папок и файлов
var ftpV = require('vinyl-ftp'); // Для загрузки по ftp
var gutil = require('gulp-util'); // Дополнительные утилиты

// Отличие rsync от copy (src .. dest.. )
// Rsync быстрее и точнее синхронизирует (папка полностью соответсвует папке источнику)
// Если в одну папку копируются разные файлы rsync может их перезаписать, поэтому 
// rsync надо использовать для точного соответсвия папки источника и папки назначения
// Для данного проекта rsync на подходит
// 
// copy при удалении файлов в исходной папке не удаляет в dest. 
// Необходимо запускать gulp заного 

//Название новой темы Wordpress
var theme = "test";

//Доступ к ftp
var ftp_server="test";
var ftp_user="test";
var ftp_password ="12345678";

// Путь к файлам новой темы
var path_theme = "site/wp-content/themes/"+theme;

// Путь к папке плагинов
var path_plugins = "site/wp-content/plugins/";

//Деплой на предпродакшен  сервер по ftp 
gulp.task('deploy-ftp', function() {
                                        var conn = ftpV.create({
                                        host: ftp_server,
                                        user: ftp_user,
                                        password: ftp_password,
                                        parallel:  10,
                                        log: gutil.log
                                    });
            console.log("ftp task is running!");
            
            return gulp.src(path_theme+"/**/*", { dot: true, buffer: false })
                    .pipe(conn.dest('/wp-content/themes/'+theme));
});

// Копируем плагины в wordpress каталог
gulp.task ("copy-plugins", function () {
   return gulp.src("app/plugins/**/*")
        .pipe (gulp.dest(path_plugins))
});

// Копируем основной файл для темы style.css
gulp.task ("copy-style", function () {
   return gulp.src("app/theme/style/**/*.+(css)")
            .pipe(rename("style.css"))
        .pipe (gulp.dest(path_theme))
});

// Копируем изображение для темы название меняем а расширение оставляем таким же
gulp.task ("copy-screenshot", function () {
   return gulp.src("app/theme/screenshot/**/*.+(png|jpeg|jpg|svg|gif|ico)")
            .pipe(rename(function (path) {
                path.basename = "screenshot";
            }))
        .pipe (gulp.dest(path_theme))
});

// Копируем файлы переводов
gulp.task ("lang", function () {
   return gulp.src("app/theme/languages/**/*")
        .pipe (gulp.dest(path_theme+"/languages/"))
});

// Копирование файлов php для темы
gulp.task ("copy-files-theme", function () {
   return gulp.src("app/theme/php/**/*")
             .pipe(gulp.dest(path_theme))
});

// Копируем стили для страницы авторизации (wp-admin)
gulp.task('copy-style-login', function() {
  return gulp.src("app/theme/styleLogin/**/*.+(css)")
        .pipe(concat('login-style.css'))
        .pipe(autoprefixer())
        .pipe(cssnano())
        .pipe(rename({ suffix: '.min' }))
        .pipe(gulp.dest(path_theme+"/assets/css")); 
});

//Копируем шрифты
gulp.task('fonts', function() {
  return gulp.src('app/assets/frontend/fonts/**/*')
    .pipe(gulp.dest(path_theme+"/assets/fonts"))
});

// *************** CSS ******************************************************* 
//Копирование файлов css дополнительных расширений для проекта
gulp.task("copy-css-ext", function () {
    return gulp.src ("app/assets/frontend-extensions/**/*.+(css)")
            .pipe(rename({dirname: ""})) // убрать директории
            .pipe (gulp.dest(path_theme+"/assets/css"))
});

//Оптимизация css
gulp.task("css", function () {
   return gulp.src("app/assets/frontend/css/**/*.+(css)")
        .pipe(concat('main.css'))
        .pipe(autoprefixer())
        .pipe(cssnano())
        .pipe(rename({ suffix: '.min' }))
        .pipe(gulp.dest(path_theme+"/assets/css")); 
});
// *************** END CSS ****************************************************

// *************** JS ******************************************************* 
//Копирование файлов css дополнительных расширений для проекта
gulp.task("copy-js-ext", function () {
    return gulp.src ("app/assets/frontend-extensions/**/*.js")
            .pipe(rename({dirname: ""})) // убрать директории
             .pipe (gulp.dest(path_theme+"/assets/js"))
});
//Оптимизация js
gulp.task("scripts", function() {
    return gulp.src("app/assets/frontend/js/**/*.js") // директория откуда брать исходники
        .pipe(concat('main.js')) // объеденим все js-файлы в один 
        .pipe(uglify()) // вызов плагина uglify - сжатие кода
        .pipe(rename({ suffix: '.min' })) // вызов плагина rename - переименование файла с приставкой .min
        .pipe(gulp.dest(path_theme+"/assets/js")); // директория продакшена, т.е. куда сложить готовый файл
});

// *************** END JS ****************************************************

//Оптимизация и копирование изображений
gulp.task("images", function() {
    return gulp.src("app/assets/frontend/images/**/*.+(png|jpeg|jpg|svg|gif|ico)")
            .pipe(cache(imagemin({
                progressive: true,
                svgoPlugins: [{ removeViewBox: false }],
                interlaced: true
            })))
            .pipe(gulp.dest(path_theme+"/assets/images"))
});

//Следить за изменениями в файлах
gulp.task ("watcher", function () {
    gulp.watch("app/theme/style/**/*.+(css)", gulp.parallel("copy-style"));
    gulp.watch("app/theme/styleLogin/**/*.+(css)", gulp.parallel("copy-style-login"));
    gulp.watch('app/theme/php/**',   gulp.parallel('copy-files-theme'));
    gulp.watch('app/theme/languages/**',   gulp.parallel('lang'));
    gulp.watch("app/theme/screenshot/**/*.+(png|jpeg|jpg|svg|gif|ico)",   gulp.parallel('copy-screenshot'));
    gulp.watch("app/assets/frontend/fonts/**/*",  gulp.parallel('fonts'));
    gulp.watch("app/assets/frontend/images/**/*.+(png|jpeg|jpg|svg|gif|ico)",  gulp.parallel('images'));
    gulp.watch("app/assets/frontend/css/**/*.css", gulp.parallel("css"));
    gulp.watch("app/assets/frontend/js/**/*.js", gulp.parallel("scripts"));
    gulp.watch("app/assets/frontend-extensions/**/*.+(css)", gulp.parallel("copy-css-ext"));
    gulp.watch("app/assets/frontend-extensions/**/*.js", gulp.parallel("copy-js-ext"));
    gulp.watch("app/plugins/**/*", gulp.parallel("copy-plugins"));
});

//Для удаления папки dist перед сборкой
gulp.task("del", function () {
   return del(path_theme); // Удаляем папку theme перед сборкой 
});

//Очистка кеша
gulp.task('clear', function (callback) {
    return cache.clearAll();
});

gulp.task("default", gulp.parallel(
                                    "copy-style",
                                    "copy-style-login",
                                    "copy-screenshot",
                                    "lang",
                                    "copy-css-ext", 
                                    "copy-js-ext",
                                    "images",  
                                    "fonts",
                                    "copy-files-theme",
                                    "css",
                                    "scripts", 
                                    "copy-plugins",
                                    "watcher"
                                              ));
gulp.task("build", gulp.series(
                                    "del", 
                                    "clear", 
                                    "copy-files-theme",
                                    "lang",
                                    "copy-style",
                                    "copy-style-login",
                                    "copy-screenshot",
                                    "copy-css-ext", 
                                    "copy-js-ext",
                                    "copy-plugins",
                                    "images",  
                                    "fonts",
                                    "css",
                                    "scripts"
                                                ));


