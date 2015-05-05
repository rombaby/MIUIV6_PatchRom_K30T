.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MUSIC_QRD_SHUTDOWN_FILE:Ljava/lang/String; = "/data/qrd_theme/boot/shutdown.wav"

.field private static final MUSIC_SHUTDOWN_FILE:Ljava/lang/String; = "/system/media/shutdown.wav"

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SYSTEM_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation.zip"

.field private static final SYSTEM_ENCRYPTED_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation-encrypted.zip"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final USER_BOOTANIMATION_FILE:Ljava/lang/String; = "/data/local/shutdownanimation.zip"

.field private static isConfirmed:Z

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mMediaPlayer:Landroid/media/MediaPlayer;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private isShutdownMusicPlaying:Z

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutDownFile:Ljava/lang/String;

.field private shutdownMusic:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 109
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    .line 800
    new-instance v0, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->shutdownMusic:Ljava/lang/Runnable;

    .line 133
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->isConfirmed:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 81
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->isConfirmed:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/ShutdownThread;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutDownFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 81
    sput-object p0, Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/power/ShutdownThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    return p1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 336
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 337
    :try_start_0
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_0

    .line 338
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown sequence already running, returning."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit v3

    .line 400
    :goto_0
    return-void

    .line 341
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 342
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 353
    .local v1, "pd":Landroid/app/ProgressDialog;
    const v2, 0x10400bf

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 354
    const v2, 0x10400c3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 356
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 357
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-static {p0, v2}, Lcom/android/server/power/MiuiShutdownThread;->showShutdownDialog(Landroid/content/Context;Z)V

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v2, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 363
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 366
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 368
    :try_start_1
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v5, "ShutdownThread-cpu"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 370
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 371
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    :goto_1
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 379
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    :try_start_2
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "ShutdownThread-screen"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 383
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 384
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 392
    :cond_2
    :goto_2
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    .line 393
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v6, v3, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 397
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v3, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 399
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 342
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 385
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 386
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v6, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2
.end method

.method private static checkAnimationFileExist()Z
    .locals 2

    .prologue
    .line 756
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/shutdownanimation-encrypted.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    :cond_0
    const/4 v0, 0x1

    .line 761
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 7
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 734
    const-string v1, "com.qti.server.power.ShutdownOem"

    .line 737
    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 740
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v3, "rebootOrShutdown"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 741
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 753
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v3

    goto :goto_0

    .line 748
    :catch_1
    move-exception v3

    goto :goto_0

    .line 745
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v3

    goto :goto_0

    .line 743
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private static getShutdownMusicFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 298
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/data/qrd_theme/boot/shutdown.wav"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "/system/media/shutdown.wav"

    aput-object v4, v1, v3

    .line 300
    .local v1, "fileName":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 301
    .local v0, "checkFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 302
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 303
    new-instance v0, Ljava/io/File;

    .end local v0    # "checkFile":Ljava/io/File;
    aget-object v3, v1, v2

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .restart local v0    # "checkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    :cond_0
    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 308
    const/4 v3, 0x0

    .line 309
    :goto_1
    return-object v3

    .line 302
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    :cond_2
    aget-object v3, v1, v2

    goto :goto_1
.end method

.method private static isPowerOffSoundOn()Z
    .locals 4

    .prologue
    .line 772
    const-string v1, "persist.sys.power_sound"

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "value":Ljava/lang/String;
    const-string v2, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "poweroff sound "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 773
    :cond_0
    const-string v1, "off"

    goto :goto_0
.end method

.method private static isSilentMode()Z
    .locals 3

    .prologue
    .line 765
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v0

    .line 766
    .local v0, "isSilent":Z
    const-string v2, "persist.sys.silent"

    if-eqz v0, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    return v0

    .line 766
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method private static lockDevice()V
    .locals 4

    .prologue
    .line 313
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 316
    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "boot animation can not lock device!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    .line 291
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 292
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 293
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 294
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 295
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 703
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 705
    if-eqz p0, :cond_0

    .line 706
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 708
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_0
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 729
    return-void

    .line 711
    :cond_0
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 713
    .local v1, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/os/SystemVibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 721
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    move-exception v2

    goto :goto_0

    .line 714
    :catch_1
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x1

    .line 329
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 330
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 331
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 332
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 333
    return-void
