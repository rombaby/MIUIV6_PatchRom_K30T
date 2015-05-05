.class Lcom/android/server/MountService$3;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 829
    const-string v3, "connected"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "mass_storage"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 831
    .local v0, "available":Z
    :goto_0
    const-string v3, "configured"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 832
    .local v1, "configed":Z
    iget-object v2, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->notifyShareAvailabilityChange(ZZ)V
    invoke-static {v2, v0, v1}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;ZZ)V

    .line 833
    return-void

    .end local v0    # "available":Z
    .end local v1    # "configed":Z
    :cond_0
    move v0, v2

    .line 829
    goto :goto_0
.end method
