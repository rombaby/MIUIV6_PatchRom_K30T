.class Lcom/wingtech/audioprofile/AudioProfileService$10;
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
    .line 685
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 689
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "action":Ljava/lang/String;
    const-string v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBootCompleteReceiver receive action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v3, "Persist profile settings to system when boot complete!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 697
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->persistValues(Z)V
    invoke-static {v2, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->access$2900(Lcom/wingtech/audioprofile/AudioProfileService;Z)V

    .line 700
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 701
    .local v1, "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$200(Lcom/wingtech/audioprofile/AudioProfileService;)I

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 703
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$000(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v6, v5, v5}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 704
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$000(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v5, v5}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 705
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-string v3, "Persist system volume to be 0 if ringermode is normal and volume is 0 when boot complete!"

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 708
    .end local v1    # "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService$10;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$3000(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 709
    const-string v2, "AudioProfileService"

    const-string v3, "unregister mBootCompleteReceiver!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void
.end method
