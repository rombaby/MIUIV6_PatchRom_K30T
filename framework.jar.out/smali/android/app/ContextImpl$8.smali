.class final Landroid/app/ContextImpl$8;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, "audioProfileMgr":Lcom/wingtech/audioprofile/IAudioProfileManager;
    :try_start_0
    new-instance v1, Lcom/wingtech/audioprofile/AudioProfileManager;

    invoke-direct {v1, p1}, Lcom/wingtech/audioprofile/AudioProfileManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "audioProfileMgr":Lcom/wingtech/audioprofile/IAudioProfileManager;
    .local v1, "audioProfileMgr":Lcom/wingtech/audioprofile/IAudioProfileManager;
    move-object v0, v1

    .line 367
    .end local v1    # "audioProfileMgr":Lcom/wingtech/audioprofile/IAudioProfileManager;
    .restart local v0    # "audioProfileMgr":Lcom/wingtech/audioprofile/IAudioProfileManager;
    :goto_0
    return-object v0

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
