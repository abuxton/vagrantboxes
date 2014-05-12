# == Class: vagrantboxes
#
# Full description of class vagrantboxes here.
#
# === Parameters
#
# Document parameters here.
#
# [*force*]
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*force*] default true
# whether to move the files around regadless of vagrent being installed. 
# Module currently will not fail if no vagrant installed 
#
# === Examples
#
#  class { vagrantboxes:
#    path => '/tmp/vagrantpath/'
#  }
#
# === Authors
#
# Author Name <adam.buxton@puppetlabs.com>
#
# === Copyright
#
# Copyright 2014 Your adam buxton, unless otherwise noted.
#
class vagrantboxes(
  $vagrantpath  = vagrantboxes::params::vagrantpath,
  $sourcefile   = vagrantboxes::params::sourcefile,
  $sourcedir    = vagrantboxes::params::sourcepath,
  $force        = vagrantboxes::params::force,
)inherits vagrantboxes::params {


file {'vagrantfile':
  path    =>  "${vagrantpath}",
  source  =>  "${sourcedir}/{$sourcefile}",
  ensure  =>  "present", #later may variabalise lets get it working first
 }


}
