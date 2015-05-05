.class Lcom/wingtech/audioprofile/AudioProfileService$9;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/wingtech/audioprofile/AudioProfileService;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 570
    .local v8, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mUpgradeReceiver start update profile: action = "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 573
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1300(Lcom/wingtech/audioprofile/AudioProfileService;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->readDefaultRingtones()V
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1400(Lcom/wingtech/audioprofile/AudioProfileService;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$800(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 579
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1500(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 580
    .local v3, "profileKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$800(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/wingtech/audioprofile/AudioProfileState;

    .line 582
    .local v15, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    iget-object v2, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1600()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 586
    :cond_1
    iget-object v2, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1800()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 591
    :cond_2
    iget-object v2, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    if-nez v2, :cond_3

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1900()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 596
    :cond_3
    iget-object v2, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    if-nez v2, :cond_4

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2000()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 601
    :cond_4
    iget-object v2, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2100()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    goto/16 :goto_0

    .line 607
    .end local v3    # "profileKey":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1600()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_1
    # setter for: Lcom/wingtech/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z
    invoke-static {v4, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1302(Lcom/wingtech/audioprofile/AudioProfileService;Z)Z

    .line 614
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/os/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v5

    .line 616
    .local v5, "volumePath":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v9, "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1500(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 619
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 621
    .restart local v3    # "profileKey":Ljava/lang/String;
    const-string v2, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mUpgradeReceive deal case: profileKey = "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v13, 0x0

    .line 623
    .local v13, "newUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-virtual {v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v15

    .line 624
    .restart local v15    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2300(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone_msim"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/MSimTelephonyManager;

    .line 628
    .local v12, "manager":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 630
    invoke-virtual {v12}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v14

    .line 633
    .local v14, "numPhones":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "simList.size() == "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 634
    const-wide/16 v6, -0x1

    .line 635
    .local v6, "simId":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v14, :cond_9

    .line 637
    int-to-long v6, v10

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/4 v4, 0x1

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V
    invoke-static/range {v2 .. v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2400(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v4, 0x8

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V
    invoke-static/range {v2 .. v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2400(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v4, 0x20

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V
    invoke-static/range {v2 .. v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2400(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 635
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 610
    .end local v3    # "profileKey":Ljava/lang/String;
    .end local v5    # "volumePath":[Ljava/lang/String;
    .end local v6    # "simId":J
    .end local v9    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "i":I
    .end local v12    # "manager":Landroid/telephony/MSimTelephonyManager;
    .end local v13    # "newUri":Landroid/net/Uri;
    .end local v14    # "numPhones":I
    .end local v15    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 648
    .restart local v3    # "profileKey":Ljava/lang/String;
    .restart local v5    # "volumePath":[Ljava/lang/String;
    .restart local v9    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "manager":Landroid/telephony/MSimTelephonyManager;
    .restart local v13    # "newUri":Landroid/net/Uri;
    .restart local v15    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v4, "not support multi sim card!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 652
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/4 v4, 0x1

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2500(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v4, 0x8

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2500(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/4 v4, 0x2

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2500(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v4, 0x10

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2500(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v4, 0x20

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2500(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 665
    .end local v3    # "profileKey":Ljava/lang/String;
    .end local v12    # "manager":Landroid/telephony/MSimTelephonyManager;
    .end local v13    # "newUri":Landroid/net/Uri;
    .end local v15    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2300(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "phone_msim"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/MSimTelephonyManager;

    .line 667
    .restart local v12    # "manager":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 668
    invoke-virtual {v12}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v14

    .line 669
    .restart local v14    # "numPhones":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    if-ge v10, v14, :cond_b

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    # setter for: Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J
    invoke-static {v2, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2602(Lcom/wingtech/audioprofile/AudioProfileService;J)J

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    move-object/from16 v16, v0

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J
    invoke-static/range {v16 .. v16}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2600(Lcom/wingtech/audioprofile/AudioProfileService;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(IJ)V
    invoke-static {v2, v4, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2700(Lcom/wingtech/audioprofile/AudioProfileService;IJ)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v4, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    move-object/from16 v16, v0

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J
    invoke-static/range {v16 .. v16}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2600(Lcom/wingtech/audioprofile/AudioProfileService;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(IJ)V
    invoke-static {v2, v4, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2700(Lcom/wingtech/audioprofile/AudioProfileService;IJ)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v4, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    move-object/from16 v16, v0

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J
    invoke-static/range {v16 .. v16}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2600(Lcom/wingtech/audioprofile/AudioProfileService;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(IJ)V
    invoke-static {v2, v4, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2700(Lcom/wingtech/audioprofile/AudioProfileService;IJ)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/16 v4, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    move-object/from16 v16, v0

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J
    invoke-static/range {v16 .. v16}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2600(Lcom/wingtech/audioprofile/AudioProfileService;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(IJ)V
    invoke-static {v2, v4, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2700(Lcom/wingtech/audioprofile/AudioProfileService;IJ)V

    .line 669
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 678
    .end local v10    # "i":I
    .end local v14    # "numPhones":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/4 v4, 0x2

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V
    invoke-static {v2, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2800(Lcom/wingtech/audioprofile/AudioProfileService;I)V

    .line 681
    .end local v5    # "volumePath":[Ljava/lang/String;
    .end local v9    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "manager":Landroid/telephony/MSimTelephonyManager;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wingtech/audioprofile/AudioProfileService$9;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v4, "mUpgradeReceiver<<<"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 682
    return-void
.end method
