# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'berkshelf/vagrant'

Vagrant::Config.run do |config|

  config.vm.box     = 'precise32'
  config.vm.box_url = 'http://files.vagrantup.com/precise32.box'

  # config.vm.network :hostonly, "33.33.33.10"
  # config.vm.network :bridged
  # config.vm.forward_port 80, 8080
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"

  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :gis => {
        :ubuntugis => {
          :repo => "unstable",
          :packages => ["gdal-bin", "libgdal1-dev", "python-gdal"],
        }
      }
    }
    chef.run_list = [
      # "recipe[gis::gdal]",
      "recipe[gis::ubuntugis]",
    ]
  end
end
