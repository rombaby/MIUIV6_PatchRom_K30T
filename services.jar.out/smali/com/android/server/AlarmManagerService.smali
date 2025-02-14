.class Lcom/android/server/AlarmManagerService;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$Injector;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$QuickBootReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;
    }
.end annotation


# static fields
.field private static final ALARM_EVENT:I = 0x1

.field private static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field private static final DEBUG_BATCH:Z = false

.field private static final DEBUG_VALIDATE:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static final IS_WAKEUP_MASK:I = 0x5

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final POWER_OFF_ALARM_THRESHOLD:J = 0x1d4c0L

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_POWEROFF_WAKEUP_MASK:I = 0x10

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final TIME_CHANGED_MASK:I = 0x10000

.field private static final TYPE_NONWAKEUP_MASK:I = 0x1

.field private static final WAKEUP_STATS:Z

.field private static final localLOGV:Z

.field private static final mBackgroundIntent:Landroid/content/Intent;

.field private static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field private static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field private final RECENT_WAKEUP_PERIOD:J

.field private final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastRefCount:I

.field private final mBroadcastStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;"
        }
    .end annotation
.end field

.field private mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDateChangeSender:Landroid/app/PendingIntent;

.field private mDescriptor:I

.field private final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/internal/util/LocalLog;

.field private mNextNonWakeup:J

.field private mNextRtcWakeup:J

.field private mNextWakeup:J

.field private mQuickBootReceiver:Lcom/android/server/AlarmManagerService$QuickBootReceiver;

