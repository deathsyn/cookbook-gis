
case node[:platform]
when "ubuntu"
  include_recipe "gis::ubuntugis"
else
  Chef::Log.warn("This cookbook is not yet supported on #{node[:platform]}")
end
