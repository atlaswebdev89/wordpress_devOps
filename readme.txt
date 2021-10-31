# Обновить весь provision
vagrant provision
# или
vagrant reload --provision

# Обновить настройки site (настройки virtualhost)
vagrant provision --provision-with siteEnable

# Обновить настройки phpmyadmin
vagrant provision --provision-with phpmyadmin
