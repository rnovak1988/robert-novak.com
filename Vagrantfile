
VAGRANT_VERSION = '2'

Vagrant.configure(VAGRANT_VERSION) do |config|

  config.vm.box = 'centos/7'

  config.vm.hostname = 'www.robert-novak.local'
  config.vm.network :public_network, ip: '192.168.1.253'

  config.vm.provision 'ansible' do |ansible|

    ansible.playbook = 'ansible/site.yml'
    ansible.inventory_path = 'ansible/hosts'

    ansible.limit = 'development'

    ansible.sudo = true

  end

end
