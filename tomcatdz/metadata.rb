name 'tomcatdz'
maintainer 'Dan Zentgraf'
maintainer_email 'zentgrafdan@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures tomcatdz'
long_description 'Installs/Configures tomcatdz'
version '0.2.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/tomcatdz/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/tomcatdz'
#
# 0.1.0 - create group
# 0.1.1 - create user
# 0.1.2 - added group param to user
# 0.1.3 - added remote file
# 0.1.4 - added directory
# 0.1.5 - fixed remote file - added in file name
# 0.1.6 - added supermarket cookbook for tar
# 0.1.7 - added tomcat config files
# 0.1.8 - fixed systemctl reload resource
# 0.1.9 - file and directory ownership
# 0.2.0 - added templates


depends 'tar'
