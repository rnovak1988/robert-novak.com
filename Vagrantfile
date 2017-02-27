
VAGRANT_VERSION = '2'

Vagrant.configure(VAGRANT_VERSION) do |config|

  config.vm.box = 'puppetlabs/centos-6.6-64-nocm'

  config.vm.hostname = 'www.robert-novak.local'

  unless (RUBY_PLATFORM =~ /cygwin|mswin|mingw|bccwin|wince|emx/) != nil
  	config.vm.network "private_network", ip: '192.168.2.253'
  end

  config.vm.provision :shell, :path => "provision/install-epel.sh"

  config.vm.provision :shell, :path => "provision/install-httpd.sh"


end