.end method

.method private static showShutdownAnimation()V
    .locals 2

    .prologue
    .line 788
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 144
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 145
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 146
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 147
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 152
    sget-object v10, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v10

    .line 153
    :try_start_0
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v9, :cond_0

    .line 154
    const-string v9, "ShutdownThread"

    const-string v11, "Request to shutdown already running, returning."

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-exit v10

    .line 252
    :goto_0
    return-void

    .line 157
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110073

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v6, 0x1

    .line 161
    .local v6, "showRebootOption":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e001d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 163
    .local v4, "longPressBehavior":I
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v9, :cond_5

    const v5, 0x10400c7

    .line 168
    .local v5, "resourceId":I
    :goto_2
    if-eqz v6, :cond_1

    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v9, :cond_1

    .line 169
    const v5, 0x10400c9

    .line 172
    :cond_1
    const-string v9, "ShutdownThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v9, Landroid/view/ContextThemeWrapper;

    const v10, 0x1030200

    invoke-direct {v9, p0, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x10900c5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 175
    .local v8, "view":Landroid/view/View;
    if-eqz p1, :cond_b

    .line 176
    new-instance v2, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 177
    .local v2, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_2

    .line 178
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    .line 181
    :cond_2
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/server/power/ShutdownThread;->isConfirmed:Z

    .line 184
    const v9, 0x102000b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 185
    .local v7, "tx":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v9, :cond_8

    .line 189
    const v9, 0x102035e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 190
    .local v1, "cbLinearLayout":Landroid/widget/LinearLayout;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const v9, 0x1020001

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 193
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enable_quickboot"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    const/4 v3, 0x1

    .line 195
    .local v3, "ipoSettingEnabled":Z
    :goto_3
    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 198
    :cond_3
    new-instance v9, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v9, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 210
    .end local v1    # "cbLinearLayout":Landroid/widget/LinearLayout;
    .end local v3    # "ipoSettingEnabled":Z
    :goto_4
    new-instance v10, Landroid/app/AlertDialog$Builder;

    const v9, 0x1030202

    invoke-direct {v10, p0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget-boolean v9, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v9, :cond_9

    const v9, 0x10400c6

    :goto_5
    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040013

    new-instance v11, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v11, v0, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/widget/CheckBox;Landroid/content/Context;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1040009

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    sput-object v9, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 245
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v9, v2, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 246
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 247
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 248
    sget-object v9, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 157
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v2    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v4    # "longPressBehavior":I
    .end local v5    # "resourceId":I
    .end local v6    # "showRebootOption":Z
    .end local v7    # "tx":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 159
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 163
    .restart local v4    # "longPressBehavior":I
    .restart local v6    # "showRebootOption":Z
    :cond_5
    const/4 v9, 0x2

    if-ne v4, v9, :cond_6

    const v5, 0x10400c5

    goto/16 :goto_2

    :cond_6
    const v5, 0x10400c4

    goto/16 :goto_2

    .line 193
    .restart local v0    # "cb":Landroid/widget/CheckBox;
    .restart local v1    # "cbLinearLayout":Landroid/widget/LinearLayout;
    .restart local v2    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v5    # "resourceId":I
    .restart local v7    # "tx":Landroid/widget/TextView;
    .restart local v8    # "view":Landroid/view/View;
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 207
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v1    # "cbLinearLayout":Landroid/widget/LinearLayout;
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "cb":Landroid/widget/CheckBox;
    goto :goto_4

    .line 210
    :cond_9
    if-eqz v6, :cond_a

    const v9, 0x10400c8

    goto :goto_5

    :cond_a
    const v9, 0x10400bf

    goto :goto_5

    .line 250
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v2    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v7    # "tx":Landroid/widget/TextView;
    :cond_b
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 8
    .param p1, "timeout"    # I

    .prologue
    .line 557
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v1, v4, v6

    .line 558
    .local v1, "endTime":J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 559
    .local v0, "done":[Z
    new-instance v3, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;J[Z)V

    .line 684
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 686
    int-to-long v4, p1

    :try_start_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_0

    .line 690
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    return-void

    .line 687
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 405
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 406
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 25

    .prologue
    .line 414
    new-instance v6, Lcom/android/server/power/ShutdownThread$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 427
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_7

    const-string v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 428
    .local v23, "reason":Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 436
    const-string v2, "persist.sys.safemode"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_0
    const-string v2, "ShutdownThread"

    const-string v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 443
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x2710

    add-long v17, v4, v7

    .line 449
    .local v17, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 450
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v17, v7

    .line 452
    .local v12, "delay":J
    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_9

    .line 453
    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .end local v12    # "delay":J
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 467
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_2

    .line 469
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 474
    :cond_2
    :goto_3
    const/16 v24, 0x0

    .line 478
    .local v24, "shutDownFile":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkAnimationFileExist()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 479
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->lockDevice()V

    .line 480
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showShutdownAnimation()V

    .line 483
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isPowerOffSoundOn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getShutdownMusicFilePath()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_3

    .line 485
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    .line 486
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/power/ShutdownThread;->mShutDownFile:Ljava/lang/String;

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->shutdownMusic:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    :cond_3
    const-string v2, "ShutdownThread"

    const-string v4, "wait for shutdown music"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x2710

    add-long v19, v4, v7

    .line 494
    .local v19, "endTimeForMusic":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 495
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-eqz v2, :cond_4

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v19, v7

    .line 497
    .restart local v12    # "delay":J
    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_a

    .line 498
    const-string v2, "ShutdownThread"

    const-string v5, "play shutdown music timeout!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v12    # "delay":J
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-nez v2, :cond_5

    .line 507
    const-string v2, "ShutdownThread"

    const-string v5, "play shutdown music complete."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 511
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 514
    new-instance v22, Lcom/android/server/power/ShutdownThread$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 521
    .local v22, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v7, 0x4e20

    add-long v15, v4, v7

    .line 526
    .local v15, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 528
    :try_start_3
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v21

    .line 530
    .local v21, "mount":Landroid/os/storage/IMountService;
    if-eqz v21, :cond_b

    .line 531
    invoke-interface/range {v21 .. v22}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 538
    .end local v21    # "mount":Landroid/os/storage/IMountService;
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_6

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v12, v15, v7

    .line 540
    .restart local v12    # "delay":J
    const-wide/16 v7, 0x0

    cmp-long v2, v12, v7

    if-gtz v2, :cond_c

    .line 541
    const-string v2, "ShutdownThread"

    const-string v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v12    # "delay":J
    :cond_6
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 551
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 552
    return-void

    .line 427
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v15    # "endShutTime":J
    .end local v17    # "endTime":J
    .end local v19    # "endTimeForMusic":J
    .end local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v23    # "reason":Ljava/lang/String;
    .end local v24    # "shutDownFile":Ljava/lang/String;
    :cond_7
    const-string v2, "0"

    goto/16 :goto_0

    :cond_8
    const-string v2, ""

    goto/16 :goto_1

    .line 457
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v12    # "delay":J
    .restart local v17    # "endTime":J
    .restart local v23    # "reason":Ljava/lang/String;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 458
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 461
    .end local v12    # "delay":J
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 502
    .restart local v11    # "am":Landroid/app/IActivityManager;
    .restart local v12    # "delay":J
    .restart local v19    # "endTimeForMusic":J
    .restart local v24    # "shutDownFile":Ljava/lang/String;
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 503
    :catch_1
    move-exception v2

    goto/16 :goto_4

    .line 509
    .end local v12    # "delay":J
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 533
    .restart local v15    # "endShutTime":J
    .restart local v21    # "mount":Landroid/os/storage/IMountService;
    .restart local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :cond_b
    :try_start_9
    const-string v2, "ShutdownThread"

    const-string v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    .line 535
    .end local v21    # "mount":Landroid/os/storage/IMountService;
    :catch_2
    move-exception v14

    .line 536
    .local v14, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v2, "ShutdownThread"

    const-string v5, "Exception during MountService shutdown"

    invoke-static {v2, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 549
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v2

    .line 545
    .restart local v12    # "delay":J
    :cond_c
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_5

    .line 546
    :catch_3
    move-exception v2

    goto :goto_5

    .line 470
    .end local v12    # "delay":J
    .end local v15    # "endShutTime":J
    .end local v19    # "endTimeForMusic":J
    .end local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v24    # "shutDownFile":Ljava/lang/String;
    :catch_4
    move-exception v2

    goto/16 :goto_3
.end method
