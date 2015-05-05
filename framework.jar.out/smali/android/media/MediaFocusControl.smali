.class public Landroid/media/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFocusControl$DisplayInfoForServer;,
        Landroid/media/MediaFocusControl$RemoteControlStackEntry;,
        Landroid/media/MediaFocusControl$RccPlaybackState;,
        Landroid/media/MediaFocusControl$RemotePlaybackState;,
        Landroid/media/MediaFocusControl$RcClientDeathHandler;,
        Landroid/media/MediaFocusControl$PackageIntentsReceiver;,
        Landroid/media/MediaFocusControl$AudioFocusDeathHandler;,
        Landroid/media/MediaFocusControl$MediaEventHandler;,
        Landroid/media/MediaFocusControl$NotificationListenerObserver;
    }
.end annotation


# static fields
.field private static final CLIENT_ID_QCHAT:Ljava/lang/String; = "QCHAT"

.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field protected static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_PERSIST_MEDIABUTTONRECEIVER:I = 0x0

.field private static final MSG_PROMOTE_RCC:I = 0x6

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x4

.field private static final MSG_RCC_NEW_PLAYBACK_STATE:I = 0x7

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x5

.field private static final MSG_RCC_SEEK_REQUEST:I = 0x8

.field private static final MSG_RCC_UPDATE_METADATA:I = 0x9

.field private static final MSG_RCDISPLAY_CLEAR:I = 0x1

.field private static final MSG_RCDISPLAY_INIT_INFO:I = 0xa

.field private static final MSG_RCDISPLAY_UPDATE:I = 0x2

.field private static final MSG_REEVALUATE_RCD:I = 0xb

.field private static final MSG_REEVALUATE_REMOTE:I = 0x3

.field private static final RCD_REG_FAILURE:I = 0x0

.field private static final RCD_REG_SUCCESS_ENABLED_NOTIF:I = 0x2

.field private static final RCD_REG_SUCCESS_PERMISSION:I = 0x1

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;

