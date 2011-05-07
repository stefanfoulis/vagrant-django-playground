Vagrant::Config.run do |config|
  config.vm.box = "lucid32"
  config.vm.network "33.33.33.10"

  # config.vm.forward_port "http", 80, 8080
  
  config.vm.provision :puppet
end
