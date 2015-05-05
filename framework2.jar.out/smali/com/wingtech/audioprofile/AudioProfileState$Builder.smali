.class public Lcom/wingtech/audioprofile/AudioProfileState$Builder;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wingtech/audioprofile/AudioProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlarmVolume:I

.field private mDtmfToneEnabled:Z

.field private mHapticFeedbackEnabled:Z

.field private mLockScreenSoundEnabled:Z

.field private mNoficationUseRingVolume:Z

.field private mNotificationStream:Landroid/net/Uri;

.field private mNotificationVolume:I

.field private mPowerSoundEnabled:Z

.field private final mProfileKey:Ljava/lang/String;

.field private mRingerStream:Landroid/net/Uri;

.field private mRingerVolume:I

.field private mSIPCallStream:Landroid/net/Uri;

.field private mSMSStream:Landroid/net/Uri;

.field private mSimId:J

.field private mSoundEffectEnbled:Z

.field private mVibrationEnabled:Z

.field private mVideoCallStream:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 85
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 86
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    .line 87
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_SIP_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSIPCallStream:Landroid/net/Uri;

    .line 89
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_SMS_STREAM_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSMSStream:Landroid/net/Uri;

    .line 90
    iput v1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    .line 91
    iput v1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    .line 92
    iput v1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    .line 93
    iput-boolean v1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    .line 94
    iput-boolean v1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    .line 95
    iput-boolean v1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    .line 96
    iput-boolean v1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    .line 97
    iput-boolean v1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    .line 99
    iput-boolean v1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mPowerSoundEnabled:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    .line 101
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSimId:J

    .line 110
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mPowerSoundEnabled:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNoficationUseRingVolume:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSimId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSIPCallStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSMSStream:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    return v0
.end method

.method static synthetic access$800(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    return v0
.end method

.method static synthetic access$900(Lcom/wingtech/audioprofile/AudioProfileState$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 80
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    return v0
.end method


# virtual methods
.method public build()Lcom/wingtech/audioprofile/AudioProfileState;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wingtech/audioprofile/AudioProfileState;-><init>(Lcom/wingtech/audioprofile/AudioProfileState$Builder;Lcom/wingtech/audioprofile/AudioProfileState$1;)V

    return-object v0
.end method

.method public dtmfTone(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mDtmfToneEnabled:Z

    .line 184
    return-object p0
.end method

.method public hapticFeedback(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mHapticFeedbackEnabled:Z

    .line 220
    return-object p0
.end method

.method public lockScreenSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mLockScreenSoundEnabled:Z

    .line 208
    return-object p0
.end method

.method public powerSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mPowerSoundEnabled:Z

    .line 232
    return-object p0
.end method

.method public ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .locals 0
    .param p1, "voiceCallUri"    # Landroid/net/Uri;
    .param p2, "notificationUri"    # Landroid/net/Uri;
    .param p3, "videoCallUri"    # Landroid/net/Uri;
    .param p4, "smsUri"    # Landroid/net/Uri;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 127
    iput-object p2, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 128
    iput-object p3, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    .line 130
    iput-object p4, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSMSStream:Landroid/net/Uri;

    .line 131
    return-object p0
.end method

.method public ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .locals 0
    .param p1, "voiceCallUri"    # Landroid/net/Uri;
    .param p2, "notificationUri"    # Landroid/net/Uri;
    .param p3, "videoCallUri"    # Landroid/net/Uri;
    .param p4, "sipCallUri"    # Landroid/net/Uri;
    .param p5, "smsUri"    # Landroid/net/Uri;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mRingerStream:Landroid/net/Uri;

    .line 137
    iput-object p2, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNotificationStream:Landroid/net/Uri;

    .line 138
    iput-object p3, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mVideoCallStream:Landroid/net/Uri;

    .line 139
    iput-object p4, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSIPCallStream:Landroid/net/Uri;

    .line 141
    iput-object p5, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSMSStream:Landroid/net/Uri;

    .line 142
    return-object p0
.end method

.method public simId(J)Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .locals 0
    .param p1, "simId"    # J

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSimId:J

    .line 245
    return-object p0
.end method

.method public soundEffect(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mSoundEffectEnbled:Z

    .line 196
    return-object p0
.end method

.method public vibration(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mVibrationEnabled:Z

    .line 172
    return-object p0
.end method

.method public volume(III)Lcom/wingtech/audioprofile/AudioProfileState$Builder;
    .locals 0
    .param p1, "ringerVolume"    # I
    .param p2, "notificationVolume"    # I
    .param p3, "alarmVolume"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mRingerVolume:I

    .line 158
    iput p2, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mNotificationVolume:I

    .line 159
    iput p3, p0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->mAlarmVolume:I

    .line 160
    return-object p0
.end method
