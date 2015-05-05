#!/system/bin/sh

busybox cp /system/usr/custom/goo/ChromeBookmarksSyncAdapter.apk /system/app/ChromeBookmarksSyncAdapter.apk
busybox cp /system/usr/custom/goo/GoogleBackupTransport.apk /system/app/GoogleBackupTransport.apk
busybox cp /system/usr/custom/goo/GoogleCalendarSyncAdapter.apk /system/app/GoogleCalendarSyncAdapter.apk
busybox cp /system/usr/custom/goo/GoogleContactsSyncAdapter.apk /system/app/GoogleContactsSyncAdapter.apk
busybox cp /system/usr/custom/goo/GoogleFeedback.apk /system/app/GoogleFeedback.apk
busybox cp /system/usr/custom/goo/GoogleLoginService.apk /system/app/GoogleLoginService.apk
busybox cp /system/usr/custom/goo/GoogleServicesFramework.apk /system/app/GoogleServicesFramework.apk
busybox cp /system/usr/custom/goo/GoogleTTS.apk /system/app/GoogleTTS.apk
busybox cp /system/usr/custom/goo/Phonesky.apk /system/app/Phonesky.apk
chmod 0644 /system/app/*.apk

#busybox killall system_server