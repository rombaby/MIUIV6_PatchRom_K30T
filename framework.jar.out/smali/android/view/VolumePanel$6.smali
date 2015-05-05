.class Landroid/view/VolumePanel$6;
.super Lcom/wingtech/audioprofile/AudioProfileListener;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Landroid/view/VolumePanel$6;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1221
    invoke-super {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Landroid/view/VolumePanel$6;->this$0:Landroid/view/VolumePanel;

    # invokes: Landroid/view/VolumePanel;->updateAudioProfileStatus(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/view/VolumePanel;->access$800(Landroid/view/VolumePanel;Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Landroid/view/VolumePanel$6;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Landroid/view/VolumePanel;->access$900(Landroid/view/VolumePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Landroid/view/VolumePanel$6;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v0}, Landroid/view/VolumePanel;->updateStates()V

    .line 1226
    :cond_0
    return-void
.end method
