.class Lcom/android/internal/policy/impl/GlobalActions$6;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
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
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$6;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 4

    .prologue
    .line 358
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$6;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x10400d1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 360
    const v2, 0x10400d2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 361
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 362
    const v2, 0x1040412

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$6$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$6$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$6;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 381
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 382
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 383
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method