.field private static sLastRccId:I


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Landroid/media/AudioService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private mCurrentRcClientIntent:Landroid/app/PendingIntent;

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private final mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemotePlayback:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private final mNotifListenerObserver:Landroid/media/MediaFocusControl$NotificationListenerObserver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/MediaFocusControl$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaFocusControl$DisplayInfoForServer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private final mVolumeController:Landroid/media/VolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 436
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 438
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    .line 1151
    const/4 v0, 0x0

    sput v0, Landroid/media/MediaFocusControl;->sLastRccId:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/VolumeController;Landroid/media/AudioService;)V
    .locals 10
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Landroid/media/VolumeController;
    .param p4, "as"    # Landroid/media/AudioService;

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v9, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    .line 84
    new-instance v0, Landroid/media/MediaFocusControl$PackageIntentsReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/MediaFocusControl$PackageIntentsReceiver;-><init>(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$1;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 440
    new-instance v0, Landroid/media/MediaFocusControl$1;

    invoke-direct {v0, p0}, Landroid/media/MediaFocusControl$1;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 499
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 873
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    .line 1076
    new-instance v0, Landroid/media/MediaFocusControl$2;

    invoke-direct {v0, p0}, Landroid/media/MediaFocusControl$2;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 1094
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    .line 1100
    iput-object v5, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1105
    iput-object v5, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1119
    iput v9, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1357
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    .line 1363
    iput-object v5, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 2172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Landroid/media/MediaFocusControl$MediaEventHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaFocusControl$MediaEventHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    .line 93
    iput-object p2, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    iput-object p3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    .line 96
    iput-object p4, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    .line 98
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 99
    .local v7, "pm":Landroid/os/PowerManager;
    const-string v0, "handleMediaEvent"

    invoke-virtual {v7, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    new-instance v0, Landroid/media/MediaFocusControl$RemotePlaybackState;

    const/4 v2, -0x1

    invoke-static {v4}, Landroid/media/AudioService;->getMaxStreamVolume(I)I

    move-result v3

    invoke-static {v4}, Landroid/media/AudioService;->getMaxStreamVolume(I)I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaFocusControl$RemotePlaybackState;-><init>(Landroid/media/MediaFocusControl;IIILandroid/media/MediaFocusControl$1;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    .line 105
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 107
    .local v8, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v8, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 111
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v6, "pkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 120
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 122
    new-instance v0, Landroid/media/MediaFocusControl$NotificationListenerObserver;

    invoke-direct {v0, p0}, Landroid/media/MediaFocusControl$NotificationListenerObserver;-><init>(Landroid/media/MediaFocusControl;)V

    iput-object v0, p0, Landroid/media/MediaFocusControl;->mNotifListenerObserver:Landroid/media/MediaFocusControl$NotificationListenerObserver;

    .line 124
    iput-boolean v9, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    .line 125
    iput-boolean v9, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 126
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    .line 127
    return-void
.end method

.method static synthetic access$1100(Landroid/media/MediaFocusControl;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onRcDisplayUpdate(Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/MediaFocusControl;III)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onNewPlaybackInfoForRcc(III)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/MediaFocusControl;IILandroid/media/MediaFocusControl$RccPlaybackState;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/media/MediaFocusControl$RccPlaybackState;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onNewPlaybackStateForRcc(IILandroid/media/MediaFocusControl$RccPlaybackState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/MediaFocusControl;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onSetRemoteControlClientPlaybackPosition(IJ)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/MediaFocusControl;IILandroid/media/Rating;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/media/Rating;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onUpdateRemoteControlClientMetadata(IILandroid/media/Rating;)V

    return-void
.end method

.method static synthetic access$200(Landroid/media/MediaFocusControl;)Landroid/media/MediaFocusControl$MediaEventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaFocusControl;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->onPromoteRcc(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->onReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$2300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/media/MediaFocusControl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$2500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/media/MediaFocusControl;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/media/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    return-void
.end method

.method static synthetic access$300(Landroid/media/MediaFocusControl;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3004()I
    .locals 1

    .prologue
    .line 67
    sget v0, Landroid/media/MediaFocusControl;->sLastRccId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/media/MediaFocusControl;->sLastRccId:I

    return v0
.end method

.method static synthetic access$3300(Landroid/media/MediaFocusControl;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/MediaFocusControl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 67
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Landroid/media/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaFocusControl;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemoteControlDisplays()V

    return-void
.end method

.method private canReassignAudioFocus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 599
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, v2}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    const-string v0, "QCHAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 605
    :goto_0
    return v0

    .line 603
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 605
    goto :goto_0
.end method

.method private canReassignAudioFocusFromQchat(ILjava/lang/String;)Z
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QCHAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "QCHAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 618
    :cond_0
    const/4 v0, 0x0

    .line 620
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I
    .locals 9
    .param p1, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 176
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 179
    const/4 v7, 0x1

    .line 213
    :goto_0
    return v7

    .line 183
    :cond_0
    if-eqz p1, :cond_3

    .line 185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 187
    .local v5, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 188
    .local v2, "currentUser":I
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_notification_listeners"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 193
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "components":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_2

    .line 195
    aget-object v7, v1, v4

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 197
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 201
    const/4 v7, 0x2

    .line 209
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 194
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 209
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    .end local v2    # "currentUser":I
    .end local v3    # "enabledNotifListeners":Ljava/lang/String;
    .end local v5    # "ident":J
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 209
    .restart local v5    # "ident":J
    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    .locals 7
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1833
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1834
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    .line 1880
    :goto_0
    return-void

    .line 1846
    :cond_1
    const/4 v0, 0x0

    .line 1848
    .local v0, "af":Landroid/media/FocusRequester;
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "index":I
    :goto_1
    if-ltz v3, :cond_3

    .line 1849
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/FocusRequester;

    .line 1850
    .local v2, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v2}, Landroid/media/FocusRequester;->getStreamType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/media/FocusRequester;->getGainRequest()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 1852
    :cond_2
    move-object v0, v2

    .line 1860
    .end local v2    # "fr":Landroid/media/FocusRequester;
    .end local v3    # "index":I
    :cond_3
    :goto_2
    if-nez v0, :cond_5

    .line 1861
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    .line 1848
    .restart local v2    # "fr":Landroid/media/FocusRequester;
    .restart local v3    # "index":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1856
    .end local v2    # "fr":Landroid/media/FocusRequester;
    .end local v3    # "index":I
    :catch_0
    move-exception v1

    .line 1857
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "MediaFocusControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong index accessing audio focus stack when updating RCD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    const/4 v0, 0x0

    goto :goto_2

    .line 1866
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v4, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/media/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1867
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    .line 1872
    :cond_6
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v4, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v0, v4}, Landroid/media/FocusRequester;->hasSameUid(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1873
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    goto :goto_0

    .line 1879
    :cond_7
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->updateRemoteControlDisplay_syncAfRcs(I)V

    goto :goto_0
.end method

.method private cleanupMediaButtonReceiverForPackage(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "removeAll"    # Z

    .prologue
    .line 1448
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6

    .line 1449
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1450
    monitor-exit v6

    .line 1493
    :goto_0
    return-void

    .line 1452
    :cond_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1453
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1454
    .local v1, "oldTop":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1458
    .local v4, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1459
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1460
    .local v3, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    if-eqz p2, :cond_2

    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1462
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1463
    invoke-virtual {v3}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->destroy()V

    goto :goto_1

    .line 1492
    .end local v1    # "oldTop":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v4    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1464
    .restart local v1    # "oldTop":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .restart local v4    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_2
    :try_start_1
    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 1467
    :try_start_2
    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1468
    :catch_0
    move-exception v0

    .line 1470
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1471
    invoke-virtual {v3}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->destroy()V

    goto :goto_1

    .line 1475
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_3
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1477
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1492
    :cond_4
    :goto_2
    monitor-exit v6

    goto :goto_0

    .line 1480
    :cond_5
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v5, :cond_4

    .line 1484
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1485
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    .line 1486
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private clearRemoteControlDisplay_syncAfRcs()V
    .locals 3

    .prologue
    .line 1784
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1785
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1786
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1788
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1789
    return-void

    .line 1786
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 16
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 832
    if-eqz p2, :cond_0

    .line 833
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 835
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 836
    .local v4, "keyIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 837
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v15

    .line 838
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 841
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v1, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const/16 v3, 0x7bc

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    move-object/from16 v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 863
    :goto_1
    :try_start_2
    monitor-exit v15

    .line 864
    return-void

    .line 841
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v12

    .line 845
    .local v12, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending pending intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 863
    .end local v12    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 851
    :cond_2
    if-eqz p2, :cond_3

    .line 852
    :try_start_3
    const-string v1, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 854
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v13

    .line 856
    .local v13, "ident":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 860
    :try_start_5
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .locals 11
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 808
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 809
    .local v1, "keyIntent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 810
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    if-eqz p2, :cond_0

    .line 812
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 813
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 815
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 817
    .local v9, "ident":J
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 822
    return-void

    .line 820
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 506
    const-string v1, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 508
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 509
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 512
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1392
    const-string v2, "\nRemote Control Client stack entries (last is top of stack):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1394
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1395
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1396
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1397
    .local v0, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- vol: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volMax: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- volObs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1409
    .end local v0    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1406
    .restart local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1407
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nCurrent remote control generation ID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1409
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1410
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v3

    .line 1411
    :try_start_4
    const-string v2, "\nRemote Volume State:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  has remote: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  is remote active: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  rccId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v4, v4, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume handling: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v2, v2, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_1

    const-string v2, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v4, v4, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  volume steps: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v4, v4, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1421
    return-void

    .line 1408
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1415
    :cond_1
    :try_start_7
    const-string v2, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_1

    .line 1420
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2
.end method

.method private dumpRCDList(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1428
    const-string v2, "\nRemote Control Display list entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1429
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1430
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1431
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1432
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 1433
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  IRCD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- w:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- h:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- wantsPosSync:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$3200(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1433
    .restart local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :try_start_1
    const-string v2, "disabled"

    goto :goto_1

    .line 1439
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1440
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1370
    const-string v2, "\nRemote Control stack entries (last is top of stack):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1372
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1373
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1375
    .local v0, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- pack: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- ercvr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1383
    .end local v0    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1384
    return-void
.end method

.method private enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z

    .prologue
    .line 2198
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2199
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2200
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2201
    .local v1, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_0

    .line 2203
    :try_start_0
    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1, p2}, Landroid/media/IRemoteControlClient;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2204
    :catch_0
    move-exception v0

    .line 2205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to client: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2209
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 778
    invoke-static {p1}, Landroid/media/MediaFocusControl;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :goto_0
    return-void

    .line 783
    :cond_0
    sget-object v1, Landroid/media/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 784
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/MediaFocusControl;->mIsRinging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 787
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 788
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 790
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 791
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 793
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 794
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 790
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 796
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 5
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 889
    const/4 v1, 0x1

    .line 890
    .local v1, "voiceButtonAction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 891
    .local v0, "keyAction":I
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 892
    if-nez v0, :cond_2

    .line 893
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 895
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    .line 896
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 912
    :cond_0
    :goto_0
    monitor-exit v3

    .line 915
    packed-switch v1, :pswitch_data_0

    .line 935
    :goto_1
    :pswitch_0
    return-void

    .line 897
    :cond_1
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 900
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 901
    const/4 v1, 0x2

    goto :goto_0

    .line 903
    :cond_2
    if-ne v0, v2, :cond_0

    .line 904
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    .line 906
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonDown:Z

    .line 907
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 908
    const/4 v1, 0x3

    goto :goto_0

    .line 912
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 924
    :pswitch_1
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x56

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v2, p2}, Landroid/media/MediaFocusControl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 932
    :pswitch_2
    invoke-direct {p0, p1, p2}, Landroid/media/MediaFocusControl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "enabledArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 304
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v2

    .line 308
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "compString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 310
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    const/4 v2, 0x1

    goto :goto_0

    .line 309
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1595
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    const/4 v0, 0x1

    .line 1598
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isMediaKeyCode(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 971
    sparse-switch p0, :sswitch_data_0

    .line 988
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 986
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 971
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method private static isPlaystateActive(I)Z
    .locals 1
    .param p0, "playState"    # I

    .prologue
    .line 2668
    packed-switch p0, :pswitch_data_0

    .line 2677
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2675
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2668
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 993
    if-nez p0, :cond_0

    .line 994
    const/4 v0, 0x0

    .line 996
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaFocusControl;->isMediaKeyCode(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1012
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    .line 1013
    const/4 v0, 0x1

    .line 1015
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->canReassignAudioFocus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->handleFocusGain(I)V

    .line 484
    :cond_0
    return-void
.end method

.method private onHandlePersistMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "receiver"    # Landroid/content/ComponentName;

    .prologue
    .line 1602
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "media_button_receiver"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1606
    return-void

    .line 1602
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onNewPlaybackInfoForRcc(III)V
    .locals 7
    .param p1, "rccId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # I

    .prologue
    .line 2503
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2507
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2508
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2509
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v3, p1, :cond_4

    .line 2510
    packed-switch p2, :pswitch_data_0

    .line 2546
    const-string v3, "MediaFocusControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unhandled key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for RCC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2549
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2557
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :goto_2
    return-void

    .line 2512
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :pswitch_0
    :try_start_2
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    .line 2513
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2552
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_0
    move-exception v0

    .line 2554
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index mRCStack on onNewPlaybackInfoForRcc, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2556
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2516
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :pswitch_1
    :try_start_4
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolume:I

    .line 2517
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2518
    :try_start_5
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_1

    .line 2519
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iput p3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    .line 2520
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3}, Landroid/media/VolumeController;->postHasNewRemotePlaybackInfo()V

    .line 2522
    :cond_1
    monitor-exit v5

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    .line 2525
    :pswitch_2
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    .line 2526
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2527
    :try_start_7
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_2

    .line 2528
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iput p3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    .line 2529
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3}, Landroid/media/VolumeController;->postHasNewRemotePlaybackInfo()V

    .line 2531
    :cond_2
    monitor-exit v5

    goto :goto_1

    :catchall_2
    move-exception v3

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3

    .line 2534
    :pswitch_3
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    .line 2535
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2536
    :try_start_9
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_3

    .line 2537
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iput p3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    .line 2538
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3}, Landroid/media/VolumeController;->postHasNewRemotePlaybackInfo()V

    .line 2540
    :cond_3
    monitor-exit v5

    goto :goto_1

    :catchall_3
    move-exception v3

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v3

    .line 2543
    :pswitch_4
    iput p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackStream:I
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 2507
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 2510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private onNewPlaybackStateForRcc(IILandroid/media/MediaFocusControl$RccPlaybackState;)V
    .locals 6
    .param p1, "rccId"    # I
    .param p2, "state"    # I
    .param p3, "newState"    # Landroid/media/MediaFocusControl$RccPlaybackState;

    .prologue
    .line 2568
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2572
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2573
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2574
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v3, p1, :cond_1

    .line 2575
    iput-object p3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    .line 2576
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2577
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v3, v3, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    if-ne p1, v3, :cond_0

    .line 2578
    invoke-static {p2}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2579
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->postReevaluateRemote()V

    .line 2581
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2585
    :try_start_2
    invoke-static {p2}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2586
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->postPromoteRcc(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2572
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2581
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2590
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_0
    move-exception v0

    .line 2592
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_5
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index on mRCStack in onNewPlaybackStateForRcc, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2594
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    monitor-exit v4

    .line 2595
    return-void

    .line 2594
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3
.end method

.method private onPromoteRcc(I)V
    .locals 8
    .param p1, "rccId"    # I

    .prologue
    .line 1895
    sget-object v5, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1896
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1898
    :try_start_1
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget v4, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_0

    .line 1899
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1924
    :goto_0
    return-void

    .line 1901
    :cond_0
    const/4 v2, -0x1

    .line 1903
    .local v2, "indexToPromote":I
    :try_start_3
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1904
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1905
    .local v3, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v4, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_3

    .line 1906
    move v2, v1

    .line 1910
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1
    if-ltz v2, :cond_2

    .line 1913
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1914
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1922
    .end local v1    # "index":I
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_2
    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1923
    :try_start_5
    monitor-exit v5

    goto :goto_0

    .end local v2    # "indexToPromote":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 1903
    .restart local v1    # "index":I
    .restart local v2    # "indexToPromote":I
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1918
    .end local v1    # "index":I
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_0
    move-exception v0

    .line 1920
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_6
    const-string v4, "MediaFocusControl"

    const-string v7, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1922
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "indexToPromote":I
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private onRcDisplayClear()V
    .locals 5

    .prologue
    .line 1677
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1678
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1679
    :try_start_1
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1681
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1683
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1684
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1685
    return-void

    .line 1683
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1684
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    .locals 6
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1754
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1755
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1756
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1761
    :try_start_2
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-interface {p1, v1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1766
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1775
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1776
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1777
    return-void

    .line 1767
    :catch_0
    move-exception v0

    .line 1768
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1769
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1771
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1772
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "MediaFocusControl"

    const-string v4, "Dead display in onRcDisplayInitInfo()"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1775
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1

    .line 1776
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method private onRcDisplayUpdate(Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V
    .locals 6
    .param p1, "rcse"    # Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .param p2, "flags"    # I

    .prologue
    .line 1718
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1719
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1720
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1723
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1726
    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1729
    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, v1, v4}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1734
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-interface {v1, v4, p2}, Landroid/media/IRemoteControlClient;->onInformationRequested(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1744
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1745
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1746
    return-void

    .line 1735
    :catch_0
    move-exception v0

    .line 1736
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 1744
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 1745
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onReevaluateRemote()V
    .locals 6

    .prologue
    .line 2805
    const/4 v0, 0x0

    .line 2806
    .local v0, "hasRemotePlayback":Z
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2809
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2810
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2811
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2812
    .local v1, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 2813
    const/4 v0, 0x1

    .line 2817
    .end local v1    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2818
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v4

    .line 2819
    :try_start_1
    iget-boolean v3, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    if-eq v3, v0, :cond_2

    .line 2820
    iput-boolean v0, p0, Landroid/media/MediaFocusControl;->mHasRemotePlayback:Z

    .line 2821
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v3, v0}, Landroid/media/VolumeController;->postRemoteSliderVisibility(Z)V

    .line 2823
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2824
    return-void

    .line 2817
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2823
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private onReevaluateRemoteControlDisplays()V
    .locals 17

    .prologue
    .line 250
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 251
    .local v8, "currentUser":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 256
    .local v13, "enabledNotifListeners":Ljava/lang/String;
    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 257
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    if-nez v13, :cond_1

    .line 262
    const/4 v12, 0x0

    .line 266
    .local v12, "enabledComponents":[Ljava/lang/String;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 267
    .local v10, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 270
    .local v9, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v14

    .line 272
    .local v14, "wasEnabled":Z
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$600(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Landroid/media/MediaFocusControl;->isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z

    move-result v1

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9, v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$702(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 274
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eq v14, v1, :cond_0

    .line 277
    :try_start_2
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/IRemoteControlDisplay;->setEnabled(Z)V

    .line 279
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaFocusControl;->enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V

    .line 282
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$700(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0xa

    const/4 v3, 0x2

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 288
    :catch_0
    move-exception v11

    .line 289
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "MediaFocusControl"

    const-string v2, "Error en/disabling RCD: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 294
    .end local v9    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "enabledComponents":[Ljava/lang/String;
    .end local v14    # "wasEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 295
    :catchall_1
    move-exception v1

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 264
    :cond_1
    :try_start_5
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "enabledComponents":[Ljava/lang/String;
    goto :goto_0

    .line 294
    .restart local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_2
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 295
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 296
    return-void
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 6
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 2604
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2609
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2610
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2611
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v3, p1, :cond_1

    .line 2612
    iput-object p2, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2620
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v4

    .line 2621
    return-void

    .line 2609
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2616
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_0
    move-exception v0

    .line 2618
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2620
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onSetRemoteControlClientPlaybackPosition(IJ)V
    .locals 6
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 2449
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 2450
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2451
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p1, :cond_0

    .line 2454
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->seekTo(IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2460
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2461
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2462
    return-void

    .line 2455
    :catch_0
    move-exception v0

    .line 2456
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 2460
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 2461
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onUpdateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    .locals 6
    .param p1, "genId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Landroid/media/Rating;

    .prologue
    .line 2472
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 2473
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2474
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p1, :cond_0

    .line 2476
    packed-switch p2, :pswitch_data_0

    .line 2481
    :try_start_2
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unhandled metadata key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " update for RCC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2490
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2491
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2492
    return-void

    .line 2478
    :pswitch_0
    :try_start_5
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->updateMetadata(IILandroid/media/Rating;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2485
    :catch_0
    move-exception v0

    .line 2486
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2487
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 2490
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1

    .line 2491
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 2476
    nop

    :pswitch_data_0
    .packed-switch 0x10000001
        :pswitch_0
    .end packed-switch
.end method

.method private plugRemoteControlDisplaysIntoClient_syncRcStack(Landroid/media/IRemoteControlClient;)V
    .locals 6
    .param p1, "rcc"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 2179
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2180
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2181
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2183
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_start_0
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 2185
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$3200(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2186
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2188
    :catch_0
    move-exception v2

    .line 2189
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to RCC in RCC registration"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2192
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private postPromoteRcc(I)V
    .locals 7
    .param p1, "rccId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1889
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x6

    const/4 v5, 0x0

    move v3, p1

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1891
    return-void
.end method

.method private postReevaluateRemote()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2799
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2800
    return-void
.end method

.method private postReevaluateRemoteControlDisplays()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xb

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 245
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .locals 2
    .param p1, "focusGain"    # I

    .prologue
    .line 493
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 494
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1, p1}, Landroid/media/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method

.method private pushMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 10
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 1529
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget-object v5, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 1564
    :goto_0
    return v5

    .line 1532
    :cond_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    .line 1534
    goto :goto_0

    .line 1536
    :cond_1
    const/4 v3, 0x0

    .line 1537
    .local v3, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    const/4 v4, 0x0

    .line 1539
    .local v4, "wasInsideStack":Z
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "index":I
    :goto_1
    if-ltz v2, :cond_2

    .line 1540
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    move-object v3, v0

    .line 1541
    iget-object v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1543
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    const/4 v4, 0x1

    .line 1552
    .end local v2    # "index":I
    :cond_2
    :goto_2
    if-nez v4, :cond_3

    .line 1553
    new-instance v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    invoke-direct {v3, p0, p1, p2, p3}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;-><init>(Landroid/media/MediaFocusControl;Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1555
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_3
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    if-eqz p2, :cond_4

    .line 1559
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v7, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    invoke-virtual {v7, v6, v6, v6, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1564
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    .line 1539
    .restart local v2    # "index":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1548
    .end local v2    # "index":I
    :catch_0
    move-exception v1

    .line 1550
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 2217
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2218
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2220
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2221
    const/4 v2, 0x1

    .line 2224
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V
    .locals 17
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 2243
    sget-object v15, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2244
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2245
    if-eqz p1, :cond_0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaFocusControl;->rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2246
    :cond_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2299
    :goto_0
    return-void

    .line 2248
    :cond_1
    :try_start_3
    new-instance v11, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/media/MediaFocusControl$DisplayInfoForServer;-><init>(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    .line 2249
    .local v11, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    const/4 v4, 0x1

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v11, v4}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$702(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 2250
    move-object/from16 v0, p4

    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v11, v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$602(Landroid/media/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 2251
    invoke-virtual {v11}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->init()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2253
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v15

    goto :goto_0

    .line 2298
    .end local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 2256
    .restart local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2260
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 2261
    .local v14, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2262
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2263
    .local v13, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v4, v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_3

    .line 2265
    :try_start_6
    iget-object v4, v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 2269
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v5}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 2270
    :catch_0
    move-exception v12

    .line 2271
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v4, "MediaFocusControl"

    const-string v5, "Error connecting RCD to client: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2297
    .end local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_1
    move-exception v4

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2277
    .restart local v11    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .restart local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2278
    .restart local v13    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    if-eqz v13, :cond_5

    iget-object v4, v13, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2282
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v5}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2294
    .end local v13    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_5
    :goto_2
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v10, 0x0

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v10}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2297
    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2298
    :try_start_b
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 2286
    :catch_1
    move-exception v12

    .line 2287
    .local v12, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v4, "MediaFocusControl"

    const-string v5, "Error updating focussed RCC to RCD "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z

    .prologue
    .line 525
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/FocusRequester;

    invoke-virtual {v2, p1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 529
    .local v0, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    .line 530
    if-eqz p2, :cond_0

    .line 532
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 534
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 535
    const/16 v2, 0xf

    :try_start_0
    invoke-direct {p0, v2}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 536
    monitor-exit v3

    .line 554
    .end local v0    # "fr":Landroid/media/FocusRequester;
    :cond_0
    return-void

    .line 536
    .restart local v0    # "fr":Landroid/media/FocusRequester;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 543
    .end local v0    # "fr":Landroid/media/FocusRequester;
    :cond_1
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 544
    .local v1, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 546
    .restart local v0    # "fr":Landroid/media/FocusRequester;
    invoke-virtual {v0, p1}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 547
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 550
    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 563
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/FocusRequester;

    invoke-virtual {v3, p1}, Landroid/media/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 567
    .local v1, "isTopOfStackForClientToRemove":Z
    :goto_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 568
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 569
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 570
    .local v0, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v0, p1}, Landroid/media/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 563
    .end local v0    # "fr":Landroid/media/FocusRequester;
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 576
    .restart local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/FocusRequester;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 579
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 581
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 582
    const/16 v3, 0xf

    :try_start_0
    invoke-direct {p0, v3}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 583
    monitor-exit v4

    .line 585
    :cond_3
    return-void

    .line 583
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1575
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1576
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1577
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1578
    invoke-virtual {v2}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->destroy()V

    .line 1580
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_0
    :goto_1
    return-void

    .line 1575
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1584
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_0
    move-exception v0

    .line 1586
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 348
    if-nez p2, :cond_1

    .line 349
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    :goto_0
    return-void

    .line 350
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .param p1, "originalKeyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 939
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 940
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 942
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 943
    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 945
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .locals 7
    .param p1, "rccId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 2706
    if-nez p2, :cond_1

    .line 2736
    :cond_0
    :goto_0
    return-void

    .line 2710
    :cond_1
    const/4 v3, 0x0

    .line 2711
    .local v3, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2716
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2717
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2719
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v4, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v4, p1, :cond_3

    .line 2720
    iget-object v3, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2728
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_2
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2729
    if-eqz v3, :cond_0

    .line 2731
    const/4 v4, -0x1

    :try_start_2
    invoke-interface {v3, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2732
    :catch_0
    move-exception v0

    .line 2733
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaFocusControl"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2716
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2724
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_1
    move-exception v0

    .line 2726
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing media button stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2728
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 5
    .param p1, "newClientGeneration"    # I

    .prologue
    .line 1640
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1641
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1642
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1643
    .local v1, "se":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_0

    .line 1645
    :try_start_0
    iget-object v3, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1648
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1649
    invoke-virtual {v1}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_0

    .line 1653
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "se":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 6
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1616
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 1617
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1618
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1619
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1620
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :try_start_1
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1624
    :catch_0
    move-exception v2

    .line 1625
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MediaFocusControl"

    const-string v5, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    invoke-virtual {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1627
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1631
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1632
    return-void
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1666
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1668
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 1669
    return-void
.end method

.method private startVoiceBasedInteractions(Z)V
    .locals 10
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1026
    const/4 v5, 0x0

    .line 1031
    .local v5, "voiceIntent":Landroid/content/Intent;
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1032
    .local v4, "pm":Landroid/os/PowerManager;
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v6

    .line 1033
    .local v3, "isLocked":Z
    :goto_0
    if-nez v3, :cond_4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1034
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "MediaFocusControl"

    const-string/jumbo v7, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :goto_1
    if-eqz p1, :cond_0

    .line 1044
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1046
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1048
    .local v1, "identity":J
    if-eqz v5, :cond_1

    .line 1049
    const/high16 v6, 0x10800000

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1051
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1057
    if-eqz p1, :cond_2

    .line 1058
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1061
    :cond_2
    :goto_2
    return-void

    .end local v1    # "identity":J
    .end local v3    # "isLocked":Z
    :cond_3
    move v3, v7

    .line 1032
    goto :goto_0

    .line 1037
    .restart local v3    # "isLocked":Z
    :cond_4
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1038
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.extras.EXTRA_SECURE"

    if-eqz v3, :cond_5

    iget-object v9, p0, Landroid/media/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_3
    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1040
    const-string v6, "MediaFocusControl"

    const-string/jumbo v7, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v6, v7

    .line 1038
    goto :goto_3

    .line 1053
    .restart local v1    # "identity":J
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v6, "MediaFocusControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity for search: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1057
    if-eqz p1, :cond_2

    .line 1058
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 1056
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v6

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1057
    if-eqz p1, :cond_6

    .line 1058
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    throw v6
.end method

.method private updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V
    .locals 6
    .param p1, "rcse"    # Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .param p2, "isFocussed"    # Z
    .param p3, "isAvailable"    # Z

    .prologue
    .line 1696
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1698
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1699
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    iget-object v4, p1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1700
    const-string/jumbo v2, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1701
    const-string/jumbo v2, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1702
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2, v1}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1703
    const-string v2, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updating focussed RCC change to RCD: CallingPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isFocussed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAvailable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 1710
    return-void

    .line 1706
    :catch_0
    move-exception v0

    .line 1707
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MediaFocusControl"

    const-string v4, "Error while updating focussed RCC change"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1709
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateRemoteControlDisplay_syncAfRcs(I)V
    .locals 6
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1800
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 1801
    .local v1, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    move v0, p1

    .line 1804
    .local v0, "infoFlagsAboutToBeUsed":I
    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-nez v2, :cond_0

    .line 1806
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    .line 1820
    :goto_0
    return-void

    .line 1809
    :cond_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1810
    :try_start_0
    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1812
    const/16 v0, 0xf

    .line 1814
    :cond_1
    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1815
    iget-object v2, v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    iput-object v2, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1816
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1818
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    iget-object v3, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1816
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 5
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 730
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :try_start_0
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p2, v1}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 735
    monitor-exit v2

    .line 744
    :goto_0
    return v4

    .line 735
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 736
    :catch_0
    move-exception v0

    .line 740
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected adjustRemoteVolume(III)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I

    .prologue
    .line 2682
    const/4 v0, -0x1

    .line 2683
    .local v0, "rccId":I
    const/4 v1, 0x0

    .line 2684
    .local v1, "volFixed":Z
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v3

    .line 2685
    :try_start_0
    iget-boolean v2, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    if-nez v2, :cond_0

    .line 2687
    monitor-exit v3

    .line 2702
    :goto_0
    return-void

    .line 2689
    :cond_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v2, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    .line 2690
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v2, v2, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 2692
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2696
    if-nez v1, :cond_1

    .line 2697
    invoke-direct {p0, v0, p2}, Landroid/media/MediaFocusControl;->sendVolumeUpdateToRemote(II)V

    .line 2701
    :cond_1
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mVolumeController:Landroid/media/VolumeController;

    invoke-interface {v2, p1, p3}, Landroid/media/VolumeController;->postRemoteVolumeChanged(II)V

    goto :goto_0

    .line 2690
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2692
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected checkUpdateRemoteStateIfActive(I)Z
    .locals 9
    .param p1, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2630
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2633
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2634
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2635
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v6, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackType:I

    if-ne v6, v3, :cond_1

    iget-object v6, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackState:Landroid/media/MediaFocusControl$RccPlaybackState;

    iget v6, v6, Landroid/media/MediaFocusControl$RccPlaybackState;->mState:I

    invoke-static {v6}, Landroid/media/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackStream:I

    if-ne v6, p1, :cond_1

    .line 2640
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2641
    :try_start_1
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    .line 2642
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolume:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    .line 2643
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    .line 2644
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v8, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    iput v8, v7, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeHandling:I

    .line 2645
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2646
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2647
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2658
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :goto_1
    return v3

    .line 2646
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2650
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_0
    move-exception v0

    .line 2652
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_5
    const-string v3, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2654
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2655
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v5

    .line 2656
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Landroid/media/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2657
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v3, v4

    .line 2658
    goto :goto_1

    .line 2633
    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2654
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 2657
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method

.method protected discardAudioFocusOwner()V
    .locals 4

    .prologue
    .line 463
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    .line 467
    .local v0, "exFocusOwner":Landroid/media/FocusRequester;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/FocusRequester;->handleFocusLoss(I)V

    .line 468
    invoke-virtual {v0}, Landroid/media/FocusRequester;->release()V

    .line 470
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 471
    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaFocusControl;->clearRemoteControlDisplay_syncAfRcs()V

    .line 472
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    .end local v0    # "exFocusOwner":Landroid/media/FocusRequester;
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 475
    return-void

    .line 472
    .restart local v0    # "exFocusOwner":Landroid/media/FocusRequester;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 474
    .end local v0    # "exFocusOwner":Landroid/media/FocusRequester;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 765
    return-void
.end method

.method protected dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 773
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 774
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 131
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 132
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 133
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->dumpRCDList(Ljava/io/PrintWriter;)V

    .line 134
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    .prologue
    .line 647
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    const/4 v0, 0x0

    monitor-exit v1

    .line 651
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FocusRequester;

    invoke-virtual {v0}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRemoteStreamMaxVolume()I
    .locals 3

    .prologue
    .line 2739
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v1

    .line 2740
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2741
    const/4 v0, 0x0

    monitor-exit v1

    .line 2743
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_0

    .line 2744
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRemoteStreamVolume()I
    .locals 3

    .prologue
    .line 2748
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v1

    .line 2749
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2750
    const/4 v0, 0x0

    monitor-exit v1

    .line 2752
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v0, v0, Landroid/media/MediaFocusControl$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_0

    .line 2753
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1071
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_0

    .line 1072
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1074
    :cond_0
    return-void
.end method

.method protected registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 1969
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :goto_0
    return-void

    .line 1974
    :cond_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1975
    :try_start_0
    iput-object p1, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1976
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1932
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1935
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1936
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaFocusControl;->pushMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1938
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 1940
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1941
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1942
    return-void

    .line 1940
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1941
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method protected registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 11
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 2003
    const/4 v3, -0x1

    .line 2004
    .local v3, "rccId":I
    sget-object v7, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2005
    :try_start_0
    iget-object v8, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2008
    :try_start_1
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2009
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2010
    .local v5, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2012
    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;

    if-eqz v6, :cond_0

    .line 2014
    invoke-virtual {v5}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 2017
    :cond_0
    iput-object p2, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 2018
    iput-object p3, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 2019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingUid:I

    .line 2020
    if-nez p2, :cond_3

    .line 2022
    invoke-virtual {v5}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->resetPlaybackInfo()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2056
    .end local v2    # "index":I
    .end local v5    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2057
    const/16 v6, 0xf

    invoke-direct {p0, v6}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 2059
    :cond_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2060
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2061
    return v3

    .line 2025
    .restart local v2    # "index":I
    .restart local v5    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_3
    :try_start_4
    iget v3, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    .line 2029
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 2030
    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-direct {p0, v6}, Landroid/media/MediaFocusControl;->plugRemoteControlDisplaysIntoClient_syncRcStack(Landroid/media/IRemoteControlClient;)V

    .line 2031
    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v5, v6, v9}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V

    .line 2035
    :cond_4
    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2036
    .local v0, "b":Landroid/os/IBinder;
    new-instance v4, Landroid/media/MediaFocusControl$RcClientDeathHandler;

    iget-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v4, p0, v0, v6}, Landroid/media/MediaFocusControl$RcClientDeathHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2039
    .local v4, "rcdh":Landroid/media/MediaFocusControl$RcClientDeathHandler;
    const/4 v6, 0x0

    :try_start_5
    invoke-interface {v0, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2045
    :goto_2
    :try_start_6
    iput-object v4, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/MediaFocusControl$RcClientDeathHandler;
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 2049
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "index":I
    .end local v4    # "rcdh":Landroid/media/MediaFocusControl$RcClientDeathHandler;
    .end local v5    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_0
    move-exception v1

    .line 2051
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_7
    const-string v6, "MediaFocusControl"

    const-string v9, "Wrong index accessing RC stack, lock error? "

    invoke-static {v6, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2059
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v6

    .line 2060
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v6

    .line 2040
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "index":I
    .restart local v4    # "rcdh":Landroid/media/MediaFocusControl$RcClientDeathHandler;
    .restart local v5    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_1
    move-exception v1

    .line 2042
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v6, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 2008
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "rcdh":Landroid/media/MediaFocusControl$RcClientDeathHandler;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0
.end method

.method protected registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 232
    .local v0, "reg":I
    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 234
    const/4 v1, 0x1

    .line 239
    :goto_0
    return v1

    .line 236
    :cond_0
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register IRemoteControlDisplay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 218
    invoke-direct {p0, p4}, Landroid/media/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 219
    .local v0, "reg":I
    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 221
    const/4 v1, 0x1

    .line 226
    :goto_0
    return v1

    .line 223
    :cond_0
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or be an enabled NotificationListenerService for registerRemoteController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 7
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    const/4 v4, 0x0

    .line 2598
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2600
    return-void
.end method

.method protected remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 2355
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2356
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2357
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    const/4 v0, 0x0

    .line 2358
    .local v0, "artworkSizeUpdate":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    .line 2359
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2360
    .local v1, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2361
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$900(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-ne v6, p2, :cond_1

    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1000(Landroid/media/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-eq v6, p3, :cond_0

    .line 2362
    :cond_1
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1, p2}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$902(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I

    .line 2363
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1, p3}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$1002(Landroid/media/MediaFocusControl$DisplayInfoForServer;I)I

    .line 2364
    const/4 v0, 0x1

    goto :goto_0

    .line 2368
    .end local v1    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_2
    if-eqz v0, :cond_4

    .line 2371
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2372
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2373
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2374
    .local v4, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    .line 2376
    :try_start_1
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2377
    :catch_0
    move-exception v3

    .line 2378
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting bitmap size for RCD on RCC: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2383
    .end local v0    # "artworkSizeUpdate":Z
    .end local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v0    # "artworkSizeUpdate":Z
    .restart local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2384
    return-void
.end method

.method protected remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 2400
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2401
    const/4 v3, 0x0

    .line 2404
    .local v3, "rcdRegistered":Z
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2405
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2406
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2407
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2408
    # setter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$3202(Landroid/media/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 2409
    const/4 v3, 0x1

    .line 2413
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    if-nez v3, :cond_2

    .line 2414
    monitor-exit v7

    .line 2430
    :goto_0
    return-void

    .line 2418
    :cond_2
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2419
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2420
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2421
    .local v4, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    .line 2423
    :try_start_1
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6, p1, p2}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2424
    :catch_0
    move-exception v2

    .line 2425
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting position sync flag for RCD on RCC: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2429
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "mainStreamType"    # I
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 659
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 662
    const-string v1, "MediaFocusControl"

    const-string v2, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v1, 0x0

    .line 725
    :goto_0
    return v1

    .line 666
    :cond_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p6

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    const/4 v1, 0x0

    goto :goto_0

    .line 671
    :cond_1
    sget-object v12, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v12

    .line 672
    :try_start_0
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->canReassignAudioFocus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 673
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 676
    :cond_2
    :try_start_1
    move-object/from16 v0, p5

    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->canReassignAudioFocusFromQchat(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 677
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 683
    :cond_3
    new-instance v7, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0}, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;-><init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    .local v7, "afdh":Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 692
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/media/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 695
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FocusRequester;

    invoke-virtual {v1}, Landroid/media/FocusRequester;->getGainRequest()I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_4

    .line 698
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 699
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_0

    .line 686
    :catch_0
    move-exception v10

    .line 688
    .local v10, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v1, 0x0

    monitor-exit v12

    goto/16 :goto_0

    .line 703
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/FocusRequester;

    .line 704
    .local v11, "fr":Landroid/media/FocusRequester;
    invoke-virtual {v11}, Landroid/media/FocusRequester;->release()V

    .line 708
    .end local v11    # "fr":Landroid/media/FocusRequester;
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 711
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 712
    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/media/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 716
    :cond_6
    iget-object v13, p0, Landroid/media/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/media/FocusRequester;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v2, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 721
    const/16 v1, 0xf

    :try_start_4
    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 722
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 723
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 725
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 722
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method protected restoreMediaButtonReceiver()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1500
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "media_button_receiver"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1502
    .local v3, "receiverName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1503
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1504
    .local v0, "eventReceiver":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 1517
    .end local v0    # "eventReceiver":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 1510
    .restart local v0    # "eventReceiver":Landroid/content/ComponentName;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1512
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1513
    iget-object v4, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1515
    .local v2, "pi":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0, v4}, Landroid/media/MediaFocusControl;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected setPlaybackInfoForRcc(III)V
    .locals 7
    .param p1, "rccId"    # I
    .param p2, "what"    # I
    .param p3, "value"    # I

    .prologue
    .line 2495
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2497
    return-void
.end method

.method protected setPlaybackStateForRcc(IIJF)V
    .locals 7
    .param p1, "rccId"    # I
    .param p2, "state"    # I
    .param p3, "timeMs"    # J
    .param p5, "speed"    # F

    .prologue
    .line 2560
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    new-instance v5, Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/media/MediaFocusControl$RccPlaybackState;-><init>(IJF)V

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2563
    return-void
.end method

.method protected setRemoteControlClientPlaybackPosition(IJ)V
    .locals 7
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    const/4 v2, 0x0

    .line 2434
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 2435
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2436
    :try_start_1
    iget v0, p0, Landroid/media/MediaFocusControl;->mCurrentRcClientGen:I

    if-eq v0, p1, :cond_0

    .line 2437
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2444
    :goto_0
    return-void

    .line 2439
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2440
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2442
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0x8

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move v3, p1

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 2439
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 2440
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method protected setRemoteStreamVolume(I)V
    .locals 8
    .param p1, "vol"    # I

    .prologue
    .line 2758
    const/4 v2, -0x1

    .line 2759
    .local v2, "rccId":I
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    monitor-enter v6

    .line 2760
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v5, v5, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 2761
    monitor-exit v6

    .line 2791
    :cond_0
    :goto_0
    return-void

    .line 2763
    :cond_1
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mMainRemote:Landroid/media/MediaFocusControl$RemotePlaybackState;

    iget v2, v5, Landroid/media/MediaFocusControl$RemotePlaybackState;->mRccId:I

    .line 2764
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2765
    const/4 v4, 0x0

    .line 2766
    .local v4, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6

    .line 2771
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2772
    iget-object v5, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2774
    .local v3, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget v5, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRccId:I

    if-ne v5, v2, :cond_3

    .line 2775
    iget-object v4, v3, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2783
    .end local v1    # "index":I
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2784
    if-eqz v4, :cond_0

    .line 2786
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v4, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2787
    :catch_0
    move-exception v0

    .line 2788
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MediaFocusControl"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2764
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2771
    .restart local v1    # "index":I
    .restart local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .restart local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2779
    .end local v1    # "index":I
    .end local v3    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_1
    move-exception v0

    .line 2781
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_5
    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2783
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 749
    sget-object v1, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 750
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/media/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 751
    monitor-exit v1

    .line 752
    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterMediaButtonEventReceiverForCalls()V
    .locals 2

    .prologue
    .line 1983
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1985
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :goto_0
    return-void

    .line 1988
    :cond_0
    iget-object v1, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1989
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1990
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1950
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    sget-object v2, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1953
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1954
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 1955
    .local v0, "topOfStackWillChange":Z
    invoke-direct {p0, p1}, Landroid/media/MediaFocusControl;->removeMediaButtonReceiver_syncAfRcs(Landroid/app/PendingIntent;)V

    .line 1956
    if-eqz v0, :cond_0

    .line 1958
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 1960
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1961
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1962
    return-void

    .line 1960
    .end local v0    # "topOfStackWillChange":Z
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 1961
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 9
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;

    .prologue
    const/4 v4, 0x0

    .line 2071
    sget-object v5, Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2072
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2073
    const/4 v3, 0x0

    .line 2075
    .local v3, "topRccChange":Z
    :try_start_1
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2076
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2077
    .local v2, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v7, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2081
    invoke-virtual {v2}, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 2083
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v2, v7, v8}, Landroid/media/MediaFocusControl;->updateDisplaysOnRCCUpdate_syncRcsCurrc(Landroid/media/MediaFocusControl$RemoteControlStackEntry;ZZ)V

    .line 2086
    const/4 v7, 0x0

    iput-object v7, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 2087
    const/4 v7, 0x0

    iput-object v7, v2, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 2088
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_2

    const/4 v3, 0x1

    .line 2097
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 2099
    const/16 v4, 0xf

    :try_start_2
    invoke-direct {p0, v4}, Landroid/media/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 2101
    :cond_1
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2102
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2103
    return-void

    .restart local v1    # "index":I
    .restart local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :cond_2
    move v3, v4

    .line 2088
    goto :goto_1

    .line 2075
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2093
    .end local v1    # "index":I
    .end local v2    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    :catch_0
    move-exception v0

    .line 2095
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_4
    const-string v4, "MediaFocusControl"

    const-string v7, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2101
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4

    .line 2102
    .end local v3    # "topRccChange":Z
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method

.method protected unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 2309
    iget-object v7, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    monitor-enter v7

    .line 2310
    if-nez p1, :cond_0

    .line 2311
    :try_start_0
    monitor-exit v7

    .line 2343
    :goto_0
    return-void

    .line 2314
    :cond_0
    const/4 v2, 0x0

    .line 2315
    .local v2, "displayWasPluggedIn":Z
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2316
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    .line 2317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFocusControl$DisplayInfoForServer;

    .line 2318
    .local v0, "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    # getter for: Landroid/media/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->access$800(Landroid/media/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2319
    const/4 v2, 0x1

    .line 2320
    invoke-virtual {v0}, Landroid/media/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 2321
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 2342
    .end local v0    # "di":Landroid/media/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "displayWasPluggedIn":Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2325
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v2    # "displayWasPluggedIn":Z
    :cond_2
    if-eqz v2, :cond_4

    .line 2328
    :try_start_1
    iget-object v6, p0, Landroid/media/MediaFocusControl;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2329
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2330
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    .line 2331
    .local v4, "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    .line 2333
    :try_start_2
    iget-object v6, v4, Landroid/media/MediaFocusControl$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v6, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2334
    :catch_0
    move-exception v3

    .line 2335
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "MediaFocusControl"

    const-string v8, "Error disconnecting remote control display to client: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2342
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "rcse":Landroid/media/MediaFocusControl$RemoteControlStackEntry;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaFocusControl$RemoteControlStackEntry;>;"
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected updateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    .locals 7
    .param p1, "genId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Landroid/media/Rating;

    .prologue
    .line 2465
    iget-object v0, p0, Landroid/media/MediaFocusControl;->mEventHandler:Landroid/media/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0x9

    const/4 v2, 0x2

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroid/media/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2467
    return-void
.end method
