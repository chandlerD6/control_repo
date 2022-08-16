class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDISzRAnDqYR6FKWbfuXTwOfJ0LvnwUFpy4ZCdj4rX/eDqPq3fTJ1LDUTdvk4zzjt4v+1dshhk9OC4Sle77w/vX+CN9mavmB/hd+ynfGoAyXtGJ4l+qKSo54bnkk+NeBtzjCorVFq0jC948SlZz5pCqiqrotTshGg7nIw71YL5InKzXh5BO8nRUyFyUwli0I82crp69edKUwYcxlmmrOTvtPT63hncDzi0ezpP3hYce/TJy8lr1cFQNeshZzvhGTv9klESy0n0l6A2en5TZBHQNmvHgTdOSGJ8piAM57bVviYVWaIFPrN2uLpB8XnlYeKMKG5v+iGnnz+4oWvMJzgFd',
  }  
}
