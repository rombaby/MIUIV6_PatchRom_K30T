.class Lcom/android/server/PPPOEService$NetdResponseCode;
.super Ljava/lang/Object;
.source "PPPOEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PPPOEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetdResponseCode"
.end annotation


# static fields
.field public static final BandwidthControl:I = 0x259

.field public static final CommandOkay:I = 0xc8

.field public static final DnsProxyQueryResult:I = 0xde

.field public static final InterfaceChange:I = 0x258

.field public static final InterfaceGetCfgResult:I = 0xd5

.field public static final InterfaceListResult:I = 0x6e

.field public static final InterfaceRxCounterResult:I = 0xd8

.field public static final InterfaceRxThrottleResult:I = 0xda

.field public static final InterfaceTxCounterResult:I = 0xd9

.field public static final InterfaceTxThrottleResult:I = 0xdb

.field public static final IpFwdStatusResult:I = 0xd3

.field public static final OperationFailed:I = 0x190

.field public static final QuotaCounterResult:I = 0xdc

.field public static final SoftapStatusResult:I = 0xd6

.field public static final TetherDnsFwdTgtListResult:I = 0x70

.field public static final TetherInterfaceListResult:I = 0x6f

.field public static final TetherStatusResult:I = 0xd2

.field public static final TetheringStatsResult:I = 0xdd

.field public static final TtyListResult:I = 0x71

.field public static final V6RtrAdvResult:I = 0xe0


# instance fields
.field final synthetic this$0:Lcom/android/server/PPPOEService;


# direct methods
.method constructor <init>(Lcom/android/server/PPPOEService;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/PPPOEService$NetdResponseCode;->this$0:Lcom/android/server/PPPOEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
