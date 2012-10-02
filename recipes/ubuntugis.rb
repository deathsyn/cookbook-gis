
case node[:platform]
when 'ubuntu'
  include_recipe 'apt'

  apt_repository 'ubuntugis' do
    uri node.gis[:ubuntugis][:uri]
    distribution node['lsb']['codename']
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key node.gis[:ubuntugis][:key]
  end

  node.gis[:ubuntugis][:packages].each do |pkg|
    package pkg do
      action :install
    end
  end
else
  Chef::Log.error("This recipe only works on ubuntu-based distributions")
end

