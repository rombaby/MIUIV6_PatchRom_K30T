.class Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/internal/widget/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;Lcom/android/internal/widget/multiwaveview/GlowPadView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .param p2, "x1"    # Lcom/android/internal/widget/multiwaveview/GlowPadView$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 149
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 150
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 151
    .local v0, "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 154
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .param p1, "suspend"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    .line 167
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 139
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_1

    .line 145
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 141
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 142
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 143
    .local v0, "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 158
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 159
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 160
    .local v0, "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->end()V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "anim":Lcom/android/internal/widget/multiwaveview/Tweener;
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 163
    return-void
.end method
