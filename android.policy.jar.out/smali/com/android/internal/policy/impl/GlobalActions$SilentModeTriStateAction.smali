.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 854
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 855
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 856
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 857
    return-void

    .line 847
    :array_0
    .array-data 4
        0x102029b
        0x102029c
        0x102029d
        0x102035d
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 866
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 861
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x0

    .line 872
    const v5, 0x10900be

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 873
    .local v4, "v":Landroid/view/View;
    const/4 v3, 0x3

    .line 874
    .local v3, "selectedIndex":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "mtk_audioprofile_active"

    invoke-static {v5, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "activeProfileKey":Ljava/lang/String;
    const-string v5, "GlobalActions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SilentModeTriStateAction:create:activeProfileKey = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string v5, "mtk_audioprofile_general"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 877
    const/4 v3, 0x2

    .line 885
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v5, 0x4

    if-ge v1, v5, :cond_4

    .line 886
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 887
    .local v2, "itemView":Landroid/view/View;
    if-ne v3, v1, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 889
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 890
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 878
    .end local v1    # "i":I
    .end local v2    # "itemView":Landroid/view/View;
    :cond_0
    const-string v5, "mtk_audioprofile_silent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 879
    const/4 v3, 0x0

    goto :goto_0

    .line 880
    :cond_1
    const-string v5, "mtk_audioprofile_meeting"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 881
    const/4 v3, 0x1

    goto :goto_0

    .line 883
    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "itemView":Landroid/view/View;
    :cond_3
    move v5, v6

    .line 887
    goto :goto_2

    .line 893
    .end local v2    # "itemView":Landroid/view/View;
    :cond_4
    return-object v4
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 919
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 945
    :goto_0
    return-void

    .line 921
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 923
    .local v0, "index":I
    const-string v2, "mtk_audioprofile_outdoor"

    .line 924
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    const-string v4, "audioprofile"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wingtech/audioprofile/AudioProfileManager;

    .line 925
    .local v1, "mProfileManager":Lcom/wingtech/audioprofile/AudioProfileManager;
    packed-switch v0, :pswitch_data_0

    .line 936
    const-string v2, "mtk_audioprofile_outdoor"

    .line 939
    :goto_1
    if-eqz v1, :cond_1

    .line 940
    invoke-virtual {v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 944
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 927
    :pswitch_0
    const-string v2, "mtk_audioprofile_silent"

    .line 928
    goto :goto_1

    .line 930
    :pswitch_1
    const-string v2, "mtk_audioprofile_meeting"

    .line 931
    goto :goto_1

    .line 933
    :pswitch_2
    const-string v2, "mtk_audioprofile_general"

    .line 934
    goto :goto_1

    .line 925
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 897
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 908
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 904
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 916
    return-void
.end method
