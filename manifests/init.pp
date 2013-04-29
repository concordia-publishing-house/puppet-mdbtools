# Examples
#
#  include mbdtools

class mdbtools {
  require homebrew
  include homebrew::repo
  include boxen::config

  exec { 'git pull git@github.com:KendallPark/homebrew.git deparallelize-mdbtools':
    cwd    => "${boxen::config::homebrewdir}",
    before => Package['mdbtools'],
    require => Exec['brew update'],
  }
  
  package { 'mdbtools':
    ensure   => installed,
    provider => homebrew,
  }
}
