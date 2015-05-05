.class public interface abstract Lcom/wingtech/audioprofile/IAudioProfileExtension;
.super Ljava/lang/Object;
.source "IAudioProfileExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wingtech/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;,
        Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    }
.end annotation


# virtual methods
.method public abstract getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
.end method

.method public abstract init(Lcom/wingtech/audioprofile/IAudioProfileService;Landroid/content/Context;)V
.end method

.method public abstract onActiveProfileChange(ZLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onNotificationChange(Z)Z
.end method

.method public abstract onRingerModeChanged(I)Z
.end method

.method public abstract onRingerVolumeChanged(IILjava/lang/String;)Z
.end method

.method public abstract onRingtoneChange(Z)Z
.end method

.method public abstract persistStreamVolumeToSystem(I)Z
.end method

.method public abstract shouldCheckDefaultProfiles()Z
.end method

.method public abstract shouldSyncGeneralRingtoneToOutdoor()Z
.end method
