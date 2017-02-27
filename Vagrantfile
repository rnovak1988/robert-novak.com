
VAGRANT_VERSION = '2'

Vagrant.configure(VAGRANT_VERSION) do |config|

  config.vm.box = 'puppetlabs/centos-6.6-64-nocm'

  config.vm.hostname = 'www.robert-novak.local'
  config.vm.network "private_network", ip: '192.168.2.253'

  config.vm.provision 'ansible' do |ansible|

    ansible.playbook = 'ansible/site.yml'
    ansible.inventory_path = 'ansible/hosts'

    ansible.limit = 'development'

    ansible.sudo = true

  end

end