.field private final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTriggeredUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private final mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 101
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 356
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 504
    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    .line 107
    new-instance v3, Lcom/android/internal/util/LocalLog;

    const-string v4, "AlarmManager"

    invoke-direct {v3, v4}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 109
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    .line 118
    iput v5, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 121
    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    .line 122
    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 126
    new-instance v3, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 142
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 143
    const-wide/32 v3, 0x5265c00

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 357
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 501
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    .line 505
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    .line 506
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()I

    move-result v3

    iput v3, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    .line 507
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 511
    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "tz":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 513
    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->setTimeZone(Ljava/lang/String;)V

    .line 516
    :cond_0
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 517
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "AlarmManager"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 519
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x50000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v5, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 526
    const/high16 v3, 0x4000000

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v5, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 530
    new-instance v3, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 531
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 532
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 533
    new-instance v3, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 534
    new-instance v3, Lcom/android/server/AlarmManagerService$QuickBootReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$QuickBootReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mQuickBootReceiver:Lcom/android/server/AlarmManagerService$QuickBootReceiver;

    .line 536
    iget v3, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 537
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_1
    const-string v3, "AlarmManager"

    const-string v4, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->filtQuickBootAlarms(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/AlarmManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1410(Lcom/android/server/AlarmManagerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    return-void
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 2
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v1, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 386
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 387
    rsub-int/lit8 v1, v0, 0x0

    add-int/lit8 v0, v1, -0x1

    .line 389
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 390
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native clear(IIJJ)V
.end method

.method private native close(I)V
.end method

.method static convertToElapsed(JI)J
    .locals 5
    .param p0, "when"    # J
    .param p2, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 360
    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 361
    .local v0, "isRtc":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sub-long/2addr p0, v1

    .line 364
    :cond_1
    return-wide p0

    .line 360
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 1130
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1131
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1132
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v2

    .line 1133
    .local v2, "label":Ljava/lang/String;
    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    move-wide v3, p5

    .line 1134
    .local v3, "now":J
    :goto_1
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " #"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1135
    const-string v5, ": "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p0, v5, v3, v4}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1130
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v3    # "now":J
    :cond_0
    move-wide v3, p3

    .line 1133
    goto :goto_1

    .line 1138
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "label":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1107
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1108
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1109
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1110
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1107
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1113
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private filtQuickBootAlarms(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1279
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .local v2, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    const-string v3, "com.android.deskclock"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1284
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1286
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1287
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1288
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignore -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1291
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    return-void
.end method

.method private findFirstRtcWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 9

    .prologue
    .line 695
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 696
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 697
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 698
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 699
    .local v3, "intervalTime":J
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->isRtcPowerOffWakeup()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x1d4c0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 703
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "intervalTime":J
    :goto_1
    return-object v1

    .line 696
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v3    # "intervalTime":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "intervalTime":J
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    .prologue
    .line 685
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 686
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 687
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 688
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return-object v1

    .line 686
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 692
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1615
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    .line 1616
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1617
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_0

    .line 1618
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(Ljava/lang/String;)V

    .line 1619
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    :cond_0
    return-object v0
.end method

.method private native init()I
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1116
    packed-switch p0, :pswitch_data_0

    .line 1125
    const-string v0, "--unknown--"

    :goto_0
    return-object v0

    .line 1117
    :pswitch_0
    const-string v0, "RTC"

    goto :goto_0

    .line 1118
    :pswitch_1
    const-string v0, "RTC_WAKEUP"

    goto :goto_0

    .line 1119
    :pswitch_2
    const-string v0, "ELAPSED"

    goto :goto_0

    .line 1120
    :pswitch_3
    const-string v0, "ELAPSED_WAKEUP"

    goto :goto_0

    .line 1121
    :pswitch_4
    const-string v0, "RTC_POWEROFF_WAKEUP"

    goto :goto_0

    .line 1116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private logBatchesLocked()V
    .locals 11

    .prologue
    .line 650
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v8, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 651
    .local v8, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 652
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 653
    .local v5, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 654
    .local v3, "nowELAPSED":J
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 655
    .local v7, "NZ":I
    const/4 v10, 0x0

    .local v10, "iz":I
    :goto_0
    if-ge v10, v7, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$Batch;

    .line 657
    .local v9, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v1, "Batch "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 658
    iget-object v1, v9, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v2, "  "

    invoke-static/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V

    .line 659
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 660
    const-string v1, "AlarmManager"

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 655
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 663
    .end local v9    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 374
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    sub-long v0, p2, p0

    .line 377
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 378
    const-wide/16 v0, 0x0

    .line 380
    :cond_0
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    return-wide v2

    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    .line 374
    goto :goto_0
.end method

.method private rescheduleKernelAlarmsLocked()V
    .locals 9

    .prologue
    .line 710
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 711
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v2

    .line 712
    .local v2, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 713
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstRtcWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 714
    .local v1, "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v2, :cond_0

    iget-wide v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    iget-wide v7, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 715
    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 716
    const/4 v5, 0x2

    iget-wide v6, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 718
    :cond_0
    if-eq v0, v2, :cond_1

    iget-wide v5, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 719
    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v5, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 720
    const/4 v5, 0x3

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 722
    :cond_1
    if-eqz v1, :cond_2

    iget-wide v5, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 723
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v5, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    .line 724
    iget-wide v5, p0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    invoke-virtual {v1, v5, v6}, Lcom/android/server/AlarmManagerService$Batch;->getWhenByElapsedTime(J)J

    move-result-wide v3

    .line 725
    .local v3, "when":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    .line 726
    const/4 v5, 0x4

    invoke-direct {p0, v5, v3, v4}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 731
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstRtcWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "when":J
    :cond_2
    return-void
.end method

.method private native set(IIJJ)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;)V
    .locals 21
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "isStandalone"    # Z
    .param p14, "doValidate"    # Z
    .param p15, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 616
    new-instance v5, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move-object/from16 v17, p12

    move-object/from16 v18, p15

    invoke-direct/range {v5 .. v18}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 618
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 620
    if-eqz p13, :cond_1

    const/16 v20, -0x1

    .line 621
    .local v20, "whichBatch":I
    :goto_0
    if-gez v20, :cond_2

    .line 622
    new-instance v19, Lcom/android/server/AlarmManagerService$Batch;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 623
    .local v19, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move/from16 v0, p13

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    .line 624
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 646
    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 647
    return-void

    .line 620
    .end local v19    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v20    # "whichBatch":I
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-wide/from16 v3, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v20

    goto :goto_0

    .line 626
    .restart local v20    # "whichBatch":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AlarmManagerService$Batch;

    .line 627
    .restart local v19    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 630
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 631
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto :goto_1
.end method

.method private native setKernelTimezone(II)I
.end method

.method private setLocked(IJ)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    const/4 v2, 0x1

    const-wide/16 v8, 0x3e8

    .line 921
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 926
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 927
    const-wide/16 v3, 0x0

    .line 928
    .local v3, "alarmSeconds":J
    const-wide/16 v5, 0x0

    .line 934
    .local v5, "alarmNanoseconds":J
    :goto_0
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    .line 944
    .end local v3    # "alarmSeconds":J
    .end local v5    # "alarmNanoseconds":J
    :goto_1
    return-void

    .line 930
    :cond_0
    div-long v3, p2, v8

    .line 931
    .restart local v3    # "alarmSeconds":J
    rem-long v0, p2, v8

    mul-long/2addr v0, v8

    mul-long v5, v0, v8

    .restart local v5    # "alarmNanoseconds":J
    goto :goto_0

    .line 938
    .end local v3    # "alarmSeconds":J
    .end local v5    # "alarmNanoseconds":J
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 939
    .local v7, "msg":Landroid/os/Message;
    iput v2, v7, Landroid/os/Message;->what:I

    .line 941
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 942
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v7, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private triggerAlarmsLocked(Ljava/util/ArrayList;JJ)V
    .locals 28
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AlarmManagerService$Batch;

    .line 1153
    .local v24, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v24

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_2

    .line 1186
    .end local v24    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    return-void

    .line 1160
    .restart local v24    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1162
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v22

    .line 1163
    .local v22, "N":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1164
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v23

    .line 1165
    .local v23, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v2, 0x1

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1166
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    move-object/from16 v0, v23

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 1173
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v2, v2

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v6, p2, v6

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v6, v8

    add-long/2addr v2, v6

    long-to-int v2, v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1176
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v2, v2

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v25, v2, v6

    .line 1177
    .local v25, "delta":J
    move-object/from16 v0, v23

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v4, v2, v25

    .line 1178
    .local v4, "nextElapsed":J
    move-object/from16 v0, v23

    iget v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v23

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v8, v2, v25

    move-object/from16 v0, v23

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v14

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    move/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    move-object/from16 v6, p0

    move v7, v10

    move-wide v10, v4

    invoke-direct/range {v6 .. v21}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;)V

    .line 1163
    .end local v4    # "nextElapsed":J
    .end local v25    # "delta":J
    :cond_3
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0
.end method

