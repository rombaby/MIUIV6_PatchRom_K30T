.class public Lcom/wingtech/audioprofile/AudioProfileListener;
.super Ljava/lang/Object;
.source "AudioProfileListener.java"


# static fields
.field public static final LISTEN_AUDIOPROFILE_CHANGEG:I = 0x1

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_RINGERMODE_CHANGED:I = 0x2

.field public static final LISTEN_RINGER_VOLUME_CHANGED:I = 0x4

.field public static final LISTEN_VIBRATE_SETTING_CHANGED:I = 0x8

.field private static final TAG:Ljava/lang/String; = "AudioProfileListener"


# instance fields
.field callback:Lcom/wingtech/audioprofile/IAudioProfileListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileListener$1;

    invoke-direct {v0, p0}, Lcom/wingtech/audioprofile/AudioProfileListener$1;-><init>(Lcom/wingtech/audioprofile/AudioProfileListener;)V

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileListener;->callback:Lcom/wingtech/audioprofile/IAudioProfileListener;

    .line 157
    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileListener$2;

    invoke-direct {v0, p0}, Lcom/wingtech/audioprofile/AudioProfileListener$2;-><init>(Lcom/wingtech/audioprofile/AudioProfileListener;)V

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/wingtech/audioprofile/IAudioProfileListener;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileListener;->callback:Lcom/wingtech/audioprofile/IAudioProfileListener;

    return-object v0
.end method

.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 105
    return-void
.end method

.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 0
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public onVibrateSettingChanged(II)V
    .locals 0
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 133
    return-void
.end method
