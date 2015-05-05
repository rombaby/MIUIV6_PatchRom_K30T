.class Lcom/android/server/PPPOEService$1;
.super Landroid/os/Handler;
.source "PPPOEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PPPOEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PPPOEService;


# direct methods
.method constructor <init>(Lcom/android/server/PPPOEService;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    const-string v3, "PPPOEService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage msg is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 236
    :pswitch_0
    const-wide/16 v1, 0x0

    .line 237
    .local v1, "delayTimer":J
    iget-object v3, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/PPPOEService;->access$700(Lcom/android/server/PPPOEService;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    .line 238
    const-wide/16 v1, 0x1388

    .line 243
    :goto_1
    iget-object v3, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PPPOEService;->access$800(Lcom/android/server/PPPOEService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/PPPOEService;->access$800(Lcom/android/server/PPPOEService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/PPPOEConfig;

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    # getter for: Lcom/android/server/PPPOEService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/PPPOEService;->access$700(Lcom/android/server/PPPOEService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v1, v3

    goto :goto_1

    .line 247
    .end local v1    # "delayTimer":J
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    # invokes: Lcom/android/server/PPPOEService;->stopPPPOE()V
    invoke-static {v3}, Lcom/android/server/PPPOEService;->access$900(Lcom/android/server/PPPOEService;)V

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/PPPOEConfig;

    .line 251
    .local v0, "config":Landroid/net/wifi/PPPOEConfig;
    iget-object v3, p0, Lcom/android/server/PPPOEService$1;->this$0:Lcom/android/server/PPPOEService;

    # invokes: Lcom/android/server/PPPOEService;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    invoke-static {v3, v0}, Lcom/android/server/PPPOEService;->access$1000(Lcom/android/server/PPPOEService;Landroid/net/wifi/PPPOEConfig;)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
