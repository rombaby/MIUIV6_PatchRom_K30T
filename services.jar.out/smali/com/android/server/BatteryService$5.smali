.class Lcom/android/server/BatteryService$5;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->sendBatteryTempToDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;

.field final synthetic val$temp:I

.field final synthetic val$typeTemp:I

.field final synthetic val$voltage:I


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;III)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    iput p2, p0, Lcom/android/server/BatteryService$5;->val$typeTemp:I

    iput p3, p0, Lcom/android/server/BatteryService$5;->val$temp:I

    iput p4, p0, Lcom/android/server/BatteryService$5;->val$voltage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 415
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "statusIntent":Landroid/content/Intent;
    const-string v1, "type"

    iget v2, p0, Lcom/android/server/BatteryService$5;->val$typeTemp:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v1, "batteryTemp"

    iget v2, p0, Lcom/android/server/BatteryService$5;->val$temp:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    const-string v1, "voltage"

    iget v2, p0, Lcom/android/server/BatteryService$5;->val$voltage:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 421
    iget-object v1, p0, Lcom/android/server/BatteryService$5;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 423
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method