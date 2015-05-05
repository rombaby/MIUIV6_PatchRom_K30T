.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final deviceHasSufficientMemory()Z
    .locals 7

    .prologue
    .line 1207
    const-wide/32 v0, 0x20000000

    .line 1209
    .local v0, "MEMORY_SIZE_MIN":J
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 1210
    .local v2, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1211
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x20000000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1212
    const/4 v3, 0x0

    .line 1214
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static final startDpmService(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connectivity"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 1219
    const/4 v4, 0x0

    .line 1220
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1221
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    if-lez v3, :cond_0

    const/16 v6, 0x8

    if-ge v3, v6, :cond_0

    .line 1224
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1227
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1228
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Lcom/android/server/ConnectivityService;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1230
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1232
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 1233
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1234
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1243
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 1236
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 1237
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1240
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1241
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1200
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1203
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1204
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 176

    .prologue
    .line 107
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 110
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 112
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 115
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 116
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 120
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v152

    .line 122
    .local v152, "shutdownAction":Ljava/lang/String;
    if-eqz v152, :cond_0

    invoke-virtual/range {v152 .. v152}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 123
    const/4 v7, 0x0

    move-object/from16 v0, v152

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_26

    const/16 v146, 0x1

    .line 126
    .local v146, "reboot":Z
    :goto_0
    invoke-virtual/range {v152 .. v152}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_27

    .line 127
    const/4 v7, 0x1

    invoke-virtual/range {v152 .. v152}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v152

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v145

    .line 132
    .local v145, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v146

    move-object/from16 v1, v145

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 136
    .end local v145    # "reason":Ljava/lang/String;
    .end local v146    # "reboot":Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v111

    .line 137
    .local v111, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v111

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    const/16 v110, 0x0

    .line 139
    .local v110, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 141
    .local v33, "headless":Z
    const/16 v116, 0x0

    .line 142
    .local v116, "installer":Lcom/android/server/pm/Installer;
    const/16 v63, 0x0

    .line 143
    .local v63, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v83, 0x0

    .line 144
    .local v83, "contentService":Lcom/android/server/content/ContentService;
    const/16 v118, 0x0

    .line 145
    .local v118, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 146
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v103, 0x0

    .line 147
    .local v103, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v72, 0x0

    .line 148
    .local v72, "battery":Lcom/android/server/BatteryService;
    const/16 v165, 0x0

    .line 149
    .local v165, "vibrator":Lcom/android/server/VibratorService;
    const/16 v65, 0x0

    .line 150
    .local v65, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v126, 0x0

    .line 151
    .local v126, "mountService":Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 152
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 153
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v130, 0x0

    .line 154
    .local v130, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v79, 0x0

    .line 155
    .local v79, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v141, 0x0

    .line 156
    .local v141, "qcCon":Ljava/lang/Object;
    const/16 v172, 0x0

    .line 157
    .local v172, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v170, 0x0

    .line 158
    .local v170, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v151, 0x0

    .line 159
    .local v151, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v137, 0x0

    .line 160
    .local v137, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 161
    .local v5, "context":Landroid/content/Context;
    const/16 v174, 0x0

    .line 162
    .local v174, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v73, 0x0

    .line 163
    .local v73, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v104, 0x0

    .line 164
    .local v104, "dock":Lcom/android/server/DockObserver;
    const/16 v163, 0x0

    .line 165
    .local v163, "usb":Lcom/android/server/usb/UsbService;
    const/16 v149, 0x0

    .line 166
    .local v149, "serial":Lcom/android/server/SerialService;
    const/16 v159, 0x0

    .line 167
    .local v159, "twilight":Lcom/android/server/TwilightService;
    const/16 v161, 0x0

    .line 168
    .local v161, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v147, 0x0

    .line 169
    .local v147, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v132, 0x0

    .line 170
    .local v132, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v76, 0x0

    .line 171
    .local v76, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v115, 0x0

    .line 172
    .local v115, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v155, 0x0

    .line 173
    .local v155, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v128, 0x0

    .line 174
    .local v128, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v81, 0x0

    .line 177
    .local v81, "consumerIr":Lcom/android/server/ConsumerIrService;
    new-instance v175, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v175

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 178
    .local v175, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v175 .. v175}, Ljava/lang/Thread;->start()V

    .line 179
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v175 .. v175}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 180
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    const/16 v24, 0x0

    .line 198
    .local v24, "onlyCore":Z
    const/16 v112, 0x0

    .line 203
    .local v112, "firstBoot":Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v117, Lcom/android/server/pm/Installer;

    invoke-direct/range {v117 .. v117}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v116    # "installer":Lcom/android/server/pm/Installer;
    .local v117, "installer":Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/pm/Installer;->ping()Z

    .line 207
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v138, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v138 .. v138}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_63

    .line 209
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v138, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    move-object/from16 v0, v138

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 211
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static/range {v110 .. v110}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_64

    move-result-object v5

    move-object/from16 v4, v138

    .end local v138    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v116, v117

    .line 218
    .end local v117    # "installer":Lcom/android/server/pm/Installer;
    .restart local v116    # "installer":Lcom/android/server/pm/Installer;
    :goto_3
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v100

    .line 219
    .local v100, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v97

    .line 220
    .local v97, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v95

    .line 221
    .local v95, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v102

    .line 222
    .local v102, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v96

    .line 223
    .local v96, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v101

    .line 224
    .local v101, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v99

    .line 225
    .local v99, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v98

    .line 226
    .local v98, "disableNetwork":Z
    const-string v7, "config.disable_atlas"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 227
    .local v94, "disableAtlas":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111006a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v90

    .line 231
    .local v90, "digitalPenCapable":Z
    :try_start_3
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_58

    .line 233
    .end local v103    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_4
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 235
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v156, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v156

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_59

    .line 237
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v156, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.registry"

    move-object/from16 v0, v156

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 239
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 240
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v129, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 242
    .end local v128    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .local v129, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_6
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v129

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5a

    move-object/from16 v128, v129

    .line 245
    .end local v129    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v128    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_1
    :try_start_7
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 248
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 251
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 258
    .local v86, "cryptState":Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v86

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 259
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/16 v24, 0x1

    .line 266
    :cond_3
    :goto_4
    if-eqz v110, :cond_2a

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v116

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v137

    .line 270
    :try_start_8
    invoke-interface/range {v137 .. v137}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    move-result v112

    .line 274
    :goto_6
    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 276
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 279
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 283
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 288
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v64, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    .line 290
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v64, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_b
    const-string v7, "account"

    move-object/from16 v0, v64

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_62
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5b

    move-object/from16 v63, v64

    .line 295
    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_7
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v7, 0x1

    move/from16 v0, v110

    if-ne v0, v7, :cond_2b

    const/4 v7, 0x1

    :goto_8
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v83

    .line 299
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 302
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v6, Lcom/android/server/MiuiLightsService;

    invoke-direct {v6, v5}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    .line 305
    .end local v118    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_5c

    .line 307
    .end local v72    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_e
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 309
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v166, Lcom/android/server/VibratorService;

    move-object/from16 v0, v166

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5d

    .line 311
    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .local v166, "vibrator":Lcom/android/server/VibratorService;
    :try_start_f
    const-string v7, "vibrator"

    move-object/from16 v0, v166

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 313
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v82, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v82

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5e

    .line 315
    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v82, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_10
    const-string v7, "consumer_ir"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 319
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 323
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_5f

    .line 325
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_11
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 327
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 330
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 332
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v20, Lcom/android/server/input/MiuiInputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/MiuiInputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_60

    .line 335
    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v7, 0x1

    move/from16 v0, v110

    if-eq v0, v7, :cond_2c

    const/16 v22, 0x1

    :goto_9
    if-nez v112, :cond_2d

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v174

    .line 339
    const-string v7, "window"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 340
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 342
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v174

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 344
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 345
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 347
    move-object/from16 v0, v174

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 348
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 353
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 354
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    :goto_b
    move-object/from16 v81, v82

    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .line 372
    .end local v86    # "cryptState":Ljava/lang/String;
    .end local v166    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    :goto_c
    const/16 v88, 0x0

    .line 373
    .local v88, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v153, 0x0

    .line 374
    .local v153, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v113, 0x0

    .line 375
    .local v113, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v66, 0x0

    .line 376
    .local v66, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v134, 0x0

    .line 377
    .local v134, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v168, 0x0

    .line 378
    .local v168, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v119, 0x0

    .line 379
    .local v119, "location":Lcom/android/server/LocationManagerService;
    const/16 v84, 0x0

    .line 380
    .local v84, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v157, 0x0

    .line 381
    .local v157, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v121, 0x0

    .line 382
    .local v121, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v106, 0x0

    .line 383
    .local v106, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v68, 0x0

    .line 384
    .local v68, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v139, 0x0

    .line 385
    .local v139, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v123, 0x0

    .line 388
    .local v123, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v110

    if-eq v0, v7, :cond_4

    .line 392
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v114, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v114

    move-object/from16 v1, v174

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    .line 394
    .end local v113    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v114, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_14
    const-string v7, "input_method"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_57

    move-object/from16 v113, v114

    .line 400
    .end local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v113    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5

    .line 410
    :cond_4
    :goto_e
    :try_start_16
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    .line 416
    :goto_f
    :try_start_17
    invoke-interface/range {v137 .. v137}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7

    .line 422
    :goto_10
    :try_start_18
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104041f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_56

    .line 429
    :goto_11
    const/4 v7, 0x1

    move/from16 v0, v110

    if-eq v0, v7, :cond_36

    .line 430
    if-nez v100, :cond_5

    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 437
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v127, Lcom/android/server/MountService;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8

    .line 439
    .end local v126    # "mountService":Lcom/android/server/MountService;
    .local v127, "mountService":Lcom/android/server/MountService;
    :try_start_1a
    const-string v7, "mount"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_55

    move-object/from16 v126, v127

    .line 445
    .end local v127    # "mountService":Lcom/android/server/MountService;
    .restart local v126    # "mountService":Lcom/android/server/MountService;
    :cond_5
    :goto_12
    if-nez v99, :cond_6

    .line 447
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v122, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v122

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9

    .line 449
    .end local v121    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v122, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_1c
    const-string v7, "lock_settings"

    move-object/from16 v0, v122

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_54

    move-object/from16 v121, v122

    .line 455
    .end local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v121    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_13
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v89, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v89

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a

    .line 457
    .end local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v89, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_1e
    const-string v7, "device_policy"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_53

    move-object/from16 v88, v89

    .line 463
    .end local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :cond_6
    :goto_14
    if-nez v101, :cond_7

    .line 465
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v154, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v154

    move-object/from16 v1, v174

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_b

    .line 467
    .end local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v154, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_20
    const-string v7, "statusbar"

    move-object/from16 v0, v154

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_52

    move-object/from16 v153, v154

    .line 473
    .end local v154    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_7
    :goto_15
    if-nez v99, :cond_8

    .line 475
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_c

    .line 483
    :cond_8
    :goto_16
    if-nez v98, :cond_9

    .line 485
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 487
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_d

    .line 493
    :cond_9
    :goto_17
    if-nez v99, :cond_a

    .line 495
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v158, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v158

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_e

    .line 497
    .end local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v158, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_24
    const-string v7, "textservices"

    move-object/from16 v0, v158

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_51

    move-object/from16 v157, v158

    .line 503
    .end local v158    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_a
    :goto_18
    if-nez v98, :cond_35

    .line 505
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v131, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v131

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_f

    .line 507
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v131, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_26
    const-string v7, "netstats"

    move-object/from16 v0, v131

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_50

    move-object/from16 v29, v131

    .line 513
    .end local v131    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_10

    .line 517
    .end local v130    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_28
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_4f

    .line 523
    :goto_1a
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v173, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v173

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_11

    .line 525
    .end local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v173, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2a
    const-string v7, "wifip2p"

    move-object/from16 v0, v173

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_4e

    move-object/from16 v172, v173

    .line 531
    .end local v173    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v171, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v171

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_12

    .line 533
    .end local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v171, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_2c
    const-string v7, "wifi"

    move-object/from16 v0, v171

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_4d

    move-object/from16 v170, v171

    .line 539
    .end local v171    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_1c
    const/16 v109, 0x1

    .line 540
    .local v109, "enableCne":I
    :try_start_2d
    invoke-static {}, Lcom/android/server/ServerThread;->deviceHasSufficientMemory()Z

    move-result v7

    if-nez v7, :cond_b

    .line 541
    const-string v7, "persist.cne.override.memlimit"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v109

    .line 543
    :cond_b
    const/4 v7, 0x1

    move/from16 v0, v109

    if-ne v0, v7, :cond_32

    const-string v7, "persist.cne.feature"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v75

    .line 546
    .local v75, "cneFeature":I
    :goto_1d
    if-lez v75, :cond_33

    const/16 v7, 0xa

    move/from16 v0, v75

    if-ge v0, v7, :cond_33

    .line 547
    const-string v7, "SystemServer"

    const-string v9, "QcConnectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v143, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/services-ext.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v143

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 551
    .local v143, "qcsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.QcConnectivityService"

    move-object/from16 v0, v143

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v142

    .line 553
    .local v142, "qcsClass":Ljava/lang/Class;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/os/INetworkManagementService;

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-class v10, Landroid/net/INetworkStatsService;

    aput-object v10, v7, v9

    const/4 v9, 0x3

    const-class v10, Landroid/net/INetworkPolicyManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v142

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v144

    .line 556
    .local v144, "qcsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    aput-object v30, v7, v9

    const/4 v9, 0x2

    aput-object v29, v7, v9

    const/4 v9, 0x3

    aput-object v25, v7, v9

    move-object/from16 v0, v144

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v141

    .line 558
    move-object/from16 v0, v141

    check-cast v0, Lcom/android/server/ConnectivityService;

    move-object/from16 v79, v0

    .line 564
    .end local v141    # "qcCon":Ljava/lang/Object;
    .end local v142    # "qcsClass":Ljava/lang/Class;
    .end local v143    # "qcsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v144    # "qcsConstructor":Ljava/lang/reflect/Constructor;
    :goto_1e
    if-eqz v79, :cond_c

    .line 565
    const-string v7, "connectivity"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 566
    move-object/from16 v0, v29

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 567
    move-object/from16 v0, v25

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 568
    invoke-virtual/range {v170 .. v170}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_14

    .line 570
    :try_start_2e
    invoke-virtual/range {v172 .. v172}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_2e} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_14

    .line 580
    .end local v75    # "cneFeature":I
    :cond_c
    :goto_1f
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v151

    .line 582
    const-string v7, "servicediscovery"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_15

    .line 589
    :goto_20
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "DPM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    move-object/from16 v0, v79

    invoke-static {v5, v0}, Lcom/android/server/ServerThread;->startDpmService(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_16

    .line 596
    .end local v109    # "enableCne":I
    :goto_21
    if-nez v99, :cond_d

    .line 598
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_17

    .line 611
    :cond_d
    :goto_22
    if-eqz v126, :cond_e

    if-nez v24, :cond_e

    .line 612
    invoke-virtual/range {v126 .. v126}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 616
    :cond_e
    if-eqz v63, :cond_f

    .line 617
    :try_start_32
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_18

    .line 623
    :cond_f
    :goto_23
    if-eqz v83, :cond_10

    .line 624
    :try_start_33
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_19

    .line 630
    :cond_10
    :goto_24
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v135, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v135

    move-object/from16 v1, v153

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 632
    .end local v134    # "notification":Lcom/android/server/NotificationManagerService;
    .local v135, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_35
    const-string v7, "notification"

    move-object/from16 v0, v135

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 633
    move-object/from16 v0, v25

    move-object/from16 v1, v135

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_4c

    move-object/from16 v134, v135

    .line 639
    .end local v135    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v134    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1b

    .line 646
    :goto_26
    if-nez v96, :cond_11

    .line 648
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v120, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v120

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1c

    .line 650
    .end local v119    # "location":Lcom/android/server/LocationManagerService;
    .local v120, "location":Lcom/android/server/LocationManagerService;
    :try_start_38
    const-string v7, "location"

    move-object/from16 v0, v120

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_4b

    move-object/from16 v119, v120

    .line 656
    .end local v120    # "location":Lcom/android/server/LocationManagerService;
    .restart local v119    # "location":Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v85, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v85

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1d

    .line 658
    .end local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v85, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_3a
    const-string v7, "country_detector"

    move-object/from16 v0, v85

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_4a

    move-object/from16 v84, v85

    .line 664
    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_11
    :goto_28
    if-nez v99, :cond_12

    .line 666
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1e

    .line 675
    :cond_12
    :goto_29
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 682
    :goto_2a
    if-nez v99, :cond_13

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110032

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 685
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    if-nez v33, :cond_13

    .line 687
    new-instance v169, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v169

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_20

    .line 688
    .end local v168    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v169, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_3e
    const-string v7, "wallpaper"

    move-object/from16 v0, v169

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_49

    move-object/from16 v168, v169

    .line 695
    .end local v169    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v168    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_13
    :goto_2b
    if-nez v97, :cond_14

    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 697
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_21

    .line 705
    :cond_14
    :goto_2c
    if-nez v97, :cond_15

    .line 707
    const/16 v70, 0x0

    .line 708
    .local v70, "audioProfileService":Lcom/wingtech/audioprofile/AudioProfileService;
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "AudioProfile Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    new-instance v71, Lcom/wingtech/audioprofile/AudioProfileService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Lcom/wingtech/audioprofile/AudioProfileService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_22

    .line 710
    .end local v70    # "audioProfileService":Lcom/wingtech/audioprofile/AudioProfileService;
    .local v71, "audioProfileService":Lcom/wingtech/audioprofile/AudioProfileService;
    if-eqz v71, :cond_15

    .line 711
    :try_start_41
    const-string v7, "audioprofile"

    invoke-virtual/range {v71 .. v71}, Lcom/wingtech/audioprofile/IAudioProfileService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_48

    .line 722
    .end local v71    # "audioProfileService":Lcom/wingtech/audioprofile/AudioProfileService;
    :cond_15
    :goto_2d
    if-nez v99, :cond_16

    .line 724
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v105, Lcom/android/server/DockObserver;

    move-object/from16 v0, v105

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_23

    .end local v104    # "dock":Lcom/android/server/DockObserver;
    .local v105, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v104, v105

    .line 732
    .end local v105    # "dock":Lcom/android/server/DockObserver;
    .restart local v104    # "dock":Lcom/android/server/DockObserver;
    :cond_16
    :goto_2e
    if-nez v97, :cond_17

    .line 734
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_24

    .line 743
    :cond_17
    :goto_2f
    if-nez v99, :cond_18

    .line 745
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v164, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v164

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_25

    .line 748
    .end local v163    # "usb":Lcom/android/server/usb/UsbService;
    .local v164, "usb":Lcom/android/server/usb/UsbService;
    :try_start_45
    const-string v7, "usb"

    move-object/from16 v0, v164

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "miui.usb.service"

    new-instance v9, Lcom/miui/server/MiuiUsbService;

    invoke-direct {v9, v5}, Lcom/miui/server/MiuiUsbService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "miui.os.servicemanager"

    new-instance v9, Landroid/os/MiuiServiceManagerInternal;

    invoke-direct {v9}, Landroid/os/MiuiServiceManagerInternal;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_47

    move-object/from16 v163, v164

    .line 754
    .end local v164    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v163    # "usb":Lcom/android/server/usb/UsbService;
    :goto_30
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v150, Lcom/android/server/SerialService;

    move-object/from16 v0, v150

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_26

    .line 757
    .end local v149    # "serial":Lcom/android/server/SerialService;
    .local v150, "serial":Lcom/android/server/SerialService;
    :try_start_47
    const-string v7, "serial"

    move-object/from16 v0, v150

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_46

    move-object/from16 v149, v150

    .line 764
    .end local v150    # "serial":Lcom/android/server/SerialService;
    .restart local v149    # "serial":Lcom/android/server/SerialService;
    :cond_18
    :goto_31
    const-string v7, "security"

    new-instance v9, Lcom/miui/server/SecurityManagerService;

    move/from16 v0, v24

    invoke-direct {v9, v5, v0}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;Z)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "MiuiInit"

    new-instance v9, Lcom/miui/server/MiuiInitServer;

    invoke-direct {v9, v5}, Lcom/miui/server/MiuiInitServer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v160, Lcom/android/server/TwilightService;

    move-object/from16 v0, v160

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_27

    .end local v159    # "twilight":Lcom/android/server/TwilightService;
    .local v160, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v159, v160

    .line 771
    .end local v160    # "twilight":Lcom/android/server/TwilightService;
    .restart local v159    # "twilight":Lcom/android/server/TwilightService;
    :goto_32
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v162, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v162

    move-object/from16 v1, v159

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_28

    .end local v161    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v162, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v161, v162

    .line 778
    .end local v162    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v161    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_33
    if-nez v99, :cond_19

    .line 780
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_29

    .line 788
    :goto_34
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v67, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2a

    .line 790
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v67, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_4c
    const-string v7, "appwidget"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_45

    move-object/from16 v66, v67

    .line 796
    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_35
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v148, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2b

    .end local v147    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v148, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v147, v148

    .line 804
    .end local v148    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v147    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_19
    :goto_36
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2c

    .line 815
    :goto_37
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2d

    .line 822
    :goto_38
    if-nez v98, :cond_1a

    .line 824
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v133, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v133

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2e

    .end local v132    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v133, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v132, v133

    .line 831
    .end local v133    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v132    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1a
    :goto_39
    if-nez v97, :cond_1b

    .line 833
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v77, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v77

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_2f

    .line 835
    .end local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v77, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_52
    const-string v7, "commontime_management"

    move-object/from16 v0, v77

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_44

    move-object/from16 v76, v77

    .line 841
    .end local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1b
    :goto_3a
    if-nez v98, :cond_1c

    .line 843
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_30

    .line 850
    :cond_1c
    :goto_3b
    if-nez v99, :cond_1d

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 853
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    new-instance v107, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v107

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_31

    .line 856
    .end local v106    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v107, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_55
    const-string v7, "dreams"

    move-object/from16 v0, v107

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_43

    move-object/from16 v106, v107

    .line 862
    .end local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v106    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_1d
    :goto_3c
    if-nez v99, :cond_1e

    if-nez v94, :cond_1e

    .line 864
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v69, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_32

    .line 866
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v69, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_57
    const-string v7, "assetatlas"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_42

    move-object/from16 v68, v69

    .line 873
    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1e
    :goto_3d
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_33

    .line 880
    :goto_3e
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    new-instance v140, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v140

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_34

    .line 882
    .end local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v140, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_5a
    const-string v7, "print"

    move-object/from16 v0, v140

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_41

    move-object/from16 v139, v140

    .line 887
    .end local v140    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_3f
    if-nez v99, :cond_1f

    .line 889
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v124, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v124

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_35

    .line 891
    .end local v123    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v124, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_5c
    const-string v7, "media_router"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_40

    move-object/from16 v123, v124

    .line 897
    .end local v124    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v123    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_1f
    :goto_40
    if-eqz v90, :cond_20

    .line 899
    :try_start_5d
    const-string v7, "SystemServer"

    const-string v9, "Digital Pen Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v92, Ldalvik/system/PathClassLoader;

    const-string v7, "system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v92

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 903
    .local v92, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v92

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v91

    .line 905
    .local v91, "digitalPenClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v91

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v87

    .line 906
    .local v87, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v87

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v93

    .line 907
    .local v93, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v7, "SystemServer"

    const-string v9, "Successfully loaded DigitalPenService class"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v7, "DigitalPen"

    check-cast v93, Landroid/os/IBinder;

    .end local v93    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v93

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_36

    .line 917
    .end local v87    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v91    # "digitalPenClass":Ljava/lang/Class;
    .end local v92    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    :cond_20
    :goto_41
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 918
    .local v47, "safeMode":Z
    if-eqz v47, :cond_34

    .line 919
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 921
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 923
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 932
    :goto_42
    :try_start_5e
    invoke-virtual/range {v165 .. v165}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_37

    .line 937
    :goto_43
    if-eqz v121, :cond_21

    .line 939
    :try_start_5f
    invoke-virtual/range {v121 .. v121}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_38

    .line 945
    :cond_21
    :goto_44
    if-eqz v88, :cond_22

    .line 947
    :try_start_60
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_39

    .line 953
    :cond_22
    :goto_45
    if-eqz v134, :cond_23

    .line 955
    :try_start_61
    invoke-virtual/range {v134 .. v134}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3a

    .line 962
    :cond_23
    :goto_46
    :try_start_62
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3b

    .line 967
    :goto_47
    if-eqz v47, :cond_24

    .line 968
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 974
    :cond_24
    invoke-virtual/range {v174 .. v174}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v78

    .line 975
    .local v78, "config":Landroid/content/res/Configuration;
    new-instance v125, Landroid/util/DisplayMetrics;

    invoke-direct/range {v125 .. v125}, Landroid/util/DisplayMetrics;-><init>()V

    .line 976
    .local v125, "metrics":Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v167

    check-cast v167, Landroid/view/WindowManager;

    .line 977
    .local v167, "w":Landroid/view/WindowManager;
    invoke-interface/range {v167 .. v167}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v125

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 978
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v78

    move-object/from16 v1, v125

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 981
    :try_start_63
    move-object/from16 v0, v159

    move-object/from16 v1, v106

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3c

    .line 987
    :goto_48
    :try_start_64
    invoke-interface/range {v137 .. v137}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3d

    .line 993
    :goto_49
    :try_start_65
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_3e

    .line 999
    :goto_4a
    move-object/from16 v34, v5

    .line 1000
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v126

    .line 1001
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1002
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1003
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1004
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1005
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v79

    .line 1006
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v104

    .line 1007
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v163

    .line 1008
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v159

    .line 1009
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v161

    .line 1010
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v66

    .line 1011
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v168

    .line 1012
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v113

    .line 1013
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v147

    .line 1014
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v119

    .line 1015
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v84

    .line 1016
    .local v52, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v53, v132

    .line 1017
    .local v53, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v54, v76

    .line 1018
    .local v54, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v55, v157

    .line 1019
    .local v55, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v153

    .line 1020
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v56, v106

    .line 1021
    .local v56, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v57, v68

    .line 1022
    .local v57, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v58, v20

    .line 1023
    .local v58, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v155

    .line 1024
    .local v59, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v128

    .line 1025
    .local v60, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v61, v139

    .line 1026
    .local v61, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v62, v123

    .line 1033
    .local v62, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v62}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1190
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1191
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_25
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1195
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return-void

    .line 123
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v47    # "safeMode":Z
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v53    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v54    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v55    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v56    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v57    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v58    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v59    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v60    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v61    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v62    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v78    # "config":Landroid/content/res/Configuration;
    .end local v79    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v83    # "contentService":Lcom/android/server/content/ContentService;
    .end local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v90    # "digitalPenCapable":Z
    .end local v94    # "disableAtlas":Z
    .end local v95    # "disableBluetooth":Z
    .end local v96    # "disableLocation":Z
    .end local v97    # "disableMedia":Z
    .end local v98    # "disableNetwork":Z
    .end local v99    # "disableNonCoreServices":Z
    .end local v100    # "disableStorage":Z
    .end local v101    # "disableSystemUI":Z
    .end local v102    # "disableTelephony":Z
    .end local v104    # "dock":Lcom/android/server/DockObserver;
    .end local v106    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v110    # "factoryTest":I
    .end local v111    # "factoryTestStr":Ljava/lang/String;
    .end local v112    # "firstBoot":Z
    .end local v113    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v116    # "installer":Lcom/android/server/pm/Installer;
    .end local v119    # "location":Lcom/android/server/LocationManagerService;
    .end local v121    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v123    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v125    # "metrics":Landroid/util/DisplayMetrics;
    .end local v126    # "mountService":Lcom/android/server/MountService;
    .end local v128    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v132    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v134    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v137    # "pm":Landroid/content/pm/IPackageManager;
    .end local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v147    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v149    # "serial":Lcom/android/server/SerialService;
    .end local v151    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v159    # "twilight":Lcom/android/server/TwilightService;
    .end local v161    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v163    # "usb":Lcom/android/server/usb/UsbService;
    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .end local v167    # "w":Landroid/view/WindowManager;
    .end local v168    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .end local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v174    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v175    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_26
    const/16 v146, 0x0

    goto/16 :goto_0

    .line 129
    .restart local v146    # "reboot":Z
    :cond_27
    const/16 v145, 0x0

    .restart local v145    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 137
    .end local v145    # "reason":Ljava/lang/String;
    .end local v146    # "reboot":Z
    .restart local v111    # "factoryTestStr":Ljava/lang/String;
    :cond_28
    invoke-static/range {v111 .. v111}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v110

    goto/16 :goto_2

    .line 213
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v79    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v83    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v103    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v104    # "dock":Lcom/android/server/DockObserver;
    .restart local v110    # "factoryTest":I
    .restart local v112    # "firstBoot":Z
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v116    # "installer":Lcom/android/server/pm/Installer;
    .restart local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v126    # "mountService":Lcom/android/server/MountService;
    .restart local v128    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v130    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v132    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v137    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v141    # "qcCon":Ljava/lang/Object;
    .restart local v147    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v149    # "serial":Lcom/android/server/SerialService;
    .restart local v151    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v159    # "twilight":Lcom/android/server/TwilightService;
    .restart local v161    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v163    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v174    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v175    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_0
    move-exception v108

    .line 214
    .local v108, "e":Ljava/lang/RuntimeException;
    :goto_4b
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v108

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 261
    .end local v103    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v108    # "e":Ljava/lang/RuntimeException;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v86    # "cryptState":Ljava/lang/String;
    .restart local v90    # "digitalPenCapable":Z
    .restart local v94    # "disableAtlas":Z
    .restart local v95    # "disableBluetooth":Z
    .restart local v96    # "disableLocation":Z
    .restart local v97    # "disableMedia":Z
    .restart local v98    # "disableNetwork":Z
    .restart local v99    # "disableNonCoreServices":Z
    .restart local v100    # "disableStorage":Z
    .restart local v101    # "disableSystemUI":Z
    .restart local v102    # "disableTelephony":Z
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_29
    :try_start_66
    const-string v7, "1"

    move-object/from16 v0, v86

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 262
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 266
    :cond_2a
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 291
    :catch_1
    move-exception v108

    .line 292
    .local v108, "e":Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v108

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_66} :catch_2

    goto/16 :goto_7

    .line 367
    .end local v86    # "cryptState":Ljava/lang/String;
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v108

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v115

    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v118

    .line 368
    .end local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v108, "e":Ljava/lang/RuntimeException;
    :goto_4d
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v108

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 296
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v108    # "e":Ljava/lang/RuntimeException;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v86    # "cryptState":Ljava/lang/String;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2b
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 336
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v72    # "battery":Lcom/android/server/BatteryService;
    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v118    # "lights":Lcom/android/server/LightsService;
    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v166    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2c
    const/16 v22, 0x0

    goto/16 :goto_9

    :cond_2d
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 355
    :cond_2e
    const/4 v7, 0x1

    move/from16 v0, v110

    if-ne v0, v7, :cond_2f

    .line 356
    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 367
    :catch_3
    move-exception v108

    move-object/from16 v81, v82

    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v165, v166

    .end local v166    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_4d

    .line 357
    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v166    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2f
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_30

    .line 359
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 360
    :cond_30
    if-eqz v95, :cond_31

    .line 361
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 363
    :cond_31
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v74, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_67} :catch_3

    .line 365
    .end local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v74, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_68
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v74

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_61

    move-object/from16 v73, v74

    .end local v74    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_b

    .line 395
    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v86    # "cryptState":Ljava/lang/String;
    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v166    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v106    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v113    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v119    # "location":Lcom/android/server/LocationManagerService;
    .restart local v121    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v123    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v134    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v108

    .line 396
    .local v108, "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 403
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v108

    .line 404
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 411
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v108

    .line 412
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 417
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v108

    .line 418
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 440
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v108

    .line 441
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 450
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v108

    .line 451
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 458
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v108

    .line 459
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 468
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v108

    .line 469
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 478
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v108

    .line 479
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 488
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v108

    .line 489
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 498
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v108

    .line 499
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 508
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v108

    .line 509
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 518
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v108

    move-object/from16 v25, v130

    .line 519
    .end local v130    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 526
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v108

    .line 527
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 534
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v108

    .line 535
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 543
    .end local v108    # "e":Ljava/lang/Throwable;
    .restart local v109    # "enableCne":I
    :cond_32
    const/16 v75, 0x0

    goto/16 :goto_1d

    .line 560
    .restart local v75    # "cneFeature":I
    :cond_33
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v80, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v80

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V

    .end local v79    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v80, "connectivity":Lcom/android/server/ConnectivityService;
    move-object/from16 v79, v80

    .end local v80    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v79    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_1e

    .line 571
    .end local v141    # "qcCon":Ljava/lang/Object;
    :catch_13
    move-exception v136

    .line 572
    .local v136, "np":Ljava/lang/NullPointerException;
    const-string v7, "SystemServer"

    const-string v9, "Exception while initialsing connectivity service "

    move-object/from16 v0, v136

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_14

    goto/16 :goto_1f

    .line 575
    .end local v75    # "cneFeature":I
    .end local v136    # "np":Ljava/lang/NullPointerException;
    :catch_14
    move-exception v108

    .line 576
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 584
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v108

    .line 585
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 591
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v108

    .line 592
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 601
    .end local v108    # "e":Ljava/lang/Throwable;
    .end local v109    # "enableCne":I
    :catch_17
    move-exception v108

    .line 602
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 618
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v108

    .line 619
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 625
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v108

    .line 626
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 634
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v108

    .line 635
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 642
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v108

    .line 643
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 651
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v108

    .line 652
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 659
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v108

    .line 660
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 669
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v108

    .line 670
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 678
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v108

    .line 679
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 690
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v108

    .line 691
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 699
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v108

    .line 700
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 715
    .end local v108    # "e":Ljava/lang/Throwable;
    .restart local v70    # "audioProfileService":Lcom/wingtech/audioprofile/AudioProfileService;
    :catch_22
    move-exception v108

    .line 716
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "SystemServer"

    const-string v9, "starting AudioProfile Service"

    move-object/from16 v0, v108

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 727
    .end local v70    # "audioProfileService":Lcom/wingtech/audioprofile/AudioProfileService;
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v108

    .line 728
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 738
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v108

    .line 739
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 749
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v108

    .line 750
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 758
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v108

    .line 759
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v108

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 766
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v108

    .line 767
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 774
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v108

    .line 775
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 783
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v108

    .line 784
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v108

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 791
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v108

    .line 792
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 798
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v108

    .line 799
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 806
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v108

    .line 807
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 818
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v108

    .line 819
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 826
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v108

    .line 827
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 836
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v108

    .line 837
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 845
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v108

    .line 846
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 857
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v108

    .line 858
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 867
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v108

    .line 868
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 875
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v108

    .line 876
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 883
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v108

    .line 884
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 892
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v108

    .line 893
    .restart local v108    # "e":Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 909
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v108

    .line 910
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 926
    .end local v108    # "e":Ljava/lang/Throwable;
    .restart local v47    # "safeMode":Z
    :cond_34
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_42

    .line 933
    :catch_37
    move-exception v108

    .line 934
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 940
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v108

    .line 941
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 948
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v108

    .line 949
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 956
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v108

    .line 957
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 963
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v108

    .line 964
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 982
    .end local v108    # "e":Ljava/lang/Throwable;
    .restart local v78    # "config":Landroid/content/res/Configuration;
    .restart local v125    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v167    # "w":Landroid/view/WindowManager;
    :catch_3c
    move-exception v108

    .line 983
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 988
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v108

    .line 989
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 994
    .end local v108    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v108

    .line 995
    .restart local v108    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 271
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v78    # "config":Landroid/content/res/Configuration;
    .end local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v106    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v108    # "e":Ljava/lang/Throwable;
    .end local v113    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v119    # "location":Lcom/android/server/LocationManagerService;
    .end local v121    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v123    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v125    # "metrics":Landroid/util/DisplayMetrics;
    .end local v134    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v167    # "w":Landroid/view/WindowManager;
    .end local v168    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v86    # "cryptState":Ljava/lang/String;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v130    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v141    # "qcCon":Ljava/lang/Object;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_3f
    move-exception v7

    goto/16 :goto_6

    .line 892
    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v72    # "battery":Lcom/android/server/BatteryService;
    .end local v86    # "cryptState":Ljava/lang/String;
    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v118    # "lights":Lcom/android/server/LightsService;
    .end local v130    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v141    # "qcCon":Ljava/lang/Object;
    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v106    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v113    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v119    # "location":Lcom/android/server/LocationManagerService;
    .restart local v121    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v124    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v134    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v168    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_40
    move-exception v108

    move-object/from16 v123, v124

    .end local v124    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v123    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_64

    .line 883
    .end local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v140    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_41
    move-exception v108

    move-object/from16 v139, v140

    .end local v140    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_63

    .line 867
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_42
    move-exception v108

    move-object/from16 v68, v69

    .end local v69    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_62

    .line 857
    .end local v106    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_43
    move-exception v108

    move-object/from16 v106, v107

    .end local v107    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v106    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_61

    .line 836
    .end local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_44
    move-exception v108

    move-object/from16 v76, v77

    .end local v77    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v76    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_60

    .line 791
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_45
    move-exception v108

    move-object/from16 v66, v67

    .end local v67    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_5f

    .line 758
    .end local v149    # "serial":Lcom/android/server/SerialService;
    .restart local v150    # "serial":Lcom/android/server/SerialService;
    :catch_46
    move-exception v108

    move-object/from16 v149, v150

    .end local v150    # "serial":Lcom/android/server/SerialService;
    .restart local v149    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_5e

    .line 749
    .end local v163    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v164    # "usb":Lcom/android/server/usb/UsbService;
    :catch_47
    move-exception v108

    move-object/from16 v163, v164

    .end local v164    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v163    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_5d

    .line 715
    .restart local v71    # "audioProfileService":Lcom/wingtech/audioprofile/AudioProfileService;
    :catch_48
    move-exception v108

    move-object/from16 v70, v71

    .end local v71    # "audioProfileService":Lcom/wingtech/audioprofile/AudioProfileService;
    .restart local v70    # "audioProfileService":Lcom/wingtech/audioprofile/AudioProfileService;
    goto/16 :goto_5c

    .line 690
    .end local v70    # "audioProfileService":Lcom/wingtech/audioprofile/AudioProfileService;
    .end local v168    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v169    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_49
    move-exception v108

    move-object/from16 v168, v169

    .end local v169    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v168    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5b

    .line 659
    .end local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_4a
    move-exception v108

    move-object/from16 v84, v85

    .end local v85    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5a

    .line 651
    .end local v119    # "location":Lcom/android/server/LocationManagerService;
    .restart local v120    # "location":Lcom/android/server/LocationManagerService;
    :catch_4b
    move-exception v108

    move-object/from16 v119, v120

    .end local v120    # "location":Lcom/android/server/LocationManagerService;
    .restart local v119    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_59

    .line 634
    .end local v134    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v135    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_4c
    move-exception v108

    move-object/from16 v134, v135

    .end local v135    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v134    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_58

    .line 534
    .end local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v141    # "qcCon":Ljava/lang/Object;
    .restart local v171    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_4d
    move-exception v108

    move-object/from16 v170, v171

    .end local v171    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v170    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_57

    .line 526
    .end local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v173    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4e
    move-exception v108

    move-object/from16 v172, v173

    .end local v173    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v172    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_56

    .line 518
    :catch_4f
    move-exception v108

    goto/16 :goto_55

    .line 508
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v130    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v131    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_50
    move-exception v108

    move-object/from16 v29, v131

    .end local v131    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_54

    .line 498
    .end local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v158    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_51
    move-exception v108

    move-object/from16 v157, v158

    .end local v158    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_53

    .line 468
    .end local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v154    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_52
    move-exception v108

    move-object/from16 v153, v154

    .end local v154    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_52

    .line 458
    .end local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_53
    move-exception v108

    move-object/from16 v88, v89

    .end local v89    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_51

    .line 450
    .end local v121    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_54
    move-exception v108

    move-object/from16 v121, v122

    .end local v122    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v121    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_50

    .line 440
    .end local v126    # "mountService":Lcom/android/server/MountService;
    .restart local v127    # "mountService":Lcom/android/server/MountService;
    :catch_55
    move-exception v108

    move-object/from16 v126, v127

    .end local v127    # "mountService":Lcom/android/server/MountService;
    .restart local v126    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_4f

    .line 426
    :catch_56
    move-exception v7

    goto/16 :goto_11

    .line 395
    .end local v113    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_57
    move-exception v108

    move-object/from16 v113, v114

    .end local v114    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v113    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4e

    .line 367
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v106    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v113    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v119    # "location":Lcom/android/server/LocationManagerService;
    .end local v121    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v123    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v134    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v168    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v103    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v118    # "lights":Lcom/android/server/LightsService;
    :catch_58
    move-exception v108

    move-object/from16 v20, v115

    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v103

    .end local v103    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v118

    .end local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4d

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v118    # "lights":Lcom/android/server/LightsService;
    :catch_59
    move-exception v108

    move-object/from16 v20, v115

    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v118

    .end local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4d

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v128    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v129    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5a
    move-exception v108

    move-object/from16 v128, v129

    .end local v129    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v128    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v115

    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v118

    .end local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_4d

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v86    # "cryptState":Ljava/lang/String;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5b
    move-exception v108

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v115

    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v118

    .end local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v63, v64

    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_4d

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5c
    move-exception v108

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v115

    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v72

    .end local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_4d

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_5d
    move-exception v108

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v115

    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_4d

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v166    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5e
    move-exception v108

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v115

    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v165, v166

    .end local v166    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4d

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v166    # "vibrator":Lcom/android/server/VibratorService;
    :catch_5f
    move-exception v108

    move-object/from16 v81, v82

    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v115

    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v65

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v165, v166

    .end local v166    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4d

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v166    # "vibrator":Lcom/android/server/VibratorService;
    :catch_60
    move-exception v108

    move-object/from16 v81, v82

    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v115

    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v165, v166

    .end local v166    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4d

    .end local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v165    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v74    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v166    # "vibrator":Lcom/android/server/VibratorService;
    :catch_61
    move-exception v108

    move-object/from16 v81, v82

    .end local v82    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v81    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v73, v74

    .end local v74    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v73    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v165, v166

    .end local v166    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v165    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_4d

    .line 291
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v72    # "battery":Lcom/android/server/BatteryService;
    .restart local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_62
    move-exception v108

    move-object/from16 v63, v64

    .end local v64    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v63    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_4c

    .line 213
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v86    # "cryptState":Ljava/lang/String;
    .end local v90    # "digitalPenCapable":Z
    .end local v94    # "disableAtlas":Z
    .end local v95    # "disableBluetooth":Z
    .end local v96    # "disableLocation":Z
    .end local v97    # "disableMedia":Z
    .end local v98    # "disableNetwork":Z
    .end local v99    # "disableNonCoreServices":Z
    .end local v100    # "disableStorage":Z
    .end local v101    # "disableSystemUI":Z
    .end local v102    # "disableTelephony":Z
    .end local v116    # "installer":Lcom/android/server/pm/Installer;
    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v117    # "installer":Lcom/android/server/pm/Installer;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_63
    move-exception v108

    move-object/from16 v116, v117

    .end local v117    # "installer":Lcom/android/server/pm/Installer;
    .restart local v116    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_4b

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v116    # "installer":Lcom/android/server/pm/Installer;
    .restart local v117    # "installer":Lcom/android/server/pm/Installer;
    .restart local v138    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_64
    move-exception v108

    move-object/from16 v4, v138

    .end local v138    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v116, v117

    .end local v117    # "installer":Lcom/android/server/pm/Installer;
    .restart local v116    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_4b

    .end local v65    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v72    # "battery":Lcom/android/server/BatteryService;
    .end local v103    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v115    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v118    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v66    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v68    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v84    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v88    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v90    # "digitalPenCapable":Z
    .restart local v94    # "disableAtlas":Z
    .restart local v95    # "disableBluetooth":Z
    .restart local v96    # "disableLocation":Z
    .restart local v97    # "disableMedia":Z
    .restart local v98    # "disableNetwork":Z
    .restart local v99    # "disableNonCoreServices":Z
    .restart local v100    # "disableStorage":Z
    .restart local v101    # "disableSystemUI":Z
    .restart local v102    # "disableTelephony":Z
    .restart local v106    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v113    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v119    # "location":Lcom/android/server/LocationManagerService;
    .restart local v121    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v123    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v134    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v139    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v157    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v168    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_35
    move-object/from16 v25, v130

    .end local v130    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_21

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v130    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_36
    move-object/from16 v25, v130

    .end local v130    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_41
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    return-void
.end method
