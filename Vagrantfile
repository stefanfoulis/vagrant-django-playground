Vagrant::Config.run do |config|
  config.vm.define :node1 do |node|
    node.vm.host_name = "node1"
    node.vm.network("33.33.33.13")
    node.vm.box = "lucid64"
    node.vm.provision :puppet do |puppet|
      puppet.pp_path = "/tmp/vagrant-puppet"
      puppet.manifests_path = "./manifests"
      puppet.module_path = "./modules"
      puppet.manifest_file = "./site.pp"
    end
  end
end
