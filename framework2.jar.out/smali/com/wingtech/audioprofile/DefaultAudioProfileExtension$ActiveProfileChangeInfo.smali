.class public Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;
.super Ljava/lang/Object;
.source "DefaultAudioProfileExtension.java"

# interfaces
.implements Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wingtech/audioprofile/DefaultAudioProfileExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveProfileChangeInfo"
.end annotation


# instance fields
.field public mRingerModeToUpdate:I

.field public mShouldOverrideSystem:Z

.field public mShouldSetLastActiveKey:Z

.field public mShouldSyncToSystem:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldOverrideSystem:Z

    .line 29
    const/16 v0, -0x3e7

    iput v0, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mRingerModeToUpdate:I

    .line 30
    iput-boolean v1, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSetLastActiveKey:Z

    .line 31
    iput-boolean v1, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSyncToSystem:Z

    return-void
.end method


# virtual methods
.method public getRingerModeToUpdate()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mRingerModeToUpdate:I

    return v0
.end method

.method public setRingerModeToUpdate(I)V
    .locals 0
    .param p1, "ringerModeToUpdate"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mRingerModeToUpdate:I

    .line 35
    return-void
.end method

.method public setShouldOverrideSystem(Z)V
    .locals 0
    .param p1, "shouldOverrideSystem"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldOverrideSystem:Z

    .line 51
    return-void
.end method

.method public setShouldSetLastActiveKey(Z)V
    .locals 0
    .param p1, "shouldSetLastActiveKey"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSetLastActiveKey:Z

    .line 43
    return-void
.end method

.method public setShouldSyncToSystem(Z)V
    .locals 0
    .param p1, "shouldSyncToSystem"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSyncToSystem:Z

    .line 59
    return-void
.end method

.method public shouldOverrideSystem()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldOverrideSystem:Z

    return v0
.end method

.method public shouldSetLastActiveKey()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSetLastActiveKey:Z

    return v0
.end method

.method public shouldSyncToSystem()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension$ActiveProfileChangeInfo;->mShouldSyncToSystem:Z

    return v0
.end method
