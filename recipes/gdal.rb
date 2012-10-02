
include_recipe "ark"
include_recipe "build-essential"

case node[:platform]
when "ubuntu", "debian"
  %|python-all-dev|.each do |pkg|
    package pkg do
      action :install
    end
  end
end

ark "install_gdal" do
  url     node.gis[:gdal][:download_url]
  action  [ :configure, :install_with_make ]
end
