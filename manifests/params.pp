class vagrantboxes::params{
  $sourcefile = hiera('vagrantboxes::params::sourcefile', undef) #where to get the Vagrantfile 
  $sourcedir  = hiera('vagrantboxes::params::sourcedir',"Puppet://modules/${modulename}")#default to the modules files folder
  $vagrantpath= hiera('vagrantboxes::params::vagrantpath',undef")#where to put the Vagrantfile




  $force      = hiera('vagrantboxes::params::force', undef )#force installation default undef, undef will be used as false in the class definition



}
