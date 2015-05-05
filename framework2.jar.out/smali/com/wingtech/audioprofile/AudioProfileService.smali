.class public Lcom/wingtech/audioprofile/AudioProfileService;
.super Lcom/wingtech/audioprofile/IAudioProfileService$Stub;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wingtech/audioprofile/AudioProfileService$11;,
        Lcom/wingtech/audioprofile/AudioProfileService$AudioProfileHandler;,
        Lcom/wingtech/audioprofile/AudioProfileService$OverrideSystemThread;,
        Lcom/wingtech/audioprofile/AudioProfileService$Record;
    }
.end annotation


# static fields
.field private static final BUNDLE_DEFAULT_SIZE:I = 0x4

.field private static final DEBUG:Z

.field private static final DEFAULT_NOTIFICATION_INDEX:I

.field private static final DEFAULT_RINGER_INDEX:I

.field private static final DEFAULT_RINGTONE_TYPE_CONUT:I = 0x5

.field private static final DEFAULT_SIPCALL_INDEX:I

.field private static final DEFAULT_SMS_INDEX:I

.field private static final DEFAULT_VIDEOCALL_INDEX:I

.field private static final DELAY_TIME_AVOID_CTS_FAIL:J = 0x4e20L

.field private static final IS_SUPPORT_OUTDOOR_EDITABLE:Z = false

.field private static final MSG_DELAY_SET_VIBRATE_AVOID_CTS_FAIL:I = 0x15

.field private static final MSG_PERSIST_ALARM_VOLUME_TO_DATABASE:I = 0xa

.field private static final MSG_PERSIST_DTMF_TONE_TO_DATABASE:I = 0xf

.field private static final MSG_PERSIST_DTMF_TONE_TO_SYSTEM:I = 0x4

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_DATABASE:I = 0x12

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_SYSTEM:I = 0x7

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_DATABASE:I = 0x11

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_SYSTEM:I = 0x6

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_DATABASE:I = 0xc

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_SYSTEM:I = 0x2

.field private static final MSG_PERSIST_NOTIFICATION_VOLUME_TO_DATABASE:I = 0x9

.field private static final MSG_PERSIST_POWER_SOUND_TO_DATABASE:I = 0x1a

.field private static final MSG_PERSIST_PROFILE_NAME_TO_DATABASE:I = 0x13

.field private static final MSG_PERSIST_RINGER_VOLUME_TO_DATABASE:I = 0x8

.field private static final MSG_PERSIST_SIPCALL_RINGTONE_TO_DATABASE:I = 0x17

.field private static final MSG_PERSIST_SIPCALL_RINGTONE_TO_SYSTEM:I = 0x16

.field private static final MSG_PERSIST_SMS_RINGTONE_TO_DATABASE:I = 0x19

.field private static final MSG_PERSIST_SMS_RINGTONE_TO_SYSTEM:I = 0x18

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_DATABASE:I = 0x10

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_SYSTEM:I = 0x5

.field private static final MSG_PERSIST_VALUES_TO_SYSTEM_BY_BATCH:I = 0x14

.field private static final MSG_PERSIST_VIBRATION_TO_DATABASE:I = 0xe

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_DATABASE:I = 0xd

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_SYSTEM:I = 0x3

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_DATABASE:I = 0xb

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_SYSTEM:I = 0x1

.field public static final SILENT_NOTIFICATION_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "AudioProfileService"


# instance fields
.field private mActiveProfileKey:Ljava/lang/String;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioProfileHandler:Landroid/os/Handler;

.field private final mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCustomProfileName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDTMFObserver:Landroid/database/ContentObserver;

.field private final mDefaultRingtone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDelaySetVibrate:Z

.field private mDeleteCount:I

.field private mDeleteCountName:Ljava/lang/String;

.field private mDeleteProfileName:Ljava/lang/String;

.field private mDeleteProfileTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

.field private mIsLastCustomActiveProfileDeleted:Z

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastActiveProfileKey:Ljava/lang/String;

.field private mLastVibrateType:I

.field private final mNotificationObserver:Landroid/database/ContentObserver;

.field private final mPredefinedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/wingtech/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wingtech/audioprofile/AudioProfileService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mResetFlag:Z

.field private mRingerMode:I

.field private final mRingerModeListener:Lcom/wingtech/audioprofile/AudioProfileListener;

.field private final mRingerVolumeListener:Lcom/wingtech/audioprofile/AudioProfileListener;

.field private final mRingtoneObserver:Landroid/database/ContentObserver;

.field private final mRingtoneObserver2:Landroid/database/ContentObserver;

.field private final mSMSObserver:Landroid/database/ContentObserver;

.field private mShouldGetDefaultRingtoneAfterScanFinish:Z

.field private mShouldOverrideSystem:Z

.field private final mShouldSyncToSystem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSimId:J

