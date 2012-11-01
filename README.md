# GIS cookbook

This cookbook provides [GIS](http://en.wikipedia.org/wiki/Geographic_information_system)

# Requirements

* 'apt' (for gis::ubuntugis)
* 'ark' (for gis::gdal)
* 'build-essential' (for gis::gdal)

# Usage

# Attributes

## ubuntugis

* `node.gis[:ubuntugis][:repo]` - set up the ubuntugis ppa. can be "stable" to choose [ubuntugis-stable](http://launchpad.net/~ubuntugis/+archive/ppa) or "unstable" to choose [ubuntugis-unstable](https://launchpad.net/~ubuntugis/+archive/ubuntugis-unstable).
* `node.gis[:ubuntugis][:packages]` - set up a list of gis packages from ubuntugis repositories to install. Empty by default.

## gdal

This recipe installs [gdal](http://www.gdal.org/) from source.

* `node.gis[:gdal][:version]` - [gdal version](http://trac.osgeo.org/gdal/wiki/DownloadSource)

# Recipes

By default this cookbook tries to install the oficial gis repositories from each distribution.

* `gdal.rb` - install gdal from source.
* `ubuntugis.rb` - install gdal from [ubuntugis](https://wiki.ubuntu.com/UbuntuGIS) ppa.

# TODO

* Add [Debian GIS](http://wiki.debian.org/DebianGis)
* Add [Enterprise Linux GIS](http://wiki.osgeo.org/wiki/Enterprise_Linux_GIS)


# Author

Author:: Mario Rodas
