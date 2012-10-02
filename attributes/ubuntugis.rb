
default.gis[:ubuntugis][:key] = "314DF160"
default.gis[:ubuntugis][:repo] = "stable"

default.gis[:ubuntugis][:uri] = case node.gis[:ubuntugis][:repo]
                                when "unstable" then "http://ppa.launchpad.net/ubuntugis/ubuntugis-unstable/ubuntu"
                                when "stable" then "http://ppa.launchpad.net/ubuntugis/ppa/ubuntu"
                                end

default.gis[:ubuntugis][:packages] = []
