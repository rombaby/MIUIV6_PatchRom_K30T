.class public Lcom/android/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private isUiRomShowIconText:Z

.field private isUiRomStyle:Z

.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconPaddingTop:I

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mSavedPaddingLeft:I

.field private mSavedPaddingTop:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1110049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 80
    sget-object v3, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 87
    .local v1, "density":F
    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 89
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->isUiRomStyle(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isUiRomStyle:Z

    .line 94
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingTop:I

    .line 95
    const v3, 0x1050089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIconPaddingTop:I

    .line 98
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 99
    return-void
.end method

.method private isActionSplitParent()Z
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 352
    .local v0, "menuView":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_0

    .line 353
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 354
    .local v1, "splitView":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_0

    .line 355
    const/4 v2, 0x1

    .line 358
    .end local v1    # "splitView":Landroid/view/ViewParent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isUiRomStyle(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 371
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x10f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 372
    .local v1, "ret":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 373
    return v1
.end method

.method private setUiRomCompoundDrawables(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isTop"    # Z

    .prologue
    const/4 v0, 0x0

    .line 361
    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p0, v0, p1, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 165
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_3

    :cond_0
    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    .line 169
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isUiRomStyle:Z

    if-eqz v3, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->isActionSplitParent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 171
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 172
    const/4 v0, 0x1

    .line 173
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setUiRomCompoundDrawables(Landroid/graphics/drawable/Drawable;Z)V

    .line 174
    iput-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isUiRomShowIconText:Z

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103037e

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 189
    :cond_1
    :goto_2
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    return-void

    .end local v0    # "visible":Z
    :cond_2
    move v0, v2

    .line 164
    goto :goto_0

    .restart local v0    # "visible":Z
    :cond_3
    move v3, v2

    .line 165
    goto :goto_1

    .line 177
    :cond_4
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setUiRomCompoundDrawables(Landroid/graphics/drawable/Drawable;Z)V

    .line 178
    iput-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isUiRomShowIconText:Z

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103037f

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 182
    :cond_5
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setUiRomCompoundDrawables(Landroid/graphics/drawable/Drawable;Z)V

    .line 183
    iput-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isUiRomShowIconText:Z

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030380

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_2

    .line 189
    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 124
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setId(I)V

    .line 128
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    return-void

    .line 128
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isUiRomStyle:Z

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    goto :goto_0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 107
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 108
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 296
    :goto_0
    return v8

    .line 275
    :cond_0
    const/4 v10, 0x2

    new-array v5, v10, [I

    .line 276
    .local v5, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 277
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 278
    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 281
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 282
    .local v7, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 283
    .local v3, "height":I
    aget v10, v5, v9

    div-int/lit8 v11, v3, 0x2

    add-int v4, v10, v11

    .line 284
    .local v4, "midy":I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 286
    .local v6, "screenWidth":I
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v1, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 287
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 289
    const v10, 0x800035

    aget v8, v5, v8

    sub-int v8, v6, v8

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v8, v11

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 295
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 296
    goto :goto_0

    .line 293
    :cond_1
    const/16 v10, 0x51

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, -0x80000000

    const/high16 v11, 0x40000000    # 2.0f

    .line 301
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    if-ne v7, v12, :cond_0

    .line 303
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    .line 307
    .local v3, "textVisible":Z
    if-eqz v3, :cond_1

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_1

    .line 308
    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 312
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 314
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 315
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 316
    .local v6, "widthSize":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 317
    .local v1, "oldMeasuredWidth":I
    if-ne v5, v12, :cond_6

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 320
    .local v2, "targetWidth":I
    :goto_0
    if-eq v5, v11, :cond_2

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_2

    if-ge v1, v2, :cond_2

    .line 322
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 326
    :cond_2
    if-nez v3, :cond_3

    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 329
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 330
    .local v4, "w":I
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 331
    .local v0, "dw":I
    sub-int v7, v4, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 334
    .end local v0    # "dw":I
    .end local v4    # "w":I
    :cond_3
    iget-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isUiRomStyle:Z

    if-eqz v7, :cond_5

    .line 335
    iget-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isUiRomShowIconText:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    .line 336
    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingTop:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingTop:I

    .line 339
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIconPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 347
    :cond_5
    :goto_1
    return-void

    .line 317
    .end local v2    # "targetWidth":I
    :cond_6
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0

    .line 341
    .restart local v2    # "targetWidth":I
    :cond_7
    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingTop:I

    if-ltz v7, :cond_5

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget v8, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 239
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 148
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 152
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 156
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 157
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 161
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 193
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 194
    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 196
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 197
    .local v0, "height":I
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    .line 198
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 199
    .local v1, "scale":F
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 200
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 202
    .end local v1    # "scale":F
    :cond_0
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    .line 203
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 204
    .restart local v1    # "scale":F
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 205
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 207
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 209
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    invoke-virtual {p0, p1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 212
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 140
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 113
    iput p2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingTop:I

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 220
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 226
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 227
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    return v0
.end method
