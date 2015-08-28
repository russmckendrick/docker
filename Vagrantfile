# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "russmckendrick/centos71"
  config.vm.network "private_network", ip: "192.168.33.10"
  HOSTNAME = 'centos7'
  DOMAIN   = 'docker.dev'
  Vagrant.require_version '>= 1.7.0'

config.vm.host_name = HOSTNAME + '.' + DOMAIN
config.vm.synced_folder ".", "/vagrant", disabled: true
config.vm.synced_folder "./", "/docker"

config.vm.provider "virtualbox" do |v|
  v.memory = 2024
  v.cpus = 2
end

config.vm.provider "vmware_fusion" do |v|
  v.vmx["memsize"] = "2024"
  v.vmx["numvcpus"] = "2"
end

$script = <<SCRIPT
echo "=> Installing docker-engine ..."
curl -sSL https://get.docker.com/ | sh  > /dev/null 2>&1
echo "=> Configuring vagrant user ..."
sudo usermod -aG docker vagrant
echo "=> Starting docker-engine ..."
sudo systemctl enable docker > /dev/null 2>&1
sudo systemctl start docker > /dev/null 2>&1
echo "=> Installing docker-compose ..."
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/1.4.0/docker-compose-`uname -s`-`uname -m` >/usr/local/bin/docker-compose 2>/dev/null"
sudo chmod +x /usr/local/bin/docker-compose > /dev/null 2>&1
echo "=> Finished installation of Docker"
SCRIPT

config.vm.provision "shell",
    inline: $script
end
