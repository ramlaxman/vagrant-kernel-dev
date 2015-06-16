Vagrant.configure(2) do |config|
  config.vm.define :kerneldev do |kerneldev|
    kerneldev.vm.box = "f22"
    kerneldev.vm.provider :libvirt do |domain|
      domain.memory = 2048
      domain.cpus = 4
    end
  config.vm.provision :shell, :path => "bootstrap.sh"
 end
end
