
include_recipe "ark"
include_recipe "build-essential"

download_url = "http://download.osgeo.org/gdal/gdal-#{node.gis['gdal']['version']}.tar.gz"

if platform?("ubuntu", "debian")
  %|python-all-dev|.each do |pkg|
    package pkg do
      action :install
    end
  end
end

ark "install_gdal" do
  url     download_url
  action  [ :configure, :install_with_make ]
end
