
default.gis[:ubuntugis][:key] = "314DF160"
default.gis[:ubuntugis][:repo] = "stable"

# By default, the repo uri will be chosen based on :repo, above:
#  when "unstable" then "http://ppa.launchpad.net/ubuntugis/ubuntugis-unstable/ubuntu"
#  when "stable" then "http://ppa.launchpad.net/ubuntugis/ppa/ubuntu"
#
# Setting :uri directly will override this.
# default.gis[:ubuntugis][:uri] = "a custom ubuntugis repo uri"

default.gis[:ubuntugis][:packages] = []
