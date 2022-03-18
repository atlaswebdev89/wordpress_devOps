Vagrant.configure("2") do |config|
  config.vm.box = "debian/buster64"  
  config.vm.hostname = "wordpress"  
  #Имя в Vagrant Status 
  config.vm.define "WordpressDevTools"
  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = false
  # Настройка публичной сети 
  config.vm.network "public_network", bridge: "wlan0"
  # Для настройки nfs (двухсторонняя сихронизация) необходим витруальный адаптер host-only
  # Создается приватная сеть и назначается ip адресс (dhcp не работает !!! WARNING!!! BUG!! )	
  config.vm.network "private_network", ip: "192.168.70.100"	 
  # Синхронизация каталогов
  config.vm.synced_folder "config/", "/home/config/", type: "nfs",linux__nfs_options: ['rw','no_subtree_check','all_squash','async']
  config.vm.synced_folder "site/", "/var/www/site", type: "nfs", linux__nfs_options: ['rw','no_subtree_check','all_squash','async']
  #Настройки virtualbox
  config.vm.provider "virtualbox" do |vb|
      # Без графического интерфейса
      vb.gui = false
      # Для отображения понятного имени в virtualbox
      vb.name = "WP-Instance"
      # объем оперативной памяти
      vb.memory = 1024
      # количество ядер процессора
      vb.cpus = 2
  end
  
  # Устранения бага при монтировании nfs
  config.vm.provision "nfs-not-bags", type: "shell", run: "always" do |s|
    vagrant_root = File.dirname(__FILE__);
    s.inline = "sudo mount 192.168.70.1:$1/site /var/www/site;
                sudo mount 192.168.70.1:$1/config /home/config;"
    s.args   = [vagrant_root]
  end

  config.vm.provision "start", type: "shell", path: "initWordpressBox/start.sh"

  # В этом провижине указана опция run: always, которая запускает его всегда при старте VAGRANT И ПОЛНОСТЬЮ ПЕРЕЗАПИСЫВАЕТ
  # БАЗУ ДАННЫХ Это не всегда нужно
  #config.vm.provision "siteEnable", type: "shell", run: "always", path: "initWordpressBox/config-site.sh"
  
  config.vm.provision "siteEnable", type: "shell",  path: "initWordpressBox/config-site.sh"
  config.vm.provision "wp-cli", type: "shell", path: "initWordpressBox/wp-cli.sh"
  config.vm.provision "phpmyadmin", type: "shell", path: "initWordpressBox/phpmyadmin.sh"
  config.vm.provision "redis", type: "shell", path: "initWordpressBox/redis.sh"
  config.vm.provision "memchached", type: "shell", path: "initWordpressBox/memcached.sh"
  config.vm.provision "xdebug", type: "shell", path: "initWordpressBox/xdebug.sh"
end