.field private mSingleSIM:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUpgradeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private final mVibrateSettingListener:Lcom/wingtech/audioprofile/AudioProfileListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEBUG:Z

    .line 101
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    .line 102
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    .line 103
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    .line 104
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->sipcall_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    .line 106
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->sms_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    .line 115
    const-string v0, "com.mediatek.uri.silent_notificaton"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x4

    const/16 v12, 0x8

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 868
    invoke-direct {p0}, Lcom/wingtech/audioprofile/IAudioProfileService$Stub;-><init>()V

    .line 127
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    .line 128
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    .line 130
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    .line 132
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    .line 134
    iput-boolean v10, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 136
    iput-boolean v10, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 139
    iput-boolean v10, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 141
    iput v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastVibrateType:I

    .line 142
    iput-boolean v10, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 146
    iput v10, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mUserId:I

    .line 148
    const-string v7, "audio_delete_items"

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteProfileName:Ljava/lang/String;

    .line 150
    const-string v7, "audio_delete_items_count"

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteCountName:Ljava/lang/String;

    .line 152
    iput v10, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteCount:I

    .line 155
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteProfileTmp:Ljava/util/ArrayList;

    .line 161
    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 167
    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x6

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    .line 174
    iput-boolean v11, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 176
    iput v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I

    .line 183
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    .line 185
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J

    .line 186
    iput v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    .line 193
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileService$1;

    invoke-direct {v7, p0}, Lcom/wingtech/audioprofile/AudioProfileService$1;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/wingtech/audioprofile/AudioProfileListener;

    .line 256
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileService$2;

    invoke-direct {v7, p0}, Lcom/wingtech/audioprofile/AudioProfileService$2;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerVolumeListener:Lcom/wingtech/audioprofile/AudioProfileListener;

    .line 341
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileService$3;

    invoke-direct {v7, p0}, Lcom/wingtech/audioprofile/AudioProfileService$3;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mVibrateSettingListener:Lcom/wingtech/audioprofile/AudioProfileListener;

    .line 358
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileService$4;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/wingtech/audioprofile/AudioProfileService$4;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 365
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileService$5;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/wingtech/audioprofile/AudioProfileService$5;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingtoneObserver2:Landroid/database/ContentObserver;

    .line 423
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileService$6;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/wingtech/audioprofile/AudioProfileService$6;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 483
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileService$7;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/wingtech/audioprofile/AudioProfileService$7;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSMSObserver:Landroid/database/ContentObserver;

    .line 547
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileService$8;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/wingtech/audioprofile/AudioProfileService$8;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDTMFObserver:Landroid/database/ContentObserver;

    .line 565
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileService$9;

    invoke-direct {v7, p0}, Lcom/wingtech/audioprofile/AudioProfileService$9;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    .line 685
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileService$10;

    invoke-direct {v7, p0}, Lcom/wingtech/audioprofile/AudioProfileService$10;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;)V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 869
    const-string v7, "Initial AudioProfileService start"

    invoke-direct {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    .line 870
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 871
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 872
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    .line 873
    const-string v7, "storage"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 876
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->readDefaultRingtones()V

    .line 879
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->readPredefinedProfileKeys()V

    .line 880
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->readAllProfileKeys()V

    .line 884
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "mtk_audioprofile_active"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "activeProfileKey":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v8, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_0
    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 887
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "mtk_audioprofile_active"

    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 889
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "mtk_audioprofile_last_active"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 890
    .local v4, "lastActiveProfileKey":Ljava/lang/String;
    if-nez v4, :cond_1

    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v8, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_1
    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 892
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "mtk_audioprofile_custom_deleted"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 895
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->createOverrideSystemThread()V

    .line 898
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 899
    .local v5, "profileKey":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    goto :goto_2

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "lastActiveProfileKey":Ljava/lang/String;
    .end local v5    # "profileKey":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    .line 885
    goto :goto_0

    .restart local v4    # "lastActiveProfileKey":Ljava/lang/String;
    :cond_1
    move-object v7, v4

    .line 890
    goto :goto_1

    .line 903
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    iput v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I

    .line 904
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/wingtech/audioprofile/AudioProfileListener;

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/wingtech/audioprofile/AudioProfileListener;I)V

    .line 905
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerVolumeListener:Lcom/wingtech/audioprofile/AudioProfileListener;

    invoke-virtual {v7, v8, v13}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/wingtech/audioprofile/AudioProfileListener;I)V

    .line 907
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mVibrateSettingListener:Lcom/wingtech/audioprofile/AudioProfileListener;

    invoke-virtual {v7, v8, v12}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/wingtech/audioprofile/AudioProfileListener;I)V

    .line 911
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "ringtone"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 914
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "ringtone_2"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingtoneObserver2:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 916
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "notification_sound"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 919
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "sms_notification"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSMSObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 923
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "dtmf_tone"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDTMFObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v10, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 930
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->readShouldSyncToSystem()V

    .line 935
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v8, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 938
    .local v2, "defRingUri":Landroid/net/Uri;
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 939
    .local v6, "scanerFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 940
    const-string v7, "file"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 941
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 944
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 945
    .local v1, "bootFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 946
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 948
    if-nez v2, :cond_5

    .line 949
    iput-boolean v11, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 964
    :cond_3
    :goto_3
    new-instance v7, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension;

    invoke-direct {v7}, Lcom/wingtech/audioprofile/DefaultAudioProfileExtension;-><init>()V

    iput-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    .line 966
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-interface {v7, p0, v8}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->init(Lcom/wingtech/audioprofile/IAudioProfileService;Landroid/content/Context;)V

    .line 968
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    invoke-interface {v7}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->shouldCheckDefaultProfiles()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 970
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->checkDefaultProfiles()V

    .line 972
    :cond_4
    const-string v7, "Initial AudioProfileService end"

    invoke-direct {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    .line 973
    return-void

    .line 950
    :cond_5
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_6

    .line 952
    invoke-direct {p0, v11}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 953
    :cond_6
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v12}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_7

    .line 954
    invoke-direct {p0, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 955
    :cond_7
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x10

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_8

    .line 956
    const/16 v7, 0x10

    invoke-direct {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 958
    :cond_8
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x20

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_3

    .line 959
    const/16 v7, 0x20

    invoke-direct {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/wingtech/audioprofile/AudioProfileService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/wingtech/audioprofile/AudioProfileService;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->onChangeEx(ZJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/wingtech/audioprofile/AudioProfileService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/wingtech/audioprofile/AudioProfileService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/wingtech/audioprofile/AudioProfileService;)V
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->readDefaultRingtones()V

    return-void
.end method

.method static synthetic access$1500(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    return v0
.end method

.method static synthetic access$1700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    return v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    return v0
.end method

.method static synthetic access$200(Lcom/wingtech/audioprofile/AudioProfileService;)I
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    return v0
.end method

.method static synthetic access$202(Lcom/wingtech/audioprofile/AudioProfileService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I

    return p1
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    return v0
.end method

.method static synthetic access$2200(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/wingtech/audioprofile/AudioProfileService;)J
    .locals 2
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/wingtech/audioprofile/AudioProfileService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/wingtech/audioprofile/AudioProfileService;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(IJ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/wingtech/audioprofile/AudioProfileService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/wingtech/audioprofile/AudioProfileService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistValues(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/wingtech/audioprofile/AudioProfileService;)Lcom/wingtech/audioprofile/IAudioProfileExtension;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/wingtech/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/wingtech/audioprofile/AudioProfileService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/wingtech/audioprofile/AudioProfileService;)I
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    return v0
.end method

.method static synthetic access$3400(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wingtech/audioprofile/AudioProfileService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/wingtech/audioprofile/AudioProfileService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/wingtech/audioprofile/AudioProfileService;)I
    .locals 1
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;

    .prologue
    .line 62
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastVibrateType:I

    return v0
.end method

.method static synthetic access$902(Lcom/wingtech/audioprofile/AudioProfileService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastVibrateType:I

    return p1
.end method

.method private checkDefaultProfiles()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3567
    const-string v4, "checkDefaultProfiles>>>"

    invoke-direct {p0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3570
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;Z)V

    .line 3571
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;Z)V

    .line 3574
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    invoke-interface {v4}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3577
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;Z)V

    .line 3578
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v6, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wingtech/audioprofile/AudioProfileState;

    .line 3579
    .local v0, "generalState":Lcom/wingtech/audioprofile/AudioProfileState;
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v6, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wingtech/audioprofile/AudioProfileState;

    .line 3581
    .local v2, "outdoorState":Lcom/wingtech/audioprofile/AudioProfileState;
    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 3582
    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 3583
    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 3584
    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 3586
    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    iput-object v4, v2, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    .line 3590
    .end local v0    # "generalState":Lcom/wingtech/audioprofile/AudioProfileState;
    .end local v2    # "outdoorState":Lcom/wingtech/audioprofile/AudioProfileState;
    :cond_0
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3591
    .local v3, "profileKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wingtech/audioprofile/AudioProfileState;

    iget-object v5, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wingtech/audioprofile/AudioProfileState;

    iget v5, v5, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v5, v4, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    goto :goto_0

    .line 3593
    .end local v3    # "profileKey":Ljava/lang/String;
    :cond_1
    const-string v4, "checkDefaultProfiles<<<"

    invoke-direct {p0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3594
    return-void
.end method

.method private createOverrideSystemThread()V
    .locals 4

    .prologue
    .line 3814
    new-instance v1, Lcom/wingtech/audioprofile/AudioProfileService$OverrideSystemThread;

    invoke-direct {v1, p0}, Lcom/wingtech/audioprofile/AudioProfileService$OverrideSystemThread;-><init>(Lcom/wingtech/audioprofile/AudioProfileService;)V

    .line 3815
    .local v1, "overrideSystemThread":Lcom/wingtech/audioprofile/AudioProfileService$OverrideSystemThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3817
    monitor-enter p0

    .line 3818
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3821
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3822
    :catch_0
    move-exception v0

    .line 3823
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "AudioProfileService"

    const-string v3, "Interrupted while waiting on AudioProfileHandler."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3826
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3828
    return-void
.end method

.method private deleteCacheProfiles()V
    .locals 10

    .prologue
    .line 1529
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteProfileTmp:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 1530
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteProfileTmp:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 1529
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1533
    :cond_0
    const/4 v0, 0x0

    .line 1535
    .local v0, "delCount":I
    :try_start_0
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteCountName:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1540
    :goto_1
    if-lez v0, :cond_2

    .line 1541
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_1

    .line 1542
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteProfileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1544
    .local v5, "tmpProfileKey":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 1541
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1536
    .end local v5    # "tmpProfileKey":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1537
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    goto :goto_1

    .line 1547
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1548
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v7, "name"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    const-string v7, " like \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteProfileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1552
    .local v6, "where":Ljava/lang/String;
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1553
    .local v1, "deleted":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete profiles cache : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " deleted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1556
    .end local v1    # "deleted":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "where":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simid"    # J
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2353
    invoke-direct/range {p0 .. p5}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2356
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    .line 2357
    .local v1, "state":Lcom/wingtech/audioprofile/AudioProfileState;
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v6

    move-object v0, p0

    move v2, p2

    move-object v3, p5

    move-wide v4, p3

    .line 2358
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->setRingtoneUriInStateMap(Lcom/wingtech/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V

    .line 2359
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2362
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2363
    invoke-direct {p0, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 2365
    :cond_0
    return-void

    .line 2359
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doRingtoneUriSetting(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2348
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2349
    return-void
.end method

.method private genCustomKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1465
    const/4 v2, 0x6

    .line 1466
    .local v2, "maxCustom":I
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 1467
    .local v3, "rand":Ljava/util/Random;
    const/4 v1, 0x0

    .line 1469
    .local v1, "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int v0, v4, v2

    .line 1470
    .local v0, "customNo":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mtk_audioprofile_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1474
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "genCustomKey: newKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    .line 1476
    return-object v1
.end method

.method private getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 4012
    if-nez p1, :cond_0

    .line 4034
    :goto_0
    return-object v3

    .line 4016
    :cond_0
    const/4 v7, 0x0

    .line 4017
    .local v7, "data":Ljava/lang/String;
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4024
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4025
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 4028
    :cond_1
    if-eqz v6, :cond_2

    .line 4029
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4030
    const/4 v6, 0x0

    .line 4033
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExternalUriData for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    move-object v3, v7

    .line 4034
    goto :goto_0

    .line 4028
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 4029
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4030
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 3663
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3664
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3665
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3667
    .end local v0    # "value":Ljava/lang/String;
    .end local p3    # "defaultValue":I
    :cond_0
    :goto_0
    return p3

    .line 3665
    .restart local v0    # "value":Ljava/lang/String;
    .restart local p3    # "defaultValue":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 3644
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3645
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3646
    .local v0, "uriString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3648
    .end local v0    # "uriString":Ljava/lang/String;
    .end local p3    # "defaultUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p3

    .line 3646
    .restart local v0    # "uriString":Ljava/lang/String;
    .restart local p3    # "defaultUri":Landroid/net/Uri;
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 3682
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 3683
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3684
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3686
    .end local v0    # "value":Ljava/lang/String;
    .end local p3    # "defaultValue":Z
    :cond_0
    :goto_0
    return p3

    .line 3684
    .restart local v0    # "value":Ljava/lang/String;
    .restart local p3    # "defaultValue":Z
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0
.end method

.method private getStreamValidVolume(II)I
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 1954
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getStreamMaxVolume(I)I

    move-result v0

    .line 1955
    .local v0, "max":I
    move v1, p2

    .line 1956
    .local v1, "validVolume":I
    if-gez p2, :cond_1

    .line 1957
    const/4 v1, 0x0

    .line 1961
    :cond_0
    :goto_0
    return v1

    .line 1958
    :cond_1
    if-le p2, v0, :cond_0

    .line 1959
    move v1, v0

    goto :goto_0
.end method

.method private isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 2412
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRingtoneUriChanged(Lcom/wingtech/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z
    .locals 1
    .param p1, "profileState"    # Lcom/wingtech/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2273
    sparse-switch p2, :sswitch_data_0

    .line 2292
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2275
    :sswitch_0
    iget-object v0, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2278
    :sswitch_1
    iget-object v0, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2281
    :sswitch_2
    iget-object v0, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2284
    :sswitch_3
    iget-object v0, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2288
    :sswitch_4
    iget-object v0, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2273
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private isValidRingtoneType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 2266
    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    if-eq v1, p1, :cond_0

    const/16 v1, 0x20

    if-eq v1, p1, :cond_0

    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    const/16 v1, 0x10

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4046
    sget-boolean v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4047
    const-string v0, "AudioProfileService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    :cond_0
    return-void
.end method

.method private logV(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 4040
    sget-boolean v0, Lcom/wingtech/audioprofile/AudioProfileService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4041
    const-string v0, "AudioProfileService"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    :cond_0
    return-void
.end method

.method private notifyAudioProfileChanged()V
    .locals 7

    .prologue
    .line 1206
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1207
    const-string v3, "AudioProfileService"

    const-string v4, "notifyAudioProfileChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :goto_0
    return-void

    .line 1211
    :cond_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1212
    const-string v3, "AudioProfileService"

    const-string v4, "notifyAudioProfileChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1216
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyAudioProfileChanged: New profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clients = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1217
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1218
    :try_start_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1219
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wingtech/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wingtech/audioprofile/AudioProfileService$Record;

    .line 1221
    .local v2, "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1223
    :try_start_1
    iget-object v3, v2, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mCallback:Lcom/wingtech/audioprofile/IAudioProfileListener;

    iget-object v5, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/wingtech/audioprofile/IAudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1226
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1232
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wingtech/audioprofile/AudioProfileService$Record;>;"
    .end local v2    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wingtech/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private onChangeEx(ZJ)V
    .locals 11
    .param p1, "selfChange"    # Z
    .param p2, "simId"    # J

    .prologue
    .line 373
    iget-object v10, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v10

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    invoke-interface {v0, p1}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->onRingtoneChange(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    monitor-exit v10

    .line 417
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-boolean v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mResetFlag:Z

    if-eqz v0, :cond_1

    .line 378
    monitor-exit v10

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 380
    :cond_1
    :try_start_1
    const-string v8, "ringtone"

    .line 381
    .local v8, "ringtoneKey":Ljava/lang/String;
    const-wide/16 v2, 0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_2

    .line 382
    const-string v8, "ringtone_2"

    .line 384
    :cond_2
    const/4 v1, 0x0

    .line 385
    .local v1, "profileKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 386
    .local v9, "uriString":Ljava/lang/String;
    if-nez v9, :cond_3

    const/4 v5, 0x0

    .line 387
    .local v5, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v6

    .line 388
    .local v6, "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    const/4 v7, 0x0

    .line 389
    .local v7, "generalOutdoor":Z
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileService$11;->$SwitchMap$com$wingtech$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 408
    :goto_2
    if-eqz v7, :cond_5

    .line 409
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "profileKey":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 411
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 416
    :goto_3
    monitor-exit v10

    goto :goto_0

    .line 386
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .end local v7    # "generalOutdoor":Z
    .restart local v1    # "profileKey":Ljava/lang/String;
    :cond_3
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    .line 392
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .restart local v7    # "generalOutdoor":Z
    :pswitch_0
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    invoke-interface {v0}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    const/4 v7, 0x1

    goto :goto_2

    .line 395
    :cond_4
    invoke-virtual {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    .line 397
    goto :goto_2

    .line 399
    :pswitch_1
    invoke-virtual {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    .line 400
    goto :goto_2

    .line 403
    :pswitch_2
    invoke-virtual {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->getLastActiveProfileKey()Ljava/lang/String;

    move-result-object v1

    .line 404
    goto :goto_2

    .line 414
    :cond_5
    const/4 v2, 0x1

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private persistDtmfToneToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2860
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2861
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2862
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2864
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2865
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2866
    return-void
.end method

.method private persistDtmfToneToSystem()V
    .locals 6

    .prologue
    .line 3121
    const-string v2, "dtmf_tone"

    .line 3122
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3123
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3124
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3125
    return-void

    .line 3122
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2914
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2915
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2916
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x12

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2918
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2919
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2920
    return-void
.end method

.method private persistHapticFeedbackToSystem()V
    .locals 6

    .prologue
    .line 3151
    const-string v2, "haptic_feedback_enabled"

    .line 3152
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3153
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3154
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3155
    return-void

    .line 3152
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistLockScreenToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2896
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2897
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2898
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2900
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2901
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2902
    return-void
.end method

.method private persistLockScreenToSystem()V
    .locals 6

    .prologue
    .line 3141
    const-string v2, "lockscreen_sounds_enabled"

    .line 3142
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3143
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3144
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3145
    return-void

    .line 3142
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistPowerSoundToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2931
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2932
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getPowerSoundKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2933
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2936
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2937
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2938
    return-void
.end method

.method private persistPowerSoundToSystem()V
    .locals 3

    .prologue
    .line 3163
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    .line 3164
    .local v0, "enabled":Z
    if-eqz v0, :cond_0

    .line 3165
    const-string v1, "persist.sys.power_sound"

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistPowerSoundToSystem  set power_sound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v1, "on"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3170
    return-void

    .line 3167
    :cond_0
    const-string v1, "persist.sys.power_sound"

    const-string v2, "off"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3169
    :cond_1
    const-string v1, "off"

    goto :goto_1
.end method

.method private persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 2950
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2951
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2952
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x13

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2954
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2955
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2956
    return-void
.end method

.method private persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, -0x1

    .line 2755
    const/4 v2, 0x0

    .line 2756
    .local v2, "name":Ljava/lang/String;
    iget v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v3, v3

    cmp-long v3, p3, v3

    if-nez v3, :cond_0

    .line 2757
    invoke-static {p1, p2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2762
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2763
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p5, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    sparse-switch p2, :sswitch_data_0

    .line 2788
    const-string v3, "AudioProfileService"

    const-string v4, "persistRingtoneUriToDatabase with undefined stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :goto_2
    return-void

    .line 2759
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2763
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2766
    :sswitch_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2791
    .local v1, "msg":Landroid/os/Message;
    :goto_3
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2792
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 2770
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_1
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2771
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_3

    .line 2774
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_2
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2775
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_3

    .line 2778
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_3
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2779
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_3

    .line 2783
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_4
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x19

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2784
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_3

    .line 2764
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private persistRingtoneUriToSystem(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2974
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(IJ)V

    .line 2975
    return-void
.end method

.method private persistRingtoneUriToSystem(IJ)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "simId"    # J

    .prologue
    const/4 v6, -0x1

    .line 2979
    new-instance v0, Landroid/os/Bundle;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2980
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 2981
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2983
    .local v3, "uri":Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 3021
    const-string v4, "AudioProfileService"

    const-string v5, "persistRingtoneUriToSystem with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    :goto_0
    return-void

    .line 2985
    :sswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2986
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 2987
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3025
    .local v1, "msg":Landroid/os/Message;
    :goto_1
    const-string v4, "simid"

    iget-wide v5, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J

    long-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3026
    if-nez v3, :cond_1

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3027
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3028
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2991
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2992
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 2994
    sget-object v4, Lcom/wingtech/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2995
    const/4 v3, 0x0

    .line 2997
    :cond_0
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2998
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 3001
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3002
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 3003
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3004
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 3007
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3008
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 3009
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0x16

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3010
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 3014
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3015
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v4

    iget-object v3, v4, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    .line 3016
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3017
    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 3026
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2983
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private persistSoundEffectToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2878
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2879
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2880
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2882
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2883
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2884
    return-void
.end method

.method private persistSoundEffectToSystem()V
    .locals 6

    .prologue
    .line 3131
    const-string v2, "sound_effects_enabled"

    .line 3132
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3133
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3134
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3135
    return-void

    .line 3132
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistStreamVolumeToDatabase(Ljava/lang/String;II)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v4, -0x1

    .line 2810
    invoke-static {p1, p2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2811
    .local v1, "name":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2825
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "persistStreamVolumeToDatabase with undefined stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :goto_0
    return-void

    .line 2813
    :pswitch_1
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2828
    .local v0, "msg":Landroid/os/Message;
    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2817
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2818
    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 2821
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2822
    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 2811
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistStreamVolumeToSystem(I)V
    .locals 6
    .param p1, "streamType"    # I

    .prologue
    .line 3041
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    invoke-interface {v4, p1}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->persistStreamVolumeToSystem(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3071
    :goto_0
    return-void

    .line 3045
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3048
    .local v1, "ident":J
    const/4 v0, 0x0

    .line 3049
    .local v0, "flags":I
    const/4 v3, 0x0

    .line 3050
    .local v3, "volume":I
    packed-switch p1, :pswitch_data_0

    .line 3064
    :pswitch_0
    :try_start_0
    const-string v4, "AudioProfileService"

    const-string v5, "persistStreamVolumeToSystem with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3069
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3052
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v4

    iget v3, v4, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3053
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3067
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persistStreamVolumeToSystem: streamType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", volume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3069
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3056
    :pswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v4

    iget v3, v4, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3057
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3069
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3060
    :pswitch_3
    :try_start_3
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v4

    iget v3, v4, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 3061
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3050
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistValues(Z)V
    .locals 5
    .param p1, "overrideSystem"    # Z

    .prologue
    const/4 v4, 0x2

    .line 1594
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wingtech/audioprofile/AudioProfileState;

    .line 1595
    .local v0, "activeProfileState":Lcom/wingtech/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1596
    const-string v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistValues error with no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :goto_0
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 1604
    if-eqz p1, :cond_0

    .line 1605
    invoke-direct {p0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1606
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1607
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1608
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1609
    invoke-direct {p0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1610
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1611
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1613
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1616
    :cond_0
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 1617
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 1618
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 1619
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 1621
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistPowerSoundToSystem()V

    .line 1622
    return-void

    .line 1598
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistValues: override = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wingtech/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private persistValuesToSystemByBatch(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3180
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3181
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3182
    return-void
.end method

.method private persistVibrationToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2841
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2842
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2843
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2844
    const-string v3, "Vibration"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2846
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2847
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2848
    return-void
.end method

.method private persistVibrationToSystem()V
    .locals 10

    .prologue
    const/16 v9, 0x15

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 3078
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    .line 3079
    .local v3, "vibratinRinger":I
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 3080
    .local v2, "vibratinNotification":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "persistVibrationToSystem current vibrate status: ringer = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", notification = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3083
    if-eq v3, v2, :cond_0

    .line 3084
    const-string v6, "persistVibrationToSystem different vibrate settings, so CTS test running, delay 10 sec to set vibration!"

    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3086
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3087
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x4e20

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3088
    iput-boolean v5, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 3115
    :goto_0
    return-void

    .line 3091
    :cond_0
    iget-boolean v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    if-eqz v6, :cond_1

    .line 3092
    const-string v5, "persistVibrationToSystem: CTS test running,delay 20 sec to set vibration!"

    invoke-direct {p0, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 3098
    :cond_1
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v6, :cond_2

    move v4, v5

    .line 3101
    .local v4, "vibrationStatus":I
    :goto_1
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileService;->clearCallingIdentity()J

    move-result-wide v0

    .line 3104
    .local v0, "identityToken":J
    :try_start_0
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "vibrate_when_ringing"

    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v6, :cond_3

    move v6, v5

    :goto_2
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3109
    invoke-static {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->restoreCallingIdentity(J)V

    .line 3112
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v7, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3113
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persistVibrationToSystem set ringer and notification vibrate to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 3098
    .end local v0    # "identityToken":J
    .end local v4    # "vibrationStatus":I
    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    .restart local v0    # "identityToken":J
    .restart local v4    # "vibrationStatus":I
    :cond_3
    move v6, v7

    .line 3104
    goto :goto_2

    .line 3109
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private readAllProfileKeys()V
    .locals 15

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3277
    const-string v11, "name"

    .line 3278
    .local v11, "nameColumn":Ljava/lang/String;
    const-string v13, "value"

    .line 3280
    .local v13, "valueColumn":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object v13, v2, v0

    .line 3282
    .local v2, "projection":[Ljava/lang/String;
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v8

    .line 3283
    .local v8, "customPrefix":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 3284
    .local v12, "selection":Ljava/lang/StringBuffer;
    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " like \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readProfileKeys: selection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3289
    const-string v5, "_id asc"

    .line 3290
    .local v5, "sortOrder":Ljava/lang/String;
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3293
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 3294
    const-string v0, "AudioProfileService"

    const-string v1, "getProfileKeys: Null custom cursor!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    :goto_0
    return-void

    .line 3297
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 3298
    .local v6, "count":I
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 3300
    .local v14, "valueIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3301
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 3302
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3303
    .local v10, "key":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3304
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3308
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 3301
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 3306
    :cond_1
    const-string v0, "AudioProfileService"

    const-string v1, "readProfileKeys: Null custom key!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3310
    .end local v10    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3311
    const-string v0, "readProfileKeys: finised"

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readDefaultRingtones()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3455
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    .line 3457
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v4, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3461
    .end local v0    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_ringtone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3462
    .local v2, "uriString":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v1, v3

    .line 3463
    .local v1, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3466
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_notification"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3467
    if-nez v2, :cond_2

    move-object v1, v3

    .line 3468
    :goto_2
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3471
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_video_call"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3472
    if-nez v2, :cond_3

    move-object v1, v3

    .line 3473
    :goto_3
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3476
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_sip_call"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3477
    if-nez v2, :cond_4

    move-object v1, v3

    .line 3478
    :goto_4
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v4, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3482
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mtk_audioprofile_default_sms"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3483
    if-nez v2, :cond_5

    move-object v1, v3

    .line 3484
    :goto_5
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDefaultRingtones: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3488
    return-void

    .line 3462
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 3467
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 3472
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3

    .line 3477
    :cond_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4

    .line 3483
    :cond_5
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5
.end method

.method private readNewProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 2122
    const-string v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfileState of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null, so create new one instead!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    invoke-direct {p0, p1, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;J)V

    .line 2124
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wingtech/audioprofile/AudioProfileState;

    return-object v0
.end method

.method private readPersistedSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 3447
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;J)V

    .line 3448
    return-void
.end method

.method private readPersistedSettings(Ljava/lang/String;J)V
    .locals 31
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 3332
    if-nez p1, :cond_0

    .line 3333
    const-string v3, "AudioProfileService"

    const-string v4, "readPersistedSettings with Null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    :goto_0
    return-void

    .line 3337
    :cond_0
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "value"

    aput-object v4, v5, v3

    .line 3338
    .local v5, "projection":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name like \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3339
    .local v6, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3340
    .local v14, "cursor":Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 3341
    .local v18, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3342
    const-string v3, "name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 3343
    .local v21, "nameIndex":I
    const-string v3, "value"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 3345
    .local v29, "valueIndex":I
    :cond_1
    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3346
    .local v20, "name":Ljava/lang/String;
    move/from16 v0, v29

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 3347
    .local v28, "value":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3348
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3353
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "nameIndex":I
    .end local v28    # "value":Ljava/lang/String;
    .end local v29    # "valueIndex":I
    :goto_1
    if-eqz v14, :cond_2

    .line 3354
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3357
    :cond_2
    const/16 v20, 0x0

    .line 3358
    .restart local v20    # "name":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v15

    .line 3361
    .local v15, "defaultState":Lcom/wingtech/audioprofile/AudioProfileState;
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v3, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v20

    .line 3363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 3366
    .local v8, "voiceCallUri":Landroid/net/Uri;
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 3367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 3370
    .local v9, "notificationUri":Landroid/net/Uri;
    const/16 v3, 0x8

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v3, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v20

    .line 3371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 3374
    .local v10, "videoCallUri":Landroid/net/Uri;
    const/16 v3, 0x10

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v3, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v20

    .line 3375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    .line 3379
    .local v11, "sipCallUri":Landroid/net/Uri;
    const/16 v3, 0x20

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v3, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v20

    .line 3380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    .line 3385
    .local v12, "smsUri":Landroid/net/Uri;
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 3386
    iget v3, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v26

    .line 3388
    .local v26, "ringerVolume":I
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 3389
    iget v3, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v22

    .line 3391
    .local v22, "notificationVolume":I
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 3392
    iget v3, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v13

    .line 3396
    .local v13, "alarmVolume":I
    invoke-static/range {p1 .. p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3397
    iget-boolean v3, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v30

    .line 3399
    .local v30, "vibration":Z
    invoke-static/range {p1 .. p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3400
    iget-boolean v3, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v16

    .line 3402
    .local v16, "dtmfTone":Z
    invoke-static/range {p1 .. p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3403
    iget-boolean v3, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v27

    .line 3405
    .local v27, "soundEffect":Z
    invoke-static/range {p1 .. p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3406
    iget-boolean v3, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v19

    .line 3408
    .local v19, "lockScreensound":Z
    invoke-static/range {p1 .. p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3409
    iget-boolean v3, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v17

    .line 3411
    .local v17, "hapticFeedback":Z
    invoke-static/range {p1 .. p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getPowerSoundKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3412
    iget-boolean v3, v15, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v24

    .line 3417
    .local v24, "powerRingtoneEnabled":Z
    new-instance v7, Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v7 .. v12}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1, v13}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->powerSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->simId(J)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->build()Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v23

    .line 3430
    .local v23, "persistedState":Lcom/wingtech/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3432
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {p1 .. p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3433
    invoke-static/range {p1 .. p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3434
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 3435
    .local v25, "profileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3438
    .end local v25    # "profileName":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readPersistedSettings with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/wingtech/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3350
    .end local v8    # "voiceCallUri":Landroid/net/Uri;
    .end local v9    # "notificationUri":Landroid/net/Uri;
    .end local v10    # "videoCallUri":Landroid/net/Uri;
    .end local v11    # "sipCallUri":Landroid/net/Uri;
    .end local v12    # "smsUri":Landroid/net/Uri;
    .end local v13    # "alarmVolume":I
    .end local v15    # "defaultState":Lcom/wingtech/audioprofile/AudioProfileState;
    .end local v16    # "dtmfTone":Z
    .end local v17    # "hapticFeedback":Z
    .end local v19    # "lockScreensound":Z
    .end local v20    # "name":Ljava/lang/String;
    .end local v22    # "notificationVolume":I
    .end local v23    # "persistedState":Lcom/wingtech/audioprofile/AudioProfileState;
    .end local v24    # "powerRingtoneEnabled":Z
    .end local v26    # "ringerVolume":I
    .end local v27    # "soundEffect":Z
    .end local v30    # "vibration":Z
    :cond_4
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readPersistedSettings: No value for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private readPredefinedProfileKeys()V
    .locals 3

    .prologue
    .line 3318
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3319
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3320
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3321
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readPredefindProfileKeys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3323
    return-void
.end method

.method private readShouldSyncToSystem()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 3497
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v7

    array-length v4, v7

    .line 3498
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 3499
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3501
    :cond_0
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-static {v7}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 3505
    .local v0, "activeScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 3507
    :cond_1
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3508
    .local v6, "systemVolume":I
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3509
    .local v3, "profileVolume":I
    if-eq v3, v6, :cond_2

    .line 3510
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3513
    :cond_2
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3514
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3515
    if-eq v3, v6, :cond_3

    .line 3516
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3519
    :cond_3
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3520
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3521
    if-eq v3, v6, :cond_4

    .line 3522
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3526
    :cond_4
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3527
    .local v5, "systemUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 3528
    .local v2, "profileUri":Landroid/net/Uri;
    if-eqz v2, :cond_5

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    if-nez v2, :cond_7

    if-eqz v5, :cond_7

    .line 3529
    :cond_6
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3532
    :cond_7
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3533
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 3534
    if-eqz v2, :cond_8

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    if-nez v2, :cond_a

    if-eqz v5, :cond_a

    .line 3535
    :cond_9
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3538
    :cond_a
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x8

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3539
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 3540
    if-eqz v2, :cond_b

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    if-nez v2, :cond_d

    if-eqz v5, :cond_d

    .line 3541
    :cond_c
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3544
    :cond_d
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x10

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3545
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 3546
    if-eqz v2, :cond_e

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    if-nez v2, :cond_10

    if-eqz v5, :cond_10

    .line 3547
    :cond_f
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3551
    :cond_10
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v8, 0x20

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3552
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    .line 3553
    if-eqz v2, :cond_11

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    if-nez v2, :cond_13

    if-eqz v5, :cond_13

    .line 3554
    :cond_12
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3558
    .end local v2    # "profileUri":Landroid/net/Uri;
    .end local v3    # "profileVolume":I
    .end local v5    # "systemUri":Landroid/net/Uri;
    .end local v6    # "systemVolume":I
    :cond_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readShouldSyncToSystem: mShouldSyncToSystem = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3559
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3764
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3765
    :try_start_0
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3766
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wingtech/audioprofile/AudioProfileService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3767
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wingtech/audioprofile/AudioProfileService$Record;

    .line 3768
    .local v1, "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    iget-object v2, v1, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3769
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removed AudioProfile change listener for: record.mBinder = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", clients = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 3774
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wingtech/audioprofile/AudioProfileService$Record;>;"
    .end local v1    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wingtech/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3775
    return-void
.end method

.method private restoreToDefaultValues(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "resetHapticFeedback"    # Z

    .prologue
    const/4 v11, 0x0

    .line 1636
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1637
    .local v0, "defaultState":Lcom/wingtech/audioprofile/AudioProfileState;
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wingtech/audioprofile/AudioProfileState;

    .line 1638
    .local v3, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v8

    .line 1639
    :try_start_0
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1640
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1641
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1642
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 1644
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    .line 1646
    iget v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1647
    iget v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    iput v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1648
    iget v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    iput v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1650
    iget-boolean v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    iput-boolean v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1651
    iget-boolean v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    iput-boolean v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1652
    iget-boolean v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    iput-boolean v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1653
    iget-boolean v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    iput-boolean v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1657
    if-eqz p2, :cond_0

    .line 1658
    iget-boolean v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    iput-boolean v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1661
    :cond_0
    iget-boolean v7, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    iput-boolean v7, v3, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    .line 1662
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1663
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1665
    .local v2, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 1666
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1668
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1669
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v7, "name"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    const-string v7, " in ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 1672
    .local v5, "size":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1673
    const-string v7, "?,"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1662
    .end local v1    # "i":I
    .end local v2    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "size":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1675
    .restart local v1    # "i":I
    .restart local v2    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "size":I
    :cond_2
    const-string v7, "?)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1677
    .local v6, "where":Ljava/lang/String;
    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v7, v5, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1679
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name like \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p1, v10}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1681
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name like \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x8

    invoke-static {p1, v10}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1683
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name like \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {p1, v10}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1685
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name like \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {p1, v10}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1688
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreToDefaultValues: profileKey = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1689
    return-void
.end method

.method private setActiveKey(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1144
    .local v1, "token":J
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "mtk_audioprofile_active"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1146
    .local v0, "succeed":Z
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 1147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActiveKey: succeed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1149
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1151
    return v0
.end method

.method private setLastActiveKey(Ljava/lang/String;)Z
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1156
    .local v3, "token":J
    iget-object v5, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "mtk_audioprofile_last_active"

    invoke-static {v5, v6, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1157
    .local v2, "succeed":Z
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 1158
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    iget-object v5, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1161
    .local v1, "sizeOfShouldSyncToSystem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1162
    iget-object v5, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1164
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLastActiveKey: succeed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", profileKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1165
    return v2
.end method

.method private setLastCustomActiveDeleted(Z)Z
    .locals 4
    .param p1, "deleted"    # Z

    .prologue
    .line 1169
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mtk_audioprofile_custom_deleted"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1172
    .local v0, "succeed":Z
    iput-boolean p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomActiveDeleted: changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1174
    return v0
.end method

.method private setOldProfileSettings(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldScenario"    # Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .param p2, "oldProfileKey"    # Ljava/lang/String;

    .prologue
    .line 1104
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1108
    :cond_0
    invoke-direct {p0, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v0

    .line 1109
    .local v0, "lastActiveChanged":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v1, :cond_1

    .line 1110
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1113
    .end local v0    # "lastActiveChanged":Z
    :cond_1
    return-void
.end method

.method private setRingerModeMatchProfile(ZI)V
    .locals 3
    .param p1, "shouldSetRingerMode"    # Z
    .param p2, "expectRingerMode"    # I

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1117
    .local v0, "actualRingerMode":I
    if-eqz p1, :cond_0

    if-eq v0, p2, :cond_0

    .line 1118
    iput p2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1119
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1121
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRingerModeMatchProfile: actual = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1122
    return-void
.end method

.method private setRingtoneUriInStateMap(Lcom/wingtech/audioprofile/AudioProfileState;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "state"    # Lcom/wingtech/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "value"    # Landroid/net/Uri;

    .prologue
    .line 2368
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->setRingtoneUriInStateMap(Lcom/wingtech/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V

    .line 2369
    return-void
.end method

.method private setRingtoneUriInStateMap(Lcom/wingtech/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V
    .locals 2
    .param p1, "state"    # Lcom/wingtech/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "value"    # Landroid/net/Uri;
    .param p4, "simId"    # J

    .prologue
    .line 2372
    sparse-switch p2, :sswitch_data_0

    .line 2399
    :goto_0
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 2400
    iput-wide p4, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mSimId:J

    .line 2402
    :cond_0
    return-void

    .line 2374
    :sswitch_0
    iput-object p3, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    goto :goto_0

    .line 2378
    :sswitch_1
    iput-object p3, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    goto :goto_0

    .line 2382
    :sswitch_2
    iput-object p3, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 2386
    :sswitch_3
    iput-object p3, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 2391
    :sswitch_4
    iput-object p3, p1, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    goto :goto_0

    .line 2372
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2332
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V

    .line 2333
    return-void
.end method

.method private syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;
    .param p4, "simId"    # J

    .prologue
    .line 2339
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v6

    .line 2340
    .local v6, "scenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v0, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2341
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "outdoorKey":Ljava/lang/String;
    move-object v0, p0

    move v2, p2

    move-wide v3, p4

    move-object v5, p3

    .line 2342
    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronize general to outdoor! ringtone type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    .line 2345
    .end local v1    # "outdoorKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private syncRingtoneToSystem()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1749
    const/4 v1, 0x0

    .line 1750
    .local v1, "systemUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1753
    .local v0, "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1754
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1756
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1757
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1758
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1760
    :cond_1
    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1767
    :cond_2
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1768
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1770
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1771
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1772
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1774
    :cond_4
    invoke-direct {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1781
    :cond_5
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1782
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1784
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v8}, Lcom/wingtech/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1785
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1786
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 1788
    :cond_7
    invoke-direct {p0, v8}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1795
    :cond_8
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1796
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1798
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v9}, Lcom/wingtech/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1799
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1800
    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    if-nez v0, :cond_b

    if-eqz v1, :cond_b

    .line 1802
    :cond_a
    invoke-direct {p0, v9}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1809
    :cond_b
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1810
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1812
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1813
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1814
    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    if-nez v0, :cond_e

    if-eqz v1, :cond_e

    .line 1816
    :cond_d
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1820
    :cond_e
    return-void
.end method

.method private syncVolumeToSystem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 1699
    const/4 v1, 0x0

    .line 1700
    .local v1, "systemVolume":I
    const/4 v0, 0x0

    .line 1702
    .local v0, "profileVolume":I
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1703
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1704
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1705
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1706
    if-eq v0, v1, :cond_0

    .line 1707
    invoke-direct {p0, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1715
    :cond_0
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1716
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1717
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1719
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1720
    if-eq v0, v1, :cond_1

    .line 1721
    invoke-direct {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1722
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1727
    :cond_1
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1728
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1729
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1730
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1731
    if-eq v0, v1, :cond_2

    .line 1732
    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1738
    :cond_2
    return-void
.end method

.method private updateRintoneUri(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;J)Landroid/net/Uri;
    .locals 22
    .param p1, "dataKey"    # Ljava/lang/String;
    .param p2, "profileKey"    # Ljava/lang/String;
    .param p3, "streamType"    # I
    .param p4, "volumePath"    # [Ljava/lang/String;
    .param p5, "simId"    # J

    .prologue
    .line 781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRintoneUri :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with ringtoneType  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  -  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, p0

    iget v4, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v4

    cmp-long v4, p5, v4

    if-nez v4, :cond_1

    .line 785
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v18

    .line 791
    .local v18, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    :goto_0
    const/16 v17, 0x0

    .line 793
    .local v17, "oldUri":Landroid/net/Uri;
    sparse-switch p3, :sswitch_data_0

    .line 817
    const-string v4, "AudioProfileService"

    const-string v5, "updateRintoneUri with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v15, 0x0

    .line 860
    :cond_0
    :goto_1
    return-object v15

    .line 787
    .end local v17    # "oldUri":Landroid/net/Uri;
    .end local v18    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v18

    .restart local v18    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    goto :goto_0

    .line 795
    .restart local v17    # "oldUri":Landroid/net/Uri;
    :sswitch_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 821
    :goto_2
    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 822
    const/4 v15, 0x0

    .line 823
    .local v15, "newUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 824
    .local v20, "uriData":Ljava/lang/String;
    if-nez v20, :cond_2

    .line 825
    const/4 v15, 0x0

    goto :goto_1

    .line 799
    .end local v15    # "newUri":Landroid/net/Uri;
    .end local v20    # "uriData":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 800
    goto :goto_2

    .line 803
    :sswitch_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 804
    goto :goto_2

    .line 807
    :sswitch_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 808
    goto :goto_2

    .line 812
    :sswitch_4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 813
    goto :goto_2

    .line 827
    .restart local v15    # "newUri":Landroid/net/Uri;
    .restart local v20    # "uriData":Ljava/lang/String;
    :cond_2
    const-string v4, "/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v21, v4, v5

    .line 828
    .local v21, "uriSdPath":Ljava/lang/String;
    move-object/from16 v0, p4

    array-length v14, v0

    .line 832
    .local v14, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v14, :cond_6

    .line 833
    aget-object v4, p4, v11

    aget-object v5, p4, v11

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 834
    .local v19, "sdPath":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 835
    .local v16, "newUriData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const-string v7, "_data=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v16, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 843
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 844
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 845
    .local v12, "id":J
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 846
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update ringtone uri for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with new uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    if-eqz v10, :cond_0

    .line 851
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 852
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 850
    .end local v12    # "id":J
    :cond_3
    if-eqz v10, :cond_4

    .line 851
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 852
    const/4 v10, 0x0

    .line 832
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 850
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_5

    .line 851
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 852
    const/4 v10, 0x0

    :cond_5
    throw v4

    .line 857
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v16    # "newUriData":Ljava/lang/String;
    .end local v19    # "sdPath":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update ringtone uri for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 860
    .end local v11    # "i":I
    .end local v14    # "length":I
    .end local v15    # "newUri":Landroid/net/Uri;
    .end local v20    # "uriData":Ljava/lang/String;
    .end local v21    # "uriSdPath":Ljava/lang/String;
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 793
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method private updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;

    .prologue
    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRintoneUriWithType  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with ringtoneType  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    .line 773
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 775
    return-void
.end method

.method private updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 13
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;
    .param p4, "simId"    # J

    .prologue
    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRintoneUriWithType  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with ringtoneType  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " simId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    .line 718
    move-wide/from16 v0, p4

    invoke-static {p1, p2, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "dataKey":Ljava/lang/String;
    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-wide/from16 v7, p4

    .line 720
    invoke-direct/range {v2 .. v8}, Lcom/wingtech/audioprofile/AudioProfileService;->updateRintoneUri(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    .line 721
    .local v9, "newUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRintoneUriWithType   uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  with ringtoneType  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    .line 723
    if-eqz v9, :cond_0

    .line 724
    new-instance v12, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 726
    .local v12, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v11

    .line 727
    .local v11, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    sparse-switch p2, :sswitch_data_0

    .line 755
    const-string v2, "AudioProfileService"

    const-string v4, "getRingtoneUri with unsupport type!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-wide/from16 v7, p4

    .line 758
    invoke-direct/range {v4 .. v9}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 759
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 761
    :try_start_0
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v9, v12, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    .end local v11    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    .end local v12    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 729
    .restart local v11    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :sswitch_0
    iput-object v9, v11, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 730
    const-string v2, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :sswitch_1
    iput-object v9, v11, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 735
    const-string v2, "is_notification"

    const-string v4, "1"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 739
    :sswitch_2
    iput-object v9, v11, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 740
    const-string v2, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 744
    :sswitch_3
    const-string v2, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iput-object v9, v11, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 750
    :sswitch_4
    const-string v2, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iput-object v9, v11, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    goto :goto_0

    .line 762
    :catch_0
    move-exception v10

    .line 763
    .local v10, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v2, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t set ringtone flag for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 727
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 12

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1277
    const-string v0, "AudioProfileService"

    const-string v1, "addProfile: Number of custom audio profile has reached upper limit!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v8, 0x0

    .line 1315
    :goto_0
    return-object v8

    .line 1282
    :cond_0
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->genCustomKey()Ljava/lang/String;

    move-result-object v8

    .line 1283
    .local v8, "newKey":Ljava/lang/String;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v6

    .line 1284
    .local v6, "defaultState":Lcom/wingtech/audioprofile/AudioProfileState;
    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    invoke-direct {v0, v8}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v11, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v0

    iget v1, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    iget v2, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    iget v3, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v0

    iget-boolean v1, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v0

    iget-boolean v1, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-virtual {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v0

    iget-boolean v1, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-virtual {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v0

    iget-boolean v1, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-virtual {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v0

    iget-boolean v1, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-virtual {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v0

    iget-boolean v1, v6, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    invoke-virtual {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->powerSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->build()Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v9

    .line 1303
    .local v9, "newProfileState":Lcom/wingtech/audioprofile/AudioProfileState;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1304
    .local v7, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 1306
    .local v10, "succeed":Z
    if-eqz v10, :cond_1

    .line 1307
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v1

    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addProfile: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/wingtech/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1310
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1313
    :cond_1
    const-string v0, "AudioProfileService"

    const-string v1, "addProfile: Failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 13
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x1

    .line 1325
    if-nez p1, :cond_0

    .line 1326
    const-string v6, "AudioProfileService"

    const-string v8, "deleteProfile: Null key!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1391
    :goto_0
    return v6

    .line 1331
    :cond_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mUserId:I

    if-eqz v6, :cond_1

    .line 1332
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteProfileTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteProfileName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteCount:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1335
    iget v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteCount:I

    .line 1336
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteCountName:Ljava/lang/String;

    iget v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDeleteCount:I

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1338
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v7

    .line 1339
    :try_start_0
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1340
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    monitor-exit v7

    move v6, v8

    .line 1344
    goto :goto_0

    .line 1342
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1348
    :cond_1
    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1349
    .local v2, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1350
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v6, "name"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    const-string v6, " in ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 1353
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v6, v4, -0x1

    if-ge v1, v6, :cond_2

    .line 1354
    const-string v6, "?,"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1356
    :cond_2
    const-string v6, "?)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1358
    .local v5, "where":Ljava/lang/String;
    iget-object v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v4, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v9, v10, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1360
    .local v0, "deleted":I
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name like \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1, v8}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1362
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name like \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x8

    invoke-static {p1, v11}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1364
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name like \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {p1, v11}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1366
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name like \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-static {p1, v11}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1369
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteProfile: where = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", deleted = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1370
    if-lez v0, :cond_7

    .line 1371
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v7

    .line 1372
    :try_start_1
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1373
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1375
    :cond_3
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1376
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    :cond_4
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1379
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1382
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1383
    const-string v6, "deleteProfile: Custom active deleted and set to default."

    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1384
    invoke-direct {p0, v8}, Lcom/wingtech/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1385
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v7, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    .line 1387
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteProfile: mKeys = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCustomProfileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    move v6, v8

    .line 1388
    goto/16 :goto_0

    .line 1381
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 1390
    :cond_7
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteProfile: Failed to delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 1391
    goto/16 :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1184
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 1185
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveProfile: profileKey = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1512
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1514
    :try_start_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mUserId:I

    if-nez v1, :cond_0

    .line 1515
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->deleteCacheProfiles()V

    .line 1518
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1519
    .local v0, "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllProfileKeys: keys = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1521
    monitor-exit v2

    return-object v0

    .line 1522
    .end local v0    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCustomizedProfileKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 1578
    const/4 v0, 0x0

    .line 1585
    :goto_0
    return-object v0

    .line 1581
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1582
    .local v0, "customizedProfileKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1583
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCustomizedProfileKeys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 3237
    const/4 v0, 0x0

    .line 3238
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 3262
    const-string v1, "AudioProfileService"

    const-string v2, "getRingtoneUri with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    const/4 v1, 0x0

    .line 3266
    :goto_0
    return-object v1

    .line 3240
    :sswitch_0
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 3265
    .restart local v0    # "uri":Landroid/net/Uri;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultRingtone: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", default uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    move-object v1, v0

    .line 3266
    goto :goto_0

    .line 3244
    :sswitch_1
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 3245
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 3248
    :sswitch_2
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 3249
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 3252
    :sswitch_3
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 3253
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 3257
    :sswitch_4
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 3258
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 3238
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public getDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2031
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 2032
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDtmfToneEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 2033
    return v0
.end method

.method public getHapticFeedbackEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2073
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 2074
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHapticFeedbackEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 2075
    return v0
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1196
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 1197
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastActiveProfileKey: profileKey = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLockScreenEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2059
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 2060
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockScreenEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 2061
    return v0
.end method

.method public getPowerSoundEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2088
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    .line 2089
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPowerSoundEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 2090
    return v0
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    .local v0, "predefinedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPredefinedProfileKeys: keys = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1567
    return-object v0
.end method

.method public getProfileCount()I
    .locals 4

    .prologue
    .line 1499
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 1500
    :try_start_0
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1501
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileCount: count = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1502
    monitor-exit v2

    return v0

    .line 1503
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2184
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2185
    .local v0, "profileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfileName: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 2186
    return-object v0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2136
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    return-object v0
.end method

.method public getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 2104
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2105
    :try_start_0
    iget v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v3, v1

    cmp-long v1, p2, v3

    if-eqz v1, :cond_0

    .line 2106
    invoke-direct {p0, p1, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->readNewProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    monitor-exit v2

    .line 2116
    :goto_0
    return-object v0

    .line 2109
    :cond_0
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wingtech/audioprofile/AudioProfileState;

    .line 2110
    .local v0, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2112
    const-string v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Single card getProfileState of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is null, so create new one instead!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    invoke-direct {p0, p1, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->readNewProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    .line 2114
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    check-cast v0, Lcom/wingtech/audioprofile/AudioProfileState;

    .line 2116
    .restart local v0    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 2117
    .end local v0    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2148
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wingtech/audioprofile/AudioProfileState;

    .line 2149
    .local v0, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v3

    array-length v1, v3

    .line 2150
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2151
    .local v2, "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2152
    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2153
    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2154
    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2156
    sget v3, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    iget-object v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2158
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2159
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2160
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2162
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2163
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2164
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2165
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2166
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2168
    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->power_sound_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-boolean v4, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileStateString for profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 2172
    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 1838
    if-nez p1, :cond_0

    .line 1839
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1880
    :goto_0
    return-object v0

    .line 1843
    :cond_0
    const/4 v0, 0x0

    .line 1844
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1868
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1869
    goto :goto_0

    .line 1846
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1871
    :goto_1
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1874
    const/4 v0, 0x0

    .line 1879
    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingtoneUri: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 1850
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1851
    goto :goto_1

    .line 1854
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1855
    goto :goto_1

    .line 1858
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 1859
    goto :goto_1

    .line 1863
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    .line 1864
    goto :goto_1

    .line 1875
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1877
    :cond_3
    invoke-virtual {p0, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1844
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public getRingtoneUriWithSIM(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J

    .prologue
    const/4 v1, 0x0

    .line 1884
    if-nez p1, :cond_0

    .line 1885
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1926
    :goto_0
    return-object v0

    .line 1888
    :cond_0
    iput-wide p3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J

    .line 1889
    const/4 v0, 0x0

    .line 1890
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1914
    const-string v2, "AudioProfileService"

    const-string v3, "getRingtoneUri with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 1915
    goto :goto_0

    .line 1892
    :sswitch_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1917
    :goto_1
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1920
    const/4 v0, 0x0

    .line 1925
    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRingtoneUriWithSIM: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 1896
    :sswitch_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1897
    goto :goto_1

    .line 1900
    :sswitch_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1901
    goto :goto_1

    .line 1904
    :sswitch_3
    invoke-virtual {p0, p1, p3, p4}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 1905
    goto :goto_1

    .line 1909
    :sswitch_4
    invoke-virtual {p0, p1, p3, p4}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mSMSStream:Landroid/net/Uri;

    .line 1910
    goto :goto_1

    .line 1921
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1923
    :cond_3
    invoke-virtual {p0, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 1890
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public getSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2045
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 2046
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSoundEffectEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 2047
    return v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1979
    if-nez p1, :cond_0

    .line 1980
    const-string v2, "AudioProfileService"

    const-string v3, "getStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :goto_0
    return v0

    .line 1984
    :cond_0
    const/4 v1, 0x0

    .line 1985
    .local v1, "volume":I
    packed-switch p2, :pswitch_data_0

    .line 1999
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "getStreamVolume with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1987
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2002
    :goto_1
    invoke-direct {p0, p2, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v0

    .line 2003
    .local v0, "validVolume":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamVolume: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 1991
    .end local v0    # "validVolume":I
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1992
    goto :goto_1

    .line 1995
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1996
    goto :goto_1

    .line 1985
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getVibrationEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2017
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v1

    iget-boolean v0, v1, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 2018
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVibrationEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 2019
    return v0
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 3196
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v2

    .line 3197
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3198
    .local v0, "actived":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActive: profileKey = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", actived = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3199
    monitor-exit v2

    return v0

    .line 3197
    .end local v0    # "actived":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3200
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1486
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 1487
    .local v0, "isExisted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNameExist: name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isExisted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCustomProfileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1489
    return v0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3211
    :try_start_0
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 3212
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v1, :cond_0

    .line 3223
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return v2

    .line 3215
    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    .line 3216
    goto :goto_0

    .line 3218
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v0

    .line 3219
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3221
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 3222
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v2, v3

    .line 3223
    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/wingtech/audioprofile/IAudioProfileListener;I)V
    .locals 10
    .param p1, "callback"    # Lcom/wingtech/audioprofile/IAudioProfileListener;
    .param p2, "event"    # I

    .prologue
    .line 3704
    if-nez p2, :cond_0

    .line 3705
    invoke-interface {p1}, Lcom/wingtech/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3706
    const-string v6, "listenAudioProfie with LISTEN_NONE, so remove this listener\'s callback!"

    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3752
    :goto_0
    return-void

    .line 3710
    :cond_0
    iget-object v7, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3713
    const/4 v3, 0x0

    .line 3715
    .local v3, "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/wingtech/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3716
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 3717
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    .local v4, "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    :goto_1
    if-ge v2, v5, :cond_3

    .line 3718
    :try_start_1
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wingtech/audioprofile/AudioProfileService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3719
    .end local v4    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    .restart local v3    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    :try_start_2
    iget-object v6, v3, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    if-ne v0, v6, :cond_2

    .line 3728
    :goto_2
    iput p2, v3, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3730
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 3732
    :try_start_3
    iget-object v6, v3, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mCallback:Lcom/wingtech/audioprofile/IAudioProfileListener;

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/wingtech/audioprofile/IAudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3748
    :cond_1
    :goto_3
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "listenAudioProfie with event = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " sucessed, record.mBinder = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ,clients = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3750
    monitor-exit v7

    goto :goto_0

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 3717
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v5    # "size":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    .restart local v4    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    goto :goto_1

    .line 3723
    :cond_3
    :try_start_5
    new-instance v3, Lcom/wingtech/audioprofile/AudioProfileService$Record;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/wingtech/audioprofile/AudioProfileService$Record;-><init>(Lcom/wingtech/audioprofile/AudioProfileService$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3724
    .end local v4    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    .restart local v3    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    :try_start_6
    iput-object v0, v3, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 3725
    iput-object p1, v3, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mCallback:Lcom/wingtech/audioprofile/IAudioProfileListener;

    .line 3726
    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3733
    :catch_0
    move-exception v1

    .line 3734
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v6, v3, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/wingtech/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3735
    const-string v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dead object in listenAudioProfie, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 3750
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    .restart local v4    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    .restart local v3    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    goto :goto_4
.end method

.method public notifyRingerVolumeChanged(IILjava/lang/String;)V
    .locals 7
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1240
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1241
    const-string v3, "AudioProfileService"

    const-string v4, "notifyRingerVolumeChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :goto_0
    return-void

    .line 1245
    :cond_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1246
    const-string v3, "AudioProfileService"

    const-string v4, "notifyRingerVolumeChanged falled, because there are no listener!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1250
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyRingerVolumeChanged: oldVolume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newVolume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", client = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1252
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1253
    :try_start_0
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1254
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wingtech/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1255
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wingtech/audioprofile/AudioProfileService$Record;

    .line 1256
    .local v2, "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    .line 1258
    :try_start_1
    iget-object v3, v2, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mCallback:Lcom/wingtech/audioprofile/IAudioProfileListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/wingtech/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1261
    const-string v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/wingtech/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clients = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1267
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wingtech/audioprofile/AudioProfileService$Record;>;"
    .end local v2    # "record":Lcom/wingtech/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/wingtech/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2749
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2750
    return-void
.end method

.method public reset()V
    .locals 17

    .prologue
    .line 1399
    const-string v13, "reset start!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1400
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 1401
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v14, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1402
    .local v2, "generalKey":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v5

    .line 1403
    .local v5, "isGeneralActive":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v14

    .line 1408
    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/wingtech/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;Z)V

    .line 1409
    if-eqz v5, :cond_0

    .line 1410
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/wingtech/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1422
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const-string v15, "phone_msim"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/MSimTelephonyManager;

    .line 1424
    .local v6, "manager":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1425
    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v7

    .line 1426
    .local v7, "numPhones":I
    const-wide/16 v11, -0x1

    .line 1427
    .local v11, "simId":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_2

    .line 1428
    int-to-long v15, v3

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J

    .line 1429
    int-to-long v11, v3

    .line 1430
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(IJ)V

    .line 1427
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1412
    .end local v3    # "i":I
    .end local v6    # "manager":Landroid/telephony/MSimTelephonyManager;
    .end local v7    # "numPhones":I
    .end local v11    # "simId":J
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 1413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v9

    .line 1414
    .local v9, "ringerMode":I
    const/4 v13, 0x2

    if-eq v9, v13, :cond_1

    .line 1415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1417
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/wingtech/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1418
    invoke-direct/range {p0 .. p0}, Lcom/wingtech/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    goto :goto_0

    .line 1455
    .end local v9    # "ringerMode":I
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 1435
    .restart local v6    # "manager":Landroid/telephony/MSimTelephonyManager;
    :cond_2
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reset: profileKey = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", state = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1441
    .local v1, "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1442
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1443
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1444
    .local v8, "profileKey":Ljava/lang/String;
    invoke-static {v8}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v10

    .line 1445
    .local v10, "scenaria":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    sget-object v13, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v10}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1446
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/wingtech/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 1451
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reset: profileKey = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ", state = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 1449
    :cond_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/wingtech/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1454
    .end local v8    # "profileKey":Ljava/lang/String;
    .end local v10    # "scenaria":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    :cond_4
    const-string v13, "reset end!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1455
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1456
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wingtech/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 1457
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1132
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1134
    .local v0, "identityToken":J
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    invoke-static {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->restoreCallingIdentity(J)V

    .line 1139
    return-void

    .line 1136
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setActiveProfile(Ljava/lang/String;Z)V
    .locals 15
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "shouldSetRingerMode"    # Z

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v5

    .line 989
    .local v5, "oldProfileKey":Ljava/lang/String;
    move-object/from16 v3, p1

    .line 990
    .local v3, "newProfileKey":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setActiveProfile>>>: oldProfileKey = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", newProfileKey = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", shouldSetRingerMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 994
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 995
    const-string v12, "AudioProfileService"

    const-string v13, "setActiveProfile with same profile key with active profile, do nothing!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_0
    return-void

    .line 999
    :cond_0
    iget-object v13, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v13

    .line 1000
    :try_start_0
    invoke-direct {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 1001
    const/4 v7, 0x1

    .line 1003
    .local v7, "overrideSystem":Z
    iget-object v12, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    iget-boolean v14, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    move/from16 v0, p2

    invoke-interface {v12, v0, v5, v3, v14}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;

    move-result-object v1

    .line 1007
    .local v1, "apcInfo":Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    if-nez v1, :cond_6

    .line 1008
    invoke-static {v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    .line 1009
    .local v4, "newScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    invoke-static {v5}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v6

    .line 1011
    .local v6, "oldScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    iget-object v12, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v12}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    .line 1012
    .local v8, "ringerMode":I
    sget-object v12, Lcom/wingtech/audioprofile/AudioProfileService$11;->$SwitchMap$com$wingtech$audioprofile$AudioProfileManager$Scenario:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v12, v12, v14

    packed-switch v12, :pswitch_data_0

    .line 1033
    const/4 v12, 0x2

    move/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 1037
    invoke-virtual {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v12

    iget v12, v12, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    if-nez v12, :cond_1

    .line 1038
    iget-object v12, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    .line 1039
    .local v11, "volume":I
    invoke-virtual {p0, v3, v11}, Lcom/wingtech/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 1040
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setActiveProfile: profile volume is 0, change to "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1043
    .end local v11    # "volume":I
    :cond_1
    sget-object v12, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v12, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    sget-object v12, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v12, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_2
    iget-object v12, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1049
    iget-boolean v12, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-nez v12, :cond_3

    iget-boolean v12, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    if-eqz v12, :cond_5

    :cond_3
    const/4 v7, 0x1

    .line 1053
    :goto_1
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 1054
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 1056
    :cond_4
    sget-object v12, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v12, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 1086
    .end local v4    # "newScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .end local v6    # "oldScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .end local v8    # "ringerMode":I
    :goto_2
    invoke-direct {p0, v7}, Lcom/wingtech/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1088
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    .line 1090
    invoke-virtual {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v12

    iget v10, v12, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1091
    .local v10, "ringerVolume":I
    invoke-virtual {p0, v10, v10, v3}, Lcom/wingtech/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 1092
    const-string v12, "setActiveProfile<<<"

    invoke-direct {p0, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1093
    monitor-exit v13

    goto/16 :goto_0

    .end local v1    # "apcInfo":Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .end local v7    # "overrideSystem":Z
    .end local v10    # "ringerVolume":I
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1015
    .restart local v1    # "apcInfo":Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .restart local v4    # "newScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .restart local v6    # "oldScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .restart local v7    # "overrideSystem":Z
    .restart local v8    # "ringerMode":I
    :pswitch_0
    const/4 v12, 0x0

    :try_start_1
    move/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 1018
    invoke-direct {p0, v6, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->setOldProfileSettings(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V

    .line 1019
    const/4 v7, 0x0

    .line 1020
    goto :goto_2

    .line 1024
    :pswitch_1
    const/4 v12, 0x1

    move/from16 v0, p2

    invoke-direct {p0, v0, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 1027
    invoke-direct {p0, v6, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->setOldProfileSettings(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V

    .line 1028
    const/4 v7, 0x0

    .line 1029
    goto :goto_2

    .line 1049
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 1060
    .end local v4    # "newScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .end local v6    # "oldScenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .end local v8    # "ringerMode":I
    :cond_6
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->getRingerModeToUpdate()I

    move-result v9

    .line 1061
    .local v9, "ringerModeToUpdate":I
    const/16 v12, -0x3e7

    if-eq v9, v12, :cond_7

    .line 1062
    iput v9, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1063
    iget-object v12, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v12, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1064
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMCC: setActiveProfile: RingerMode now set "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 1067
    :cond_7
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSetLastActiveKey()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1069
    invoke-direct {p0, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v2

    .line 1070
    .local v2, "lastActiveChanged":Z
    if-eqz v2, :cond_8

    iget-boolean v12, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v12, :cond_8

    .line 1071
    const/4 v12, 0x0

    invoke-direct {p0, v12}, Lcom/wingtech/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1075
    .end local v2    # "lastActiveChanged":Z
    :cond_8
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSyncToSystem()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1079
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 1080
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 1082
    :cond_9
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldOverrideSystem()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_2

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2568
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2569
    .local v0, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2570
    const-string v1, "AudioProfileService"

    const-string v2, "setDtmfToneEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_0
    :goto_0
    return-void

    .line 2574
    :cond_1
    iget-boolean v1, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2576
    invoke-direct {p0, p1, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistDtmfToneToDatabase(Ljava/lang/String;Z)V

    .line 2577
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2578
    :try_start_0
    iput-boolean p2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 2579
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2581
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2582
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 2584
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDtmfToneEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 2579
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2658
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2659
    .local v0, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2660
    const-string v1, "AudioProfileService"

    const-string v2, "setHapticFeedbackEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    :cond_0
    :goto_0
    return-void

    .line 2664
    :cond_1
    iget-boolean v1, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2666
    invoke-direct {p0, p1, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V

    .line 2667
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2668
    :try_start_0
    iput-boolean p2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 2669
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2671
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2672
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 2674
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHapticFeedbackEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 2669
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2628
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2629
    .local v0, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2630
    const-string v1, "AudioProfileService"

    const-string v2, "setLockScreenEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :cond_0
    :goto_0
    return-void

    .line 2634
    :cond_1
    iget-boolean v1, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2636
    invoke-direct {p0, p1, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistLockScreenToDatabase(Ljava/lang/String;Z)V

    .line 2637
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2638
    :try_start_0
    iput-boolean p2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 2639
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2641
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2642
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 2644
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockScreenEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 2639
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPowerSoundEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2688
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2689
    .local v0, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2690
    const-string v1, "AudioProfileService"

    const-string v2, "setHapticFeedbackEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :cond_0
    :goto_0
    return-void

    .line 2694
    :cond_1
    iget-boolean v1, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2696
    invoke-direct {p0, p1, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistPowerSoundToDatabase(Ljava/lang/String;Z)V

    .line 2697
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2698
    :try_start_0
    iput-boolean p2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mPowerSoundEnabled:Z

    .line 2699
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2701
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2702
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistPowerSoundToSystem()V

    .line 2704
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHapticFeedbackEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 2699
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 2720
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2721
    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 2723
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfileName: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 2729
    :goto_0
    return-void

    .line 2727
    :cond_2
    const-string v1, "AudioProfileService"

    const-string v2, "setProfileName with Null name!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 9
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2223
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v8

    .line 2224
    .local v8, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    if-nez v8, :cond_0

    .line 2225
    const-string v0, "AudioProfileService"

    const-string v1, "setRingtoneUri profile state not exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :goto_0
    return-void

    .line 2229
    :cond_0
    iput-wide p3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSimId:J

    .line 2231
    invoke-direct {p0, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->isValidRingtoneType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2232
    const-string v0, "AudioProfileService"

    const-string v1, "setRingtoneUri with undefined stream type!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :cond_1
    move-object v5, p5

    .line 2236
    .local v5, "newRingtoneUri":Landroid/net/Uri;
    invoke-direct {p0, v8, p2, v5}, Lcom/wingtech/audioprofile/AudioProfileService;->isRingtoneUriChanged(Lcom/wingtech/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2237
    const-string v0, "setRingtoneUri with ringtone uri unchanged!"

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logV(Ljava/lang/String;)V

    .line 2242
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p2, :cond_3

    .line 2243
    if-nez v5, :cond_3

    .line 2244
    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 2249
    invoke-direct/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2253
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2254
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 2258
    :cond_4
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mExt:Lcom/wingtech/audioprofile/IAudioProfileExtension;

    invoke-interface {v0}, Lcom/wingtech/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v6, p3

    .line 2259
    invoke-direct/range {v2 .. v7}, Lcom/wingtech/audioprofile/AudioProfileService;->syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V

    .line 2262
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRingtoneUri: profileKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2206
    iget v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileService;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2207
    return-void
.end method

.method public setShouldSyncToSystemFlag(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "shouldSync"    # Z

    .prologue
    .line 2303
    sparse-switch p1, :sswitch_data_0

    .line 2329
    :goto_0
    return-void

    .line 2305
    :sswitch_0
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2309
    :sswitch_1
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2313
    :sswitch_2
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2317
    :sswitch_3
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2322
    :sswitch_4
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/wingtech/audioprofile/AudioProfileService;->DEFAULT_SMS_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2303
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2598
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2599
    .local v0, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2600
    const-string v1, "AudioProfileService"

    const-string v2, "setSoundEffectEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    :cond_0
    :goto_0
    return-void

    .line 2604
    :cond_1
    iget-boolean v1, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eq v1, p2, :cond_0

    .line 2606
    invoke-direct {p0, p1, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistSoundEffectToDatabase(Ljava/lang/String;Z)V

    .line 2607
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2608
    :try_start_0
    iput-boolean p2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 2609
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2611
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2612
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 2614
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSoundEffectEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 2609
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v4, 0x1

    .line 2429
    invoke-direct {p0, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v1

    .line 2430
    .local v1, "validIndex":I
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2431
    .local v0, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2432
    const-string v2, "AudioProfileService"

    const-string v3, "setStreamVolume profile state not exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    :goto_0
    return-void

    .line 2436
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2489
    :pswitch_0
    const-string v2, "AudioProfileService"

    const-string v3, "setStreamVolume with undefind stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStreamVolume: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 2438
    :pswitch_1
    iget v2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v2, v1, :cond_1

    .line 2441
    invoke-direct {p0, p1, p2, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2442
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2443
    :try_start_0
    iput v1, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2444
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2448
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2449
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2444
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2455
    :pswitch_2
    iget v2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    if-eq v2, v1, :cond_1

    .line 2458
    invoke-direct {p0, p1, p2, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2459
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2460
    :try_start_2
    iput v1, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2461
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2465
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2466
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2461
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2472
    :pswitch_3
    iget v2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    if-eq v2, v1, :cond_1

    .line 2475
    invoke-direct {p0, p1, p2, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2476
    iget-object v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v3

    .line 2477
    :try_start_4
    iput v1, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2478
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2482
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2483
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2478
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 2436
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 3760
    iput p1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mUserId:I

    .line 3761
    return-void
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2507
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->setVibrationEnabled(Ljava/lang/String;ZZ)V

    .line 2508
    return-void
.end method

.method public setVibrationEnabled(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "shouldSetRingerMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2520
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2521
    .local v0, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2522
    const-string v1, "AudioProfileService"

    const-string v2, "setVibrationEnabled profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_0
    :goto_0
    return-void

    .line 2526
    :cond_1
    iget-boolean v1, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eq v1, p2, :cond_0

    .line 2529
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static {p1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2530
    iget-object v4, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "vibrate_in_silent"

    if-eqz p2, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2532
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 2533
    if-eqz p2, :cond_5

    .line 2534
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2535
    iput v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2536
    const-string v1, "setVibrationEnabled true,change RingerMode to VIBRATE"

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 2545
    :cond_2
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistVibrationToDatabase(Ljava/lang/String;Z)V

    .line 2546
    iget-object v2, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    monitor-enter v2

    .line 2547
    :try_start_0
    iput-boolean p2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 2548
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2550
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2551
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 2553
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVibrationEnabled: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", shouldSetRingerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 2530
    goto :goto_1

    .line 2538
    :cond_5
    iget-object v1, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2539
    iput v3, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2540
    const-string v1, "setVibrationEnabled false,change RingerMode to SILENT"

    invoke-direct {p0, v1}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 2548
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public syncNotificationVolumeToProfile(Ljava/lang/String;I)V
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .prologue
    .line 3623
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    iget v0, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    if-eq v0, p2, :cond_0

    .line 3624
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3625
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3626
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncRingerVolumeToProfile: profileKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3629
    :cond_0
    return-void
.end method

.method public syncRingerVolumeToProfile(Ljava/lang/String;I)V
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .prologue
    .line 3611
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    iget v0, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v0, p2, :cond_0

    .line 3612
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3614
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/wingtech/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3616
    invoke-virtual {p0, p1}, Lcom/wingtech/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/wingtech/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncRingerVolumeToProfile: profileKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", volume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wingtech/audioprofile/AudioProfileService;->logD(Ljava/lang/String;)V

    .line 3620
    :cond_0
    return-void
.end method
