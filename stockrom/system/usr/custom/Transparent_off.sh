#!/system/bin/sh
busybox mount -o remount rw /system;
cp /system/usr/custom/framework-res_ori.apk /system/framework/framework-res.apk;
chmod 0644 /system/framework/framework-res.apk;
busybox killall system_server
