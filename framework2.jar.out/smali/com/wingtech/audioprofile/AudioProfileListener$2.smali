.class Lcom/wingtech/audioprofile/AudioProfileListener$2;
.super Landroid/os/Handler;
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
    .line 157
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileListener$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :pswitch_0
    const-string v0, "AudioProfileListener"

    const-string v1, "Undefined handle message!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    return-void

    .line 161
    :pswitch_1
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileListener$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/wingtech/audioprofile/AudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileListener$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileListener;->onRingerModeChanged(I)V

    goto :goto_0

    .line 169
    :pswitch_3
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileListener$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/wingtech/audioprofile/AudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_4
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileListener$2;->this$0:Lcom/wingtech/audioprofile/AudioProfileListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileListener;->onVibrateSettingChanged(II)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
