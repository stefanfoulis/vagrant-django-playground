Vagrant::Config.run do |config|
  config.vm.define :web do |web_config|
    web_config.vm.box = "lucid32"
    web_config.vm.network "33.33.33.10"
    web_config.vm.provision :puppet
  end
  
  config.vm.define :db do |db_config|
    db_config.vm.box = "lucid32"
    db_config.vm.network "33.33.33.11"
    db_config.vm.provision :puppet
  end
end
