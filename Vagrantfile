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
  config.vm.network "private_network", ip: "192.168.56.100"	 
  # Синхронизация каталогов
  config.vm.synced_folder "config/", "/home/apache2/config/", type: "nfs", linux__nfs_options: ['rw','no_subtree_check','all_squash','async']
  config.vm.synced_folder "site/", "/var/www/site", type: "nfs", linux__nfs_options: ['rw','no_subtree_check','all_squash','async']
  #Настройки virtualbox
  config.vm.provider "virtualbox" do |vb|
      # Без графического интерфейса
      vb.gui = false
      # Для отображения понятного имени в virtualbox
      vb.name = "WP-Instance"
  end
  
  config.vm.provision "start", type: "shell", path: "initWordpressBox/start.sh"
  config.vm.provision "siteEnable", type: "shell", run: "always", path: "initWordpressBox/config-site.sh"
  config.vm.provision "wp-cli", type: "shell", path: "initWordpressBox/wp-cli.sh"
end
