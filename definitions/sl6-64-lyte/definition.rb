Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size=> '768',
  :disk_size => '81920',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :virtualbox => { 
    :vm_options => [
      :ioapic => 'on',
      :pae => 'on',
      :natdnsproxy1 => 'off',
      :natdnshostresolver1 => 'on',
      :nic2 => 'hostonly',
      :nictype2 => '82540EM',
		:cableconnected2 => 'on',
      :hostonlyadapter2 => 'vboxnet0',
    ]
  },
  :os_type_id => 'RedHat_64',
#  :iso_file => "SL-64-x86_64-2013-03-18-boot.iso",
  :iso_file => "SL-63-x86_64-2012-08-02-boot.iso",
  :iso_src => "http://mirror.aarnet.edu.au/pub/scientific/6.4/x86_64/iso/SL-64-x86_64-2013-03-18-boot.iso",
  :iso_md5 => "e9625e2c3b4b02d94ffa478773d5d58f",
  :iso_download_timeout => 1000,
  :boot_wait => "15",
  :boot_cmd_sequence => [ '<Tab> text ks=http://host.local.vm:%PORT%/ks.cfg.erb ksdevice=eth1<Enter>' ],
  :kickstart_file => "ks.cfg.erb",
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
#    "virtualbox.sh",
    "cleanup.sh"
  ],
  :postinstall_timeout => 10000,
  :params => {
    :proxy => 'http://host.local.vm:3142'
  },
})
