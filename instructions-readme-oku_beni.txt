*note: ./start.sh to start cf machine ./stop.sh to stop cf machine

*****note: the cf needs kvm on your linux arm machine you can check it via ls /dev/kvm if you got no suck file or directory; cf cant run on your device

**note: if you got the blouetooth dependency error you can add --enable_kernel_log=false to start.sh

***note: if you got the permission denied error when you execute any file you can execute chmod +x *.sh

you can modify, brick and unbrick the cf machine.
you can easily install gsis on the cf first; wait the cf machine boots second; execute adb connect 0.0.0.0:6520 && adb root && adb remount && adb reboot fastboot && sleep 10 && fastboot connect tcp:0.0.0.0:6520 && fastboot -w
third; you can install a gsi using this example fastboot flash system <gsi_path>
four; fastboot reboot