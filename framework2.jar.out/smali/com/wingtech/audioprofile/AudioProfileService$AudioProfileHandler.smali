.class Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;
.super Landroid/os/Handler;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wingtech/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioProfileHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wingtech/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/wingtech/audioprofile/AudioProfileService;)V
    .locals 0

    .prologue
    .line 3830
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 3834
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 3835
    .local v3, "name":Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 3836
    .local v5, "valueInt":I
    const/4 v6, 0x0

    .line 3837
    .local v6, "valueSting":Ljava/lang/String;
    iget-object v11, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I
    invoke-static {v11}, Lcom/wingtech/audioprofile/AudioProfileService;->access$3300(Lcom/wingtech/audioprofile/AudioProfileService;)I

    move-result v4

    .line 3838
    .local v4, "simId":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3839
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3840
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3844
    :cond_0
    iget-object v11, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMessage what = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", name = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " or "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 3846
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 3999
    :pswitch_0
    const-string v8, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupport handle message: what = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    :goto_0
    return-void

    .line 3855
    :pswitch_1
    const-string v9, "simid"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 3856
    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set QC Ringtone ,SIM id= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 3857
    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2300(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v9

    if-nez v6, :cond_1

    :goto_1
    invoke-static {v9, v4, v8}, Landroid/media/RingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    .line 3865
    :pswitch_2
    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2300(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v9

    if-nez v6, :cond_2

    :goto_2
    invoke-static {v9, v7, v8}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_2
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_2

    .line 3870
    :pswitch_3
    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2300(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x8

    if-nez v6, :cond_3

    :goto_3
    invoke-static {v9, v10, v8}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_3
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_3

    .line 3875
    :pswitch_4
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8, v3, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3879
    :pswitch_5
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8, v3, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3883
    :pswitch_6
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8, v3, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3887
    :pswitch_7
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    const/4 v10, -0x2

    invoke-static {v8, v3, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 3892
    :pswitch_8
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 3896
    :pswitch_9
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 3900
    :pswitch_a
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 3904
    :pswitch_b
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3905
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->access$3400(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3910
    :pswitch_c
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3911
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->access$3400(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3916
    :pswitch_d
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3917
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->access$3400(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3922
    :pswitch_e
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3926
    :pswitch_f
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3930
    :pswitch_10
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3934
    :pswitch_11
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3938
    :pswitch_12
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3943
    :pswitch_13
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3947
    :pswitch_14
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3951
    :pswitch_15
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # setter for: Lcom/wingtech/audioprofile/AudioProfileService;->mDelaySetVibrate:Z
    invoke-static {v8, v10}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1002(Lcom/wingtech/audioprofile/AudioProfileService;Z)Z

    .line 3952
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v11, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v11}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v8, :cond_4

    move v7, v9

    .line 3956
    .local v7, "vibrationStatus":I
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3960
    .local v1, "identityToken":J
    :try_start_0
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2300(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "vibrate_when_ringing"

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v13, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v13}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v8, :cond_5

    move v8, v9

    :goto_4
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3966
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3969
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$000(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8, v10, v7}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3970
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$000(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8, v9, v7}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3971
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v9, "CTS test finish, set vibrate again to make function normal!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v8, v10

    .line 3960
    goto :goto_4

    .line 3966
    :catchall_0
    move-exception v8

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 3975
    .end local v1    # "identityToken":J
    .end local v7    # "vibrationStatus":I
    :pswitch_16
    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2300(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x10

    if-nez v6, :cond_6

    :goto_5
    invoke-static {v9, v10, v8}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_5

    .line 3980
    :pswitch_17
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3981
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->access$3400(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3987
    :pswitch_18
    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2300(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/Context;

    move-result-object v9

    const/16 v10, 0x20

    if-nez v6, :cond_7

    :goto_6
    invoke-static {v9, v10, v8}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_6

    .line 3992
    :pswitch_19
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3993
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->access$3400(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3846
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method
