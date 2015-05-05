.class public Lcom/wingtech/audioprofile/AudioProfileState;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wingtech/audioprofile/AudioProfileState$1;,
        Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    }
.end annotation


# instance fields
.field public mAlarmVolume:I

.field public mDtmfToneEnabled:Z

.field public mHapticFeedbackEnabled:Z

.field public mLockScreenSoundEnabled:Z

.field public mNoficationUseRingVolume:Z

.field public mNotificationStream:Landroid/net/Uri;

.field public mNotificationVolume:I

.field public mPowerSoundEnabled:Z

.field public mProfileKey:Ljava/lang/String;

.field public mRingerStream:Landroid/net/Uri;

.field public mRingerVolume:I

.field public mSIPCallStream:Landroid/net/Uri;

.field public mSMSStream:Landroid/net/Uri;

.field public mSimId:J

.field public mSoundEffectEnbled:Z

.field public mVibrationEnabled:Z

.field public mVideoCallStream:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method private constructor <init>(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$100(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mProfileKey:Ljava/lang/String;

    .line 267
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$200(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 268
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$300(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 269
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$400(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 270
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSIPCallStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$500(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 272
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSMSStream:Landroid/net/Uri;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$600(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    .line 274
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mRingerVolume:I
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$700(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 275
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$800(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 276
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$900(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 278
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$1000(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 279
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$1100(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 280
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$1200(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 281
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$1300(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 282
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$1400(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 284
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mPowerSoundEnabled:Z
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$1500(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    .line 285
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$1600(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mNoficationUseRingVolume:Z

    .line 286
    # getter for: Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSimId:J
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->access$1700(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mSimId:J

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lcom/wingtech/audioprofile/AudioProfileState$Builder;Lcom/wingtech/audioprofile/AudioProfileState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .param p2, "x1"    # Lcom/wingtech/audioprofile/AudioProfileState$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileState;-><init>(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "volume_ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v1, "volume_notification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    const-string v1, "volume_alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    const-string v1, "vibrate_on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    const-string v1, "dtmf_tone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    const-string v1, "sound_effects = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    const-string v1, "lockscreen_sounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    const-string v1, "haptic_feedback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    const-string v1, "power_ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    const-string v1, "ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    const-string v1, "notification_sound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    const-string v1, "video_call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    const-string v1, "sip_call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const-string v1, "sms = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v1, "sim id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/wingtech/audioprofile/AudioProfileState;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
