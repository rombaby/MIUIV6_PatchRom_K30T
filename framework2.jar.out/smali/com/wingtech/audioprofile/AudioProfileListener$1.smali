.class Lcom/wingtech/audioprofile/AudioProfileListener$1;
.super Lcom/wingtech/audioprofile/IAudioProfileListener$Stub;
.source "AudioProfileListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wingtech/audioprofile/AudioProfileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wingtech/audioprofile/AudioProfileListener;


# direct methods
.method constructor <init>(Lcom/wingtech/audioprofile/AudioProfileListener;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileListener$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileListener;

    invoke-direct {p0}, Lcom/wingtech/audioprofile/IAudioProfileListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileListener$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 4
    .param p1, "ringerMode"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileListener$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void
.end method

.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 2
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileListener$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method

.method public onVibrateSettingChanged(II)V
    .locals 2
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileListener$1;->this$0:Lcom/wingtech/audioprofile/AudioProfileListener;

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    return-void
.end method
