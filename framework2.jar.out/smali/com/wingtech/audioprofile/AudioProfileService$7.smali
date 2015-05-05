.class Lcom/wingtech/audioprofile/AudioProfileService$7;
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
    .line 483
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    .line 486
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    monitor-enter v8

    .line 492
    :try_start_0
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 493
    .local v0, "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    .line 494
    .local v1, "activeState":Lcom/wingtech/audioprofile/AudioProfileState;
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "sms_notification"

    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, "uriString":Ljava/lang/String;
    if-nez v6, :cond_2

    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 497
    .local v5, "systemUri":Landroid/net/Uri;
    :goto_0
    iget-object v7, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    if-nez v7, :cond_0

    if-nez v5, :cond_1

    :cond_0
    iget-object v7, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    invoke-virtual {v7, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 499
    .local v3, "isPassiveChange":Z
    :cond_1
    :goto_1
    sget-object v7, Lcom/wingtech/audioprofile/AudioProfileService$11;->$SwitchMap$com$wingtech$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 536
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v9, 0x20

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lcom/wingtech/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 537
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v9, "SMS changed in silent profile,sync to system if switch to last active profile"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v7, v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 540
    :goto_2
    monitor-exit v8

    .line 541
    return-void

    .line 495
    .end local v3    # "isPassiveChange":Z
    .end local v5    # "systemUri":Landroid/net/Uri;
    :cond_2
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 497
    .restart local v5    # "systemUri":Landroid/net/Uri;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 502
    .restart local v3    # "isPassiveChange":Z
    :pswitch_0
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$300(Lcom/wingtech/audioprofile/AudioProfileService;)Lcom/wingtech/audioprofile/IAudioProfileExtension;

    move-result-object v7

    invoke-interface {v7}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 506
    if-eqz v3, :cond_4

    .line 507
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$600(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v7

    sget-object v9, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 508
    .local v2, "generalKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$600(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v7

    sget-object v9, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 509
    .local v4, "outdoorKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-virtual {v7, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v7

    iput-object v5, v7, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    .line 510
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-virtual {v7, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v7

    iput-object v5, v7, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    .line 511
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v9, 0x20

    invoke-virtual {v7, v2, v9, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 512
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v9, 0x20

    invoke-virtual {v7, v4, v9, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 513
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMS changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v7, v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    goto :goto_2

    .line 540
    .end local v0    # "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .end local v1    # "activeState":Lcom/wingtech/audioprofile/AudioProfileState;
    .end local v2    # "generalKey":Ljava/lang/String;
    .end local v3    # "isPassiveChange":Z
    .end local v4    # "outdoorKey":Ljava/lang/String;
    .end local v5    # "systemUri":Landroid/net/Uri;
    .end local v6    # "uriString":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 516
    .restart local v0    # "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .restart local v1    # "activeState":Lcom/wingtech/audioprofile/AudioProfileState;
    .restart local v3    # "isPassiveChange":Z
    .restart local v5    # "systemUri":Landroid/net/Uri;
    .restart local v6    # "uriString":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v9, "SMS changed by itself, do nothing!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v7, v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    goto :goto_2

    .line 524
    :cond_5
    :pswitch_1
    if-eqz v3, :cond_6

    .line 525
    iput-object v5, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    .line 526
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x20

    invoke-virtual {v7, v9, v10, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 528
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMS changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v7, v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 531
    :cond_6
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$7;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v9, "SMS changed by itself, do nothing!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v7, v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
