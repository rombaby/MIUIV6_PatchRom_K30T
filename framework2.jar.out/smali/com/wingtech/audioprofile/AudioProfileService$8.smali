.class Lcom/wingtech/audioprofile/AudioProfileService$8;
.super Landroid/database/ContentObserver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wingtech/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wingtech/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/wingtech/audioprofile/AudioProfileService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService$8;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 550
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService$8;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService$8;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "dtmf_tone"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$8;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTMF Observer , dtmf tone "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_1

    const-string v1, " enabled "

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService$8;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$8;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    .line 555
    monitor-exit v2

    .line 556
    return-void

    .line 551
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 553
    .restart local v0    # "enabled":Z
    :cond_1
    const-string v1, " disabled "

    goto :goto_1

    .line 555
    .end local v0    # "enabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
