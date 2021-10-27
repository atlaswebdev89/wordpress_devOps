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
  # Синхронизация каталогов
  config.vm.synced_folder "config/", "/etc/apache2/sites-available/"
  config.vm.synced_folder "site/", "/var/www/site"
  #Настройки virtualbox
  config.vm.provider "virtualbox" do |vb|
      # Без графического интерфейса
      vb.gui = false
      # Для отображения понятного имени в virtualbox
      vb.name = "WP-Instance"
  end
  
  config.vm.provision "start", type: "shell", path: "initWordpressBox/start.sh"
 # config.vm.provision "route", type: "shell", run: "always", path: "init/vpn_route.sh"
 # config.vm.provision "connect", type: "shell", path: "init/connectVPN.sh"
end