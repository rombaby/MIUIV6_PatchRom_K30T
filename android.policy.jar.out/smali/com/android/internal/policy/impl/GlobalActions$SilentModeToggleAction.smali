.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 6

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    .line 821
    const v1, 0x10806ca

    const v2, 0x10806c7

    const v3, 0x10400d3

    const v4, 0x10400d4

    const v5, 0x10400d5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 826
    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 829
    if-eqz p1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 834
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeToggleAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 837
    const/4 v0, 0x1

    return v0
.end method
