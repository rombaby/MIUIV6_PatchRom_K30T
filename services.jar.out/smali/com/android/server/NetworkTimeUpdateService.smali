.class public Lcom/android/server/NetworkTimeUpdateService;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final DBG:Z = false

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_NETWORK_CONNECTED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final NOT_SET:J = -0x1L

.field private static POLL_REQUEST:I = 0x0

.field private static final SERVERLIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultServer:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLastNtpFetchTime:J

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private mNitzZoneSetTime:J

.field private mNtpServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field private final mPollingIntervalMs:J

.field private final mPollingIntervalShorterMs:J

.field private mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

.field private mTime:Landroid/util/TrustedTime;

.field private final mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private final mTryAgainTimesMax:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    sput v2, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    .line 99
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ntp.api.bz"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "hshh.org"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2.android.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time-a.nist.gov"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "North-america.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Cn.pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pool.ntp.org"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "t1.hshh.org"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "t2.hshh.org"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "t3.hshh.org"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "clock.via.net"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/NetworkTimeUpdateService;->SERVERLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, -0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 69
    iput-wide v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    .line 80
    iput-wide v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    .line 273
    new-instance v5, Lcom/android/server/NetworkTimeUpdateService$2;

    invoke-direct {v5, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    new-instance v5, Lcom/android/server/NetworkTimeUpdateService$3;

    invoke-direct {v5, p0}, Lcom/android/server/NetworkTimeUpdateService$3;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    .line 116
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 117
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.server.NetworkTimeUpdateService.action.POLL"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v3, "pollIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    invoke-static {v5, v6, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 120
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0045

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 122
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0046

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 124
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 126
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0048

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    .line 130
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    check-cast v5, Landroid/util/NtpTrustedTime;

    invoke-virtual {v5}, Landroid/util/NtpTrustedTime;->getServer()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultServer:Ljava/lang/String;

    .line 131
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultServer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/server/NetworkTimeUpdateService;->SERVERLIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 134
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    iput v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/NetworkTimeUpdateService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method private isAutomaticTimeRequested()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onPollNetworkTime(I)V
    .locals 14
    .param p1, "event"    # I

    .prologue
    const/4 v13, 0x0

    const-wide/16 v11, -0x1

    .line 180
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v7

    if-nez v7, :cond_0

    .line 250
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 185
    .local v5, "refTime":J
    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    cmp-long v7, v7, v11

    if-eqz v7, :cond_1

    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    sub-long v7, v5, v7

    iget-wide v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 186
    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v7, v8}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 192
    .local v0, "currentTime":J
    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    cmp-long v7, v7, v11

    if-eqz v7, :cond_2

    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    iget-wide v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    add-long/2addr v7, v9

    cmp-long v7, v5, v7

    if-gez v7, :cond_2

    const/4 v7, 0x1

    if-ne p1, v7, :cond_6

    .line 197
    :cond_2
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v7}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    .line 200
    iget v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int v2, v7, v8

    .line 202
    .local v2, "index":I
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    instance-of v7, v7, Landroid/util/NtpTrustedTime;

    if-eqz v7, :cond_7

    .line 204
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    check-cast v7, Landroid/util/NtpTrustedTime;

    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/NtpTrustedTime;->setServer(Ljava/lang/String;)V

    .line 205
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v7}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 206
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    check-cast v7, Landroid/util/NtpTrustedTime;

    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultServer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/NtpTrustedTime;->setServer(Ljava/lang/String;)V

    .line 215
    .end local v2    # "index":I
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v7}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_8

    .line 216
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v7}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v3

    .line 217
    .local v3, "ntp":J
    iput v13, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 220
    sub-long v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_4

    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_5

    .line 229
    :cond_4
    const-wide/16 v7, 0x3e8

    div-long v7, v3, v7

    const-wide/32 v9, 0x7fffffff

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    .line 230
    invoke-static {v3, v4}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 235
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 249
    .end local v3    # "ntp":J
    :cond_6
    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v7, v8}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0

    .line 210
    .restart local v2    # "index":I
    :cond_7
    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v7}, Landroid/util/TrustedTime;->forceRefresh()Z

    goto :goto_1

    .line 238
    .end local v2    # "index":I
    :cond_8
    iget v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 239
    iget v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-ltz v7, :cond_9

    iget v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    iget v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-gt v7, v8, :cond_a

    .line 240
    :cond_9
    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-direct {p0, v7, v8}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0

    .line 243
    :cond_a
    iput v13, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 244
    iget-wide v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v7, v8}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto/16 :goto_0
.end method

.method private registerForAlarms()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method private registerForConnectivityIntents()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .param p1, "interval"    # J

    .prologue
    .line 258
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 260
    .local v2, "now":J
    add-long v0, v2, p1

    .line 261
    .local v0, "next":J
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v0, v1, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 262
    return-void
.end method


# virtual methods
.method public systemRunning()V
    .locals 4

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 142
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V

    .line 143
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForConnectivityIntents()V

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetworkTimeUpdateService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 149
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 151
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    .line 152
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 153
    return-void
.end method