.method private validateConsistencyLocked()Z
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x1

    return v0
.end method

.method private native waitForAlarm(I)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .locals 4
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 395
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 396
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 397
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 398
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-boolean v3, v1, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-nez v3, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 396
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 32
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 948
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    :goto_0
    return-void

    .line 956
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    .line 957
    :try_start_0
    const-string v3, "Current Alarm Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 959
    .local v8, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 960
    .local v6, "nowELAPSED":J
    new-instance v26, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 962
    .local v26, "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "nowRTC="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 963
    const-string v3, "="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 964
    const-string v3, " nowELAPSED="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 966
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v30, v8, v6

    add-long v23, v3, v30

    .line 967
    .local v23, "nextWakeupRTC":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v30, v8, v6

    add-long v21, v3, v30

    .line 968
    .local v21, "nextNonWakeupRTC":J
    const-string v3, "Next alarm: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 969
    const-string v3, " = "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, v21

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    const-string v3, "Next wakeup: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 971
    const-string v3, " = "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, v23

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 974
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 975
    const-string v3, "Pending alarm batches: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 978
    .local v10, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v3, 0x3a

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 979
    iget-object v4, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v5, "  "

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V

    goto :goto_1

    .line 1102
    .end local v6    # "nowELAPSED":J
    .end local v8    # "nowRTC":J
    .end local v10    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v21    # "nextNonWakeupRTC":J
    .end local v23    # "nextWakeupRTC":J
    .end local v26    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v3

    monitor-exit v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 983
    .restart local v6    # "nowELAPSED":J
    .restart local v8    # "nowRTC":J
    .restart local v21    # "nextNonWakeupRTC":J
    .restart local v23    # "nextWakeupRTC":J
    .restart local v26    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 984
    const-string v3, "  Broadcast ref count: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 985
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v4, "  Recent problems"

    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 988
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 991
    :cond_2
    const/16 v3, 0xa

    new-array v0, v3, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v28, v0

    .line 992
    .local v28, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v13, Lcom/android/server/AlarmManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1003
    .local v13, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v20, 0x0

    .line 1004
    .local v20, "len":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1005
    .local v11, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1007
    .local v12, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget-object v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1008
    .local v15, "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1009
    .local v16, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v20, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v3, v1, v2, v13}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v25

    .line 1011
    .local v25, "pos":I
    :goto_3
    if-gez v25, :cond_5

    .line 1012
    move/from16 v0, v25

    neg-int v3, v0

    add-int/lit8 v25, v3, -0x1

    .line 1014
    :cond_5
    move-object/from16 v0, v28

    array-length v3, v0

    move/from16 v0, v25

    if-ge v0, v3, :cond_4

    .line 1015
    move-object/from16 v0, v28

    array-length v3, v0

    sub-int v3, v3, v25

    add-int/lit8 v14, v3, -0x1

    .line 1016
    .local v14, "copylen":I
    if-lez v14, :cond_6

    .line 1017
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v25

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    :cond_6
    aput-object v16, v28, v25

    .line 1020
    move-object/from16 v0, v28

    array-length v3, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 1021
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1009
    .end local v14    # "copylen":I
    .end local v25    # "pos":I
    :cond_7
    const/16 v25, 0x0

    goto :goto_3

    .line 1026
    .end local v11    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v12    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v15    # "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_8
    if-lez v20, :cond_c

    .line 1027
    const-string v3, "  Top Alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 1029
    aget-object v16, v28, v17

    .line 1030
    .restart local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v3, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v3, :cond_9

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    :cond_9
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1033
    const-string v3, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1034
    const-string v3, " wakeups, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1035
    const-string v3, " alarms: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1037
    const-string v3, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1038
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 1039
    const-string v3, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1041
    :cond_a
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 1042
    const-string v3, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1044
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1028
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 1048
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17    # "i":I
    :cond_c
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    const-string v3, "  Alarm Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    .local v27, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 1052
    .restart local v11    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1053
    .restart local v12    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v3, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    iget v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v3, :cond_e

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1055
    :cond_e
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1057
    const-string v3, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1058
    const-string v3, " wakeups:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 1061
    iget-object v3, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1062
    .restart local v15    # "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1064
    .end local v15    # "fe":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_f
    move-object/from16 v0, v27

    invoke-static {v0, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1065
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_6
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_d

    .line 1066
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1067
    .restart local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v3, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v3, :cond_10

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    :cond_10
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1070
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1071
    const-string v3, " wakes "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1072
    const-string v3, " alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_11

    .line 1074
    const-string v3, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    :cond_11
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_12

    .line 1077
    const-string v3, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1065
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 1102
    .end local v11    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v12    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v16    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v17    # "i":I
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_13
    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 545
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->close(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    .line 549
    return-void

    .line 547
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    throw v0
.end method

.method public lookForPackageLocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 910
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 911
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 912
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    const/4 v2, 0x1

    .line 916
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :goto_1
    return v2

    .line 910
    .restart local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 916
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method rebatchAllAlarms()V
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 409
    monitor-exit v1

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 29
    .param p1, "doValidate"    # Z

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    .line 414
    .local v28, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 417
    .local v2, "nowElapsed":J
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 418
    .local v27, "oldBatches":I
    const/16 v25, 0x0

    .local v25, "batchNum":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_3

    .line 419
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AlarmManagerService$Batch;

    .line 420
    .local v24, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v22

    .line 421
    .local v22, "N":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 422
    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v23

    .line 423
    .local v23, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v6, v7, v8}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v4

    .line 425
    .local v4, "whenElapsed":J
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 427
    move-wide v14, v4

    .line 436
    .local v14, "maxElapsed":J
    :goto_2
    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v23

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    move/from16 v19, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v21, v0

    move-object/from16 v6, p0

    move-wide v10, v4

    move/from16 v20, p1

    invoke-direct/range {v6 .. v21}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;)V

    .line 421
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 432
    .end local v14    # "maxElapsed":J
    :cond_0
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long v14, v4, v6

    .restart local v14    # "maxElapsed":J
    :goto_3
    goto :goto_2

    .end local v14    # "maxElapsed":J
    :cond_1
    move-object/from16 v0, v23

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-static/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v14

    goto :goto_3

    .line 418
    .end local v4    # "whenElapsed":J
    .end local v23    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 440
    .end local v22    # "N":I
    .end local v24    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v26    # "i":I
    :cond_3
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 12
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1260
    .local v11, "numBatches":I
    const/4 v9, 0x0

    .local v9, "nextBatch":I
    :goto_0
    if-ge v9, v11, :cond_0

    .line 1261
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Batch;

    .line 1262
    .local v7, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v1, v7, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_1

    .line 1275
    .end local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    .line 1266
    .restart local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1267
    .local v10, "numAlarms":I
    const/4 v8, 0x0

    .local v8, "nextAlarm":I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 1268
    iget-object v1, v7, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1269
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v0, Lcom/android/server/AlarmManagerService$WakeupEvent;

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    iget-object v1, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-wide/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(Lcom/android/server/AlarmManagerService;JILjava/lang/String;)V

    .line 1272
    .local v0, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1267
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1260
    .end local v0    # "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 783
    if-nez p1, :cond_0

    .line 789
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 787
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 788
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLocked(Landroid/app/PendingIntent;)V
    .locals 16
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 839
    const/4 v11, 0x0

    .line 840
    .local v11, "didRemove":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_3

    .line 841
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 842
    .local v10, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v9, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 843
    .local v9, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v8, 0x0

    .line 844
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v13, v1, -0x1

    .local v13, "j":I
    :goto_1
    if-ltz v13, :cond_1

    .line 845
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 846
    .restart local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v14, 0x3e8

    div-long v4, v1, v14

    .line 849
    .local v4, "alarmSeconds":J
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v14, 0x3e8

    rem-long/2addr v1, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v1, v14

    const-wide/16 v14, 0x3e8

    mul-long v6, v1, v14

    .line 850
    .local v6, "alarmNanoseconds":J
    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear alarm type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",alarmSeconds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->clear(IIJJ)V

    .line 853
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/server/AlarmManagerService;->mNextRtcWakeup:J

    .line 844
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_0
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 856
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v1

    or-int/2addr v11, v1

    .line 857
    invoke-virtual {v10}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 840
    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 862
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v10    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v13    # "j":I
    :cond_3
    if-eqz v11, :cond_4

    .line 866
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 869
    :cond_4
    return-void
