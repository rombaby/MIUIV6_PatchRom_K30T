.class Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p2, "popup"    # Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput-object p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 783
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 787
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    .line 788
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    # setter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$202(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 791
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$302(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 792
    return-void
.end method
