Vagrant::Config.run do |config|
  config.vm.define :node1 do |node1|
    node1.vm.box = "lucid32"
    node1.vm.network("33.33.33.13")
    node1.vm.provision :puppet do |puppet|
      puppet.pp_path = "/tmp/vagrant-puppet"
      puppet.manifests_path = "./manifests"
      puppet.module_path = "./modules"
      puppet.manifest_file = "./node1.pp"
    end
  end
end
