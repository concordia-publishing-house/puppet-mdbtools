# Examples
#
#  include mbdtools

class mdbtools {
  require homebrew
  include homebrew::repo
  include boxen::config
  
  package { 'mdbtools':
    ensure   => installed,
    provider => homebrew,
  }
}
