.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioStreamType:I

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mKindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mPriority:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mShowWhen:Z

.field private mSmallIcon:I

.field private mSmallIconLevel:I

.field private mSound:Landroid/net/Uri;

.field private mStyle:Landroid/app/Notification$Style;

.field private mSubText:Ljava/lang/CharSequence;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mUseChronometer:Z

.field private mVibrate:[J

.field private mWhen:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 1176
    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 1198
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 1201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 1202
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 1203
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 1204
    return-void
.end method

.method static synthetic access$102(Landroid/app/Notification$Builder;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I

    .prologue
    .line 1139
    iput p1, p0, Landroid/app/Notification$Builder;->mFlags:I

    return p1
.end method

.method static synthetic access$200(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I

    .prologue
    .line 1139
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 1139
    iget-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1139
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 1139
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 1139
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 18
    .param p1, "resId"    # I
    .param p2, "fitIn1U"    # Z

    .prologue
    .line 1632
    new-instance v1, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1633
    .local v1, "contentView":Landroid/widget/RemoteViews;
    const/4 v10, 0x0

    .line 1634
    .local v10, "showLine3":Z
    const/4 v9, 0x0

    .line 1635
    .local v9, "showLine2":Z
    const v11, 0x1020006

    .line 1636
    .local v11, "smallIconImageViewId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 1637
    const v2, 0x1020006

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1638
    const v11, 0x1020253

    .line 1640
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mPriority:I

    const/4 v3, -0x1

    if-ge v2, v3, :cond_1

    .line 1641
    const v2, 0x1020006

    const-string/jumbo v3, "setBackgroundResource"

    const v4, 0x1080773

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1650
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mSmallIcon:I

    if-eqz v2, :cond_6

    .line 1651
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mSmallIcon:I

    invoke-virtual {v1, v11, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1652
    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1656
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 1657
    const v2, 0x1020016

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1659
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 1660
    const v2, 0x1020048

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1661
    const/4 v10, 0x1

    .line 1663
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 1664
    const v2, 0x10202da

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1665
    const v2, 0x10202da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1666
    const/4 v10, 0x1

    .line 1684
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_b

    .line 1685
    const v2, 0x1020048

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    .line 1687
    const v2, 0x1020015

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1688
    const v2, 0x1020015

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1689
    const/4 v9, 0x1

    .line 1704
    :goto_2
    if-eqz v9, :cond_5

    .line 1705
    if-eqz p2, :cond_4

    .line 1707
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1708
    .local v8, "res":Landroid/content/res/Resources;
    const v2, 0x1050059

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v12, v2

    .line 1710
    .local v12, "subTextSize":F
    const v2, 0x1020048

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v12}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 1713
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v12    # "subTextSize":F
    :cond_4
    const v2, 0x10202d7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1716
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/app/Notification$Builder;->mWhen:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/app/Notification$Builder;->mShowWhen:Z

    if-eqz v2, :cond_f

    .line 1717
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    if-eqz v2, :cond_e

    .line 1718
    const v2, 0x10202d8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1719
    const v2, 0x10202d8

    const-string/jumbo v3, "setBase"

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    add-long/2addr v4, v14

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 1721
    const v2, 0x10202d8

    const-string/jumbo v3, "setStarted"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1730
    :goto_3
    const v3, 0x10202d9

    if-eqz v10, :cond_10

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1731
    const v3, 0x10202de

    if-eqz v10, :cond_11

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1732
    return-object v1

    .line 1654
    :cond_6
    const/16 v2, 0x8

    invoke-virtual {v1, v11, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 1667
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mNumber:I

    if-lez v2, :cond_9

    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 1670
    .local v13, "tooBig":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mNumber:I

    if-le v2, v13, :cond_8

    .line 1671
    const v2, 0x10202da

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1677
    :goto_6
    const v2, 0x10202da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1678
    const/4 v10, 0x1

    .line 1679
    goto/16 :goto_1

    .line 1674
    :cond_8
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v7

    .line 1675
    .local v7, "f":Ljava/text/NumberFormat;
    const v2, 0x10202da

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    int-to-long v3, v3

    invoke-virtual {v7, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_6

    .line 1680
    .end local v7    # "f":Ljava/text/NumberFormat;
    .end local v13    # "tooBig":I
    :cond_9
    const v2, 0x10202da

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 1691
    :cond_a
    const v2, 0x1020015

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 1694
    :cond_b
    const v2, 0x1020015

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1695
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v2, :cond_d

    .line 1696
    :cond_c
    const v2, 0x102000d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/Notification$Builder;->mProgress:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1698
    const v2, 0x102000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1699
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1701
    :cond_d
    const v2, 0x102000d

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 1723
    :cond_e
    const v2, 0x1020066

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1724
    const v2, 0x1020066

    const-string/jumbo v3, "setTime"

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_3

    .line 1727
    :cond_f
    const v2, 0x1020066

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_3

    .line 1730
    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_4

    .line 1731
    :cond_11
    const/16 v2, 0x8

    goto/16 :goto_5
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "layoutId"    # I

    .prologue
    const v6, 0x10202d3

    const/4 v5, 0x0

    .line 1736
    invoke-direct {p0, p1, v5}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1738
    .local v1, "big":Landroid/widget/RemoteViews;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1739
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 1741
    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1742
    const v4, 0x10202dc

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1743
    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    const/4 v0, 0x3

    .line 1744
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1745
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1746
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 1748
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1745
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1751
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method private generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const v1, 0x10202d2

    const/4 v3, 0x0

    .line 1783
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    const/4 v6, 0x1

    .line 1784
    .local v6, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_2

    const v2, 0x1090062

    :goto_1
    invoke-direct {v0, v4, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1787
    .local v0, "button":Landroid/widget/RemoteViews;
    iget v2, p1, Landroid/app/Notification$Action;->icon:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    .line 1788
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1789
    if-nez v6, :cond_0

    .line 1790
    iget-object v2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1792
    :cond_0
    iget-object v2, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1793
    return-object v0

    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v6    # "tombstone":Z
    :cond_1
    move v6, v3

    .line 1783
    goto :goto_0

    .line 1784
    .restart local v6    # "tombstone":Z
    :cond_2
    const v2, 0x1090060

    goto :goto_1
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 1777
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1779
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x1090065

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 1755
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 1758
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x1090064

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 1763
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 1764
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 1771
    :goto_0
    return-object v0

    .line 1766
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 1767
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const v0, 0x10900a5

    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x10900a6

    goto :goto_1

    .line 1771
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1624
    if-eqz p2, :cond_0

    .line 1625
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 1629
    :goto_0
    return-void

    .line 1627
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1604
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1850
    const-string v0, "android.title"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1851
    const-string v0, "android.text"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1852
    const-string v0, "android.subText"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1853
    const-string v0, "android.infoText"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1854
    const-string v0, "android.icon"

    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1855
    const-string v0, "android.progress"

    iget v1, p0, Landroid/app/Notification$Builder;->mProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1856
    const-string v0, "android.progressMax"

    iget v1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1857
    const-string v0, "android.progressIndeterminate"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1858
    const-string v0, "android.showChronometer"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1859
    const-string v0, "android.showWhen"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1860
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1861
    const-string v0, "android.largeIcon"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1863
    :cond_0
    return-void
.end method

.method public addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 1568
    iget-object v0, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 1878
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    move-result-object v0

    .line 1880
    .local v0, "n":Landroid/app/Notification;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_0

    .line 1881
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v0

    .line 1884
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 1886
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)V

    .line 1887
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1

    .line 1888
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 1891
    :cond_1
    return-object v0

    .line 1884
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 1900
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 1901
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 1801
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1802
    .local v0, "n":Landroid/app/Notification;
    iget-wide v1, p0, Landroid/app/Notification$Builder;->mWhen:J

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 1803
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 1804
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 1805
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 1806
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1807
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1808
    iget-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1809
    iget-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1810
    iget-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1811
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1812
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1813
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1814
    iget v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1815
    iget-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 1816
    iget v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 1817
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 1818
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 1819
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1820
    iget v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1821
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1822
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    if-eqz v1, :cond_1

    .line 1823
    :cond_0
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1825
    :cond_1
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1826
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1828
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1829
    iget-object v1, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    .line 1830
    iget-object v1, p0, Landroid/app/Notification$Builder;->mKindList:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1834
    :goto_0
    iget v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 1835
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1836
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 1837
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1840
    :cond_3
    return-object v0

    .line 1832
    :cond_4
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->kind:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1870
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 1532
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1533
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1344
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 1345
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 1322
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 1323
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1360
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 1361
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1291
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 1292
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1283
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 1284
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "defaults"    # I

    .prologue
    .line 1546
    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 1547
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1370
    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 1371
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "bag"    # Landroid/os/Bundle;

    .prologue
    .line 1582
    iput-object p1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 1583
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 1390
    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 1391
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1392
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1429
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 1430
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    .line 1487
    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 1488
    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 1489
    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 1490
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 1311
    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 1312
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 1510
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1511
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 1521
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 1522
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 1556
    iput p1, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 1557
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 1332
    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 1333
    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 1334
    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 1335
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1223
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 1224
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 1258
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 1259
    return-object p0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 1274
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 1275
    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 1276
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 1441
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 1442
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 1443
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 1454
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 1455
    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 1456
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "style"    # Landroid/app/Notification$Style;

    .prologue
    .line 1614
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_0

    .line 1615
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 1616
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 1620
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1301
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 1302
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1402
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 1403
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 1415
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 1416
    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 1417
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1239
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    .line 1240
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "pattern"    # [J

    .prologue
    .line 1470
    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 1471
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "when"    # J

    .prologue
    .line 1214
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 1215
    return-object p0
.end method
