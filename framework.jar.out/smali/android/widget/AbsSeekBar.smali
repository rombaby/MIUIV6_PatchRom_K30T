.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mMinVal:I

.field private mScaledTouchSlop:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMinVal:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsSeekBar;->mMinVal:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 51
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 60
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/AbsSeekBar;->mMinVal:I

    .line 74
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 77
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 81
    .local v2, "thumbOffset":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    const/4 v3, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 90
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 466
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 290
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 291
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 292
    .local v6, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 293
    .local v4, "thumbHeight":I
    sub-int/2addr v0, v6

    .line 296
    iget v8, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    .line 298
    int-to-float v8, v0

    mul-float/2addr v8, p3

    float-to-int v5, v8

    .line 301
    .local v5, "thumbPos":I
    const/high16 v8, -0x80000000

    if-ne p4, v8, :cond_0

    .line 302
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 303
    .local v3, "oldBounds":Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 304
    .local v7, "topBound":I
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 311
    .end local v3    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_1

    sub-int v2, v0, v5

    .line 312
    .local v2, "left":I
    :goto_1
    add-int v8, v2, v6

    invoke-virtual {p2, v2, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 313
    return-void

    .line 306
    .end local v1    # "bottomBound":I
    .end local v2    # "left":I
    .end local v7    # "topBound":I
    :cond_0
    move v7, p4

    .line 307
    .restart local v7    # "topBound":I
    add-int v1, p4, v4

    .restart local v1    # "bottomBound":I
    goto :goto_0

    :cond_1
    move v2, v5

    .line 311
    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    .line 428
    .local v4, "width":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 429
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 431
    .local v5, "x":I
    const/4 v2, 0x0

    .line 432
    .local v2, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v6, :cond_3

    .line 433
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_1

    .line 434
    const/4 v3, 0x0

    .line 451
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 452
    .local v1, "max":I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 454
    float-to-int v6, v2

    iget v7, p0, Landroid/widget/AbsSeekBar;->mMinVal:I

    if-lt v6, v7, :cond_0

    .line 455
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 456
    :cond_0
    return-void

    .line 435
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_1
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_2

    .line 436
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 438
    .end local v3    # "scale":F
    :cond_2
    sub-int v6, v0, v5

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 439
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 442
    .end local v3    # "scale":F
    :cond_3
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v6, :cond_4

    .line 443
    const/4 v3, 0x0

    .restart local v3    # "scale":F
    goto :goto_0

    .line 444
    .end local v3    # "scale":F
    :cond_4
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_5

    .line 445
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_0

    .line 447
    .end local v3    # "scale":F
    :cond_5
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 448
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v8, 0x0

    .line 252
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 254
    .local v5, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    move v6, v8

    .line 257
    .local v6, "thumbHeight":I
    :goto_0
    iget v9, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 259
    .local v7, "trackHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    .line 260
    .local v3, "max":I
    if-lez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 262
    .local v4, "scale":F
    :goto_1
    if-le v6, v7, :cond_4

    .line 263
    if-eqz v5, :cond_0

    .line 264
    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 266
    :cond_0
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 267
    .local v2, "gapForCenteringTrack":I
    if-eqz v0, :cond_1

    .line 269
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 284
    .end local v2    # "gapForCenteringTrack":I
    :cond_1
    :goto_2
    return-void

    .line 254
    .end local v3    # "max":I
    .end local v4    # "scale":F
    .end local v6    # "thumbHeight":I
    .end local v7    # "trackHeight":I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_0

    .line 260
    .restart local v3    # "max":I
    .restart local v6    # "thumbHeight":I
    .restart local v7    # "trackHeight":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 274
    .restart local v4    # "scale":F
    :cond_4
    if-eqz v0, :cond_5

    .line 276
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    :cond_5
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 280
    .local v1, "gap":I
    if-eqz v5, :cond_1

    .line 281
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 218
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 219
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 223
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 225
    .local v1, "state":[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 227
    .end local v1    # "state":[I
    :cond_1
    return-void

    .line 220
    :cond_2
    const/high16 v2, 0x437f0000    # 255.0f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 211
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 212
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 330
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 334
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 335
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_0
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 514
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 515
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 520
    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 522
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 524
    .local v0, "progress":I
    if-lez v0, :cond_0

    .line 525
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 527
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 528
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 531
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 491
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 493
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 508
    .end local v0    # "progress":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 495
    .restart local v0    # "progress":I
    :pswitch_0
    if-lez v0, :cond_0

    .line 496
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 497
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 501
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 502
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 503
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 493
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 342
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 345
    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    .line 346
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 347
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 348
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 349
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 350
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 352
    :cond_0
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 353
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 355
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    .line 344
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 342
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 232
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 233
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 240
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 242
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 322
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 325
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .param p1, "layoutDirection"    # I

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 568
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    .line 569
    .local v0, "max":I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 571
    .local v1, "scale":F
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 572
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 573
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-direct {p0, v3, v2, v1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 579
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 581
    :cond_0
    return-void

    .line 569
    .end local v1    # "scale":F
    .end local v2    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 249
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 473
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 481
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 423
    :cond_1
    :goto_0
    return v1

    .line 365
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 367
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    goto :goto_0

    .line 370
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 371
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 372
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 374
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 375
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 376
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 381
    :pswitch_1
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_5

    .line 382
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 384
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 385
    .local v0, "x":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 386
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 387
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 388
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 390
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 391
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 392
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 398
    .end local v0    # "x":F
    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_7

    .line 399
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 400
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 401
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 412
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_0

    .line 405
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 406
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 407
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    .line 416
    :pswitch_3
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_8

    .line 417
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 418
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 420
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 535
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 561
    :goto_0
    return v2

    .line 538
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 539
    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    .line 542
    .local v1, "progress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 543
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 561
    goto :goto_0

    .line 545
    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    .line 546
    goto :goto_0

    .line 548
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 549
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 553
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    .line 554
    goto :goto_0

    .line 556
    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)V

    .line 557
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 543
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 177
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 178
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 196
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v0, v1

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_1
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMinValue(I)V
    .locals 0
    .param p1, "min"    # I

    .prologue
    .line 585
    iput p1, p0, Landroid/widget/AbsSeekBar;->mMinVal:I

    .line 586
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 105
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    .line 106
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 107
    const/4 v0, 0x1

    .line 111
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 113
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 123
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 126
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 129
    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 131
    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 133
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 137
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 140
    .end local v1    # "state":[I
    :cond_3
    return-void

    .line 109
    .end local v0    # "needUpdate":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "needUpdate":Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    .prologue
    .line 166
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 167
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 168
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
