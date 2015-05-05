.class Lcom/wingtech/audioprofile/AudioProfileService$1;
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
    .line 193
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerModeChanged(I)V
    .locals 7
    .param p1, "newRingerMode"    # I

    .prologue
    const/4 v6, 0x0

    .line 196
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$000(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 197
    .local v1, "ringerMode":I
    if-eq v1, p1, :cond_0

    .line 198
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRingerModeChanged: ringermode is not latest: new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", latest = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$200(Lcom/wingtech/audioprofile/AudioProfileService;)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 202
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRingerModeChanged with same ringerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # setter for: Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v3, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$202(Lcom/wingtech/audioprofile/AudioProfileService;I)I

    .line 207
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;
    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$300(Lcom/wingtech/audioprofile/AudioProfileService;)Lcom/wingtech/audioprofile/IAudioProfileExtension;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->onRingerModeChanged(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 212
    .local v0, "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRingerModeChanged: ringermode changed by other app, change profile! ringerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 215
    packed-switch v1, :pswitch_data_0

    .line 246
    const-string v3, "AudioProfileService"

    const-string v4, "undefined RingerMode!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :pswitch_0
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v4, "RingerMode change to SILENT, change profile to silent"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$500(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$600(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto :goto_0

    .line 228
    :pswitch_1
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v4, "RingerMode change to VIBRATE, change profile to meeting!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$500(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$600(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 237
    :pswitch_2
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    :cond_3
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v4, "RingerMode change to NORMAL, change profile to last active profile!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$500(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$000(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 240
    .local v2, "systemVolume":I
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 241
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/wingtech/audioprofile/AudioProfileService;->access$700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
