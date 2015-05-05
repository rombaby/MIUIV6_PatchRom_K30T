.class Lcom/wingtech/audioprofile/AudioProfileService$2;
.super Lcom/wingtech/audioprofile/AudioProfileListener;
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
    .line 256
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 10
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    .line 259
    if-ne p1, p2, :cond_1

    .line 260
    const-string v7, "AudioProfileService"

    const-string v8, "onRingerVolumeChanged with Volume don\'t change, do nothing!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$300(Lcom/wingtech/audioprofile/AudioProfileService;)Lcom/wingtech/audioprofile/IAudioProfileExtension;

    move-result-object v7

    invoke-interface {v7, p1, p2, p3}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->onRingerVolumeChanged(IILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 269
    move-object v2, p3

    .line 270
    .local v2, "etraInfo":Ljava/lang/String;
    const/4 v6, -0x1

    .line 271
    .local v6, "streamType":I
    if-eqz v2, :cond_2

    .line 272
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 275
    :cond_2
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$800(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wingtech/audioprofile/AudioProfileState;

    .line 276
    .local v0, "activeProfileState":Lcom/wingtech/audioprofile/AudioProfileState;
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 277
    .local v1, "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/wingtech/audioprofile/AudioProfileService$11;->$SwitchMap$com$wingtech$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 320
    if-lez p1, :cond_0

    if-nez p2, :cond_0

    .line 322
    if-eqz v2, :cond_6

    if-ne v6, v9, :cond_6

    .line 323
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->syncNotificationVolumeToProfile(Ljava/lang/String;I)V

    goto :goto_0

    .line 279
    :pswitch_0
    const/4 v5, 0x0

    .line 280
    .local v5, "minVolume":I
    const/16 v4, 0xf

    .line 281
    .local v4, "maxVolume":I
    if-lez p2, :cond_4

    const/16 v7, 0xf

    if-eq p2, v7, :cond_4

    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$300(Lcom/wingtech/audioprofile/AudioProfileService;)Lcom/wingtech/audioprofile/IAudioProfileExtension;

    move-result-object v7

    invoke-interface {v7}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 284
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileService;->access$600(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 286
    .local v3, "generalProfilekey":Ljava/lang/String;
    if-eqz v2, :cond_3

    if-ne v6, v9, :cond_3

    .line 287
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-virtual {v7, v3, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->syncNotificationVolumeToProfile(Ljava/lang/String;I)V

    .line 292
    :goto_1
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-virtual {v7, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;)V

    .line 293
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v8, "onRingerVolumeChanged in outdoor profile, so change to general profile!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_3
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-virtual {v7, v3, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    goto :goto_1

    .line 300
    .end local v3    # "generalProfilekey":Ljava/lang/String;
    .end local v4    # "maxVolume":I
    .end local v5    # "minVolume":I
    :cond_4
    :pswitch_1
    if-eqz v2, :cond_5

    if-ne v6, v9, :cond_5

    iget v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v7, p2, :cond_5

    .line 301
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->syncNotificationVolumeToProfile(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 303
    :cond_5
    iget v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v7, p2, :cond_0

    .line 306
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, p2, v8}, Lcom/wingtech/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 307
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 308
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v8, "onRingerVolumeChanged: ringer volume changed, sysn to active profile except silent, meeting and outdoor!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :cond_6
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, p2, v8}, Lcom/wingtech/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 327
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 328
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v8, "onRingerVolumeChanged: sync volume 1->0 to last active profile when it cause ringemode change!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
