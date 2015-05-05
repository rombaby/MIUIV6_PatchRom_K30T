.class Lcom/android/server/MountService$UmsEnableCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UmsEnableCallBack"
.end annotation


# instance fields
.field final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "force"    # Z

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 489
    iput-object p3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    .line 490
    return-void
.end method

.method private sleep(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 480
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method handleFinished()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 496
    const/16 v1, 0x320

    invoke-direct {p0, v1}, Lcom/android/server/MountService$UmsEnableCallBack;->sleep(I)V

    .line 497
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mUmsAvailable:Z
    invoke-static {v1}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-super {p0}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    .line 500
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3, v6}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    const-string v1, "MountService"

    const-string v2, "xxx::dounshare"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const-string v3, "ums"

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3, v5}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 506
    iget-object v1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v0

    .line 507
    .local v0, "rc":I
    if-eqz v0, :cond_0

    .line 508
    const-string v1, "MountService"

    const-string v2, "XXX::three::Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
