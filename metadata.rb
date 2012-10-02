name             "gis"
maintainer       "Mario Rodas"
maintainer_email "rodasmario2@gmail.com"
license          "MIT"
description      "Provides recipes to work with GIS"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

depends "apt"
depends "ark"
depends "build-essential"

supports "ubuntu"

provides "gis::gdal"
provides "gis::ubuntugis"
