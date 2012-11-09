
if platform?('ubuntu')
  include_recipe 'apt'

  repo_uri = node.gis[:ubuntugis][:uri] || case node.gis[:ubuntugis][:repo]
    when "unstable" then "http://ppa.launchpad.net/ubuntugis/ubuntugis-unstable/ubuntu"
    when "stable" then "http://ppa.launchpad.net/ubuntugis/ppa/ubuntu"
  end

  apt_repository 'ubuntugis' do
    uri repo_uri
    distribution node['lsb']['codename']
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key node.gis[:ubuntugis][:key]
    action :add
    notifies :run, "execute[apt-get update]", :immediately
  end

  execute "apt_update" do
    command "apt-get update"
    action :run
  end

  node.gis[:ubuntugis][:packages].each do |pkg|
    package pkg do
      action :install
    end
  end
else
  Chef::Log.error("This recipe only works on ubuntu-based distributions")
end
