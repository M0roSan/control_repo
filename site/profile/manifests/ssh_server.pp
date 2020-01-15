class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCpcuBmU3ZfP+SEi6PTOQ9S09TOeXeWaJx77av+fI049dV4MMkrHHvLPnPTJD1ksshGmF+rxR2QHxrtUXS4fH8NdVHquJikGNLoOSTNFkejJqdI5r6oUNF/fwLTCij+6Aa2ShEbd1hu/+JAXaCyADEwMW/nSI5UOLPRsnFJLp13VadpSl2pL1PZK1ryFTFnUJq1JAWY5bxqBkFwDMOEMzSSrrv5LCkTwdqApOVFI8eVQpKzH8Ey1++DmiKwC85QzdbAegR6mC8d388PqBgo4ag9wEkdkePwozMiiddgBTomfJepXfLBK1ay3VS9sCIvxBZ5dTcntVmS0cECBkezLNAj',
  }
}
