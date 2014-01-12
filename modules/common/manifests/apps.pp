class common::apps {

  include git

  # some useful apps not requiring additional configuration
  package{
    [
      'dstat',
      'lsof',
      'mailx',
      'man',
      'rsync',
      'tree',
      'vim-enhanced',
    ]:
    ensure => installed,
  }

  service { "iptables":
    ensure => "stopped",
  }

}