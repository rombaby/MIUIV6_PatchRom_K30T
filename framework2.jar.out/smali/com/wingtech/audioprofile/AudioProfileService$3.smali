.class Lcom/wingtech/audioprofile/AudioProfileService$3;
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
    .line 341
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService$3;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVibrateSettingChanged(II)V
    .locals 3
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService$3;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVibrateSettingChanged: current vibrateType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastVibrateType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService$3;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mLastVibrateType:I
    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$900(Lcom/wingtech/audioprofile/AudioProfileService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService$3;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # getter for: Lcom/wingtech/audioprofile/AudioProfileService;->mLastVibrateType:I
    invoke-static {v0}, Lcom/wingtech/audioprofile/AudioProfileService;->access$900(Lcom/wingtech/audioprofile/AudioProfileService;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService$3;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const/4 v1, 0x1

    # setter for: Lcom/wingtech/audioprofile/AudioProfileService;->mDelaySetVibrate:Z
    invoke-static {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1002(Lcom/wingtech/audioprofile/AudioProfileService;Z)Z

    .line 348
    const-string v0, "AudioProfileService"

    const-string v1, "onVibrateSettingChanged: current vibrate type is same as last one, delay set vibrate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService$3;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    # setter for: Lcom/wingtech/audioprofile/AudioProfileService;->mLastVibrateType:I
    invoke-static {v0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->access$902(Lcom/wingtech/audioprofile/AudioProfileService;I)I

    .line 351
    return-void
.end method