.end method

.method public removeLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 872
    const/4 v1, 0x0

    .line 873
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 874
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 875
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 876
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 877
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 873
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 881
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_2

    .line 885
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 886
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 888
    :cond_2
    return-void
.end method

.method public removeUserLocked(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 891
    const/4 v1, 0x0

    .line 892
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 893
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 894
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 895
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 896
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 892
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 900
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    if-eqz v1, :cond_2

    .line 904
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 905
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 907
    :cond_2
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 554
    if-eqz p9, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "AlarmManager.set"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_0
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/AlarmManagerService;->set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V

    .line 561
    return-void
.end method

.method public set(IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)V
    .locals 28
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "isStandalone"    # Z
    .param p10, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 565
    if-nez p8, :cond_0

    .line 566
    const-string v7, "AlarmManager"

    const-string v8, "set/setRepeating ignored because there is no intent"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :goto_0
    return-void

    .line 572
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-static/range {v3 .. v13}, Lcom/android/server/ExtraAlarmManagerService;->recalculateWindowLength(Landroid/content/Context;IJJJLandroid/app/PendingIntent;ZLandroid/os/WorkSource;)J

    move-result-wide p4

    const-wide/32 v7, 0x2932e00

    cmp-long v7, p4, v7

    if-lez v7, :cond_1

    .line 573
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Window length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-wide/32 p4, 0x36ee80

    .line 578
    :cond_1
    if-ltz p1, :cond_2

    const/4 v7, 0x4

    move/from16 v0, p1

    if-le v0, v7, :cond_3

    .line 579
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid alarm type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 582
    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v7, p2, v7

    if-gez v7, :cond_4

    .line 583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v25, v0

    .line 584
    .local v25, "who":J
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v23, v0

    .line 585
    .local v23, "what":J
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid alarm trigger time! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v25

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-wide/16 p2, 0x0

    .line 590
    .end local v23    # "what":J
    .end local v25    # "who":J
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 591
    .local v3, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v5

    .line 593
    .local v5, "triggerElapsed":J
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-nez v7, :cond_5

    .line 594
    move-wide v15, v5

    .line 601
    .local v15, "maxElapsed":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 608
    const/16 v21, 0x1

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide v11, v5

    move-wide/from16 v13, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, p8

    move/from16 v20, p9

    move-object/from16 v22, p10

    :try_start_0
    invoke-direct/range {v7 .. v22}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;ZZLandroid/os/WorkSource;)V

    .line 610
    monitor-exit v27

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 595
    .end local v15    # "maxElapsed":J
    :cond_5
    const-wide/16 v7, 0x0

    cmp-long v7, p4, v7

    if-gez v7, :cond_6

    move-wide/from16 v7, p6

    .line 596
    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v15

    .restart local v15    # "maxElapsed":J
    goto :goto_1

    .line 598
    .end local v15    # "maxElapsed":J
    :cond_6
    add-long v15, v5, p4

    .restart local v15    # "maxElapsed":J
    goto :goto_1
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 739
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 10
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 742
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SET_TIME_ZONE"

    const-string v9, "setTimeZone"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 748
    .local v3, "oldId":J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    .line 778
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 780
    :goto_0
    return-void

    .line 749
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 752
    .local v6, "zone":Ljava/util/TimeZone;
    const/4 v5, 0x0

    .line 753
    .local v5, "timeZoneWasChanged":Z
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 754
    :try_start_2
    const-string v7, "persist.sys.timezone"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 759
    :cond_1
    const/4 v5, 0x1

    .line 760
    const-string v7, "persist.sys.timezone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 766
    .local v1, "gmtOffset":I
    iget v7, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const v8, 0xea60

    div-int v8, v1, v8

    neg-int v8, v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    .line 767
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 769
    const/4 v7, 0x0

    :try_start_3
    invoke-static {v7}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 771
    if-eqz v5, :cond_3

    .line 772
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 774
    const-string v7, "time-zone"

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 778
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 767
    .end local v0    # "current":Ljava/lang/String;
    .end local v1    # "gmtOffset":I
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 778
    .end local v5    # "timeZoneWasChanged":Z
    .end local v6    # "zone":Ljava/util/TimeZone;
    :catchall_1
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 1418
    if-eqz p2, :cond_0

    .line 1419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1433
    :goto_0
    return-void

    .line 1423
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    .line 1425
    .local v0, "uid":I
    if-ltz v0, :cond_1

    .line 1426
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1431
    .end local v0    # "uid":I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1430
    .restart local v0    # "uid":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method updateBlockedUids(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    .line 796
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 797
    if-eqz p2, :cond_1

    .line 798
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 799
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 804
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 805
    add-int/lit8 v0, v0, -0x1

    .line 806
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-lez v1, :cond_0

    .line 808
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 809
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 798
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 828
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 835
    :cond_2
    monitor-exit v2

    .line 836
    return-void

    .line 832
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 835
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
