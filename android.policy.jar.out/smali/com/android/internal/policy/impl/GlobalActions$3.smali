.class Lcom/android/internal/policy/impl/GlobalActions$3;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$102(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0

    .line 267
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method onToggle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$302(Lcom/android/internal/policy/impl/GlobalActions;Z)Z

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 248
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 252
    :cond_0
    if-eqz p1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->createAlertDialog()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$3;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$000(Lcom/android/internal/policy/impl/GlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method
