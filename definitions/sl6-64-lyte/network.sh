# we don't want any persistent interfaces
rm -f /etc/udev/rules.d/*persistent-net*

# see 'man udev' for more info on this technique
net_rules=/lib/udev/rules.d/*persistent-net*
for f in ${net_rules[@]}
do
	touch /etc/udev/rules.d/${f##*/}
done

