.class Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 383
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 384
    const-string v6, "DisplayPowerState"

    const-string v7, "on mTask"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1400(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 394
    :try_start_0
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1500(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v2

    .line 395
    .local v2, "on":Z
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1600(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v7

    if-eq v2, v7, :cond_2

    move v3, v4

    .line 396
    .local v3, "onChanged":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1700(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v0

    .line 397
    .local v0, "backlight":I
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v7

    if-eq v0, v7, :cond_3

    move v1, v4

    .line 398
    .local v1, "backlightChanged":Z
    :goto_2
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 399
    const-string v7, "DisplayPowerState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTask: on = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mActualOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1600(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", backlight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mActualBacklight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v9}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    if-nez v3, :cond_4

    if-nez v1, :cond_4

    .line 403
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z
    invoke-static {v4, v5}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1902(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 404
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    iget-object v4, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v4, v4, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # invokes: Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerState;->access$2200(Lcom/android/server/power/DisplayPowerState;)V

    .line 427
    return-void

    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v3    # "onChanged":Z
    :cond_2
    move v3, v5

    .line 395
    goto :goto_1

    .restart local v0    # "backlight":I
    .restart local v3    # "onChanged":Z
    :cond_3
    move v1, v5

    .line 397
    goto :goto_2

    .line 406
    .restart local v1    # "backlightChanged":Z
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v7, v2}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1602(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 407
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v7, v0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I

    .line 408
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$600()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 411
    const-string v6, "DisplayPowerState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating screen state: on="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", backlight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 415
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2000(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/power/DisplayBlanker;->unblankAllDisplays()V

    .line 417
    :cond_6
    if-eqz v1, :cond_7

    .line 418
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2100(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 420
    :cond_7
    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 421
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v6, v6, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerState;->access$2000(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/power/DisplayBlanker;->blankAllDisplays()V

    goto/16 :goto_0

    .line 408
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v2    # "on":Z
    .end local v3    # "onChanged":Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
