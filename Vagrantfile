Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian10"
  config.vm.provision :shell, path: "provision.sh"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end
end
