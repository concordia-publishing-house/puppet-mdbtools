# Examples
#
#  include mbdtools

class mdbtools {
  require homebrew
  include homebrew::repo
  include boxen::config

  # fixes libffi dependency by patching the libffi.rb formula
  exec { 'git pull git@github.com:KendallPark/homebrew.git deparallelize-libffi':
    cwd    => "${boxen::config::homebrewdir}",
    before => Package['mdbtools'],
    require => Exec['brew update'],
  }
  
  package { 'mdbtools':
    ensure   => installed,
    provider => homebrew,
  }
}
