.class public Lcom/wingtech/audioprofile/AudioProfileManager;
.super Ljava/lang/Object;
.source "AudioProfileManager.java"

# interfaces
.implements Lcom/wingtech/audioprofile/IAudioProfileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;,
        Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;
    }
.end annotation


# static fields
.field public static final ACTION_PROFILE_CHANGED:Ljava/lang/String; = "com.mediatek.audioprofile.ACTION_PROFILE_CHANGED"

.field public static final DEFAULT_MAX_VOLUME_OUTDOOR:I = 0xf

.field public static final DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

.field public static final DEFAULT_SIP_STREAM_URI:Landroid/net/Uri;

.field public static final DEFAULT_SMS_STREAM_URI:Landroid/net/Uri;

.field public static final DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

.field public static final EXTRA_PROFILE_SCENARIO:Ljava/lang/String; = "com.mediatek.audioprofile.EXTRA_PROFILE_SCENARIO"

.field public static final KEY_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_active"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "mtk_audioprofile_default_notification"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "mtk_audioprofile_default_ringtone"

.field public static final KEY_DEFAULT_SIP_CALL:Ljava/lang/String; = "mtk_audioprofile_default_sip_call"

.field public static final KEY_DEFAULT_SMS:Ljava/lang/String; = "mtk_audioprofile_default_sms"

.field public static final KEY_DEFAULT_VIDEO_CALL:Ljava/lang/String; = "mtk_audioprofile_default_video_call"

.field public static final LAST_ACTIVE_CUSTOM_DELETED:Ljava/lang/String; = "mtk_audioprofile_custom_deleted"

.field public static final LAST_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_last_active"

.field public static final MAX_PROFILES_COUNT:I = 0xa

.field public static final PREDEFINED_PROFILES_COUNT:I = 0x4

.field public static final PROFILE_PREFIX:Ljava/lang/String; = "mtk_audioprofile_"

.field private static final REAL_PROFILE_KEY:[Ljava/lang/String;

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field private static final SUFFIX_ALARM_VOLUME:Ljava/lang/String; = "_volume_alarm"

.field protected static final SUFFIX_DATA:Ljava/lang/String; = "_data"

.field private static final SUFFIX_DTMFTONE:Ljava/lang/String; = "_dtmf_tone_enabled"

.field private static final SUFFIX_HAPTICFEEDBACK:Ljava/lang/String; = "_haptic_feedback_enabled"

.field protected static final SUFFIX_KEY:Ljava/lang/String; = "_key"

.field private static final SUFFIX_LOCK_SCRREN:Ljava/lang/String; = "_lockscreen_sounds_enabled"

.field protected static final SUFFIX_NAME:Ljava/lang/String; = "_name"

.field private static final SUFFIX_NOTIFICATION_URI:Ljava/lang/String; = "_notification_sound"

.field private static final SUFFIX_NOTIFICATION_USE_RING:Ljava/lang/String; = "_notifications_use_ring_volume"

.field private static final SUFFIX_NOTIFICATION_VOLUME:Ljava/lang/String; = "_volume_notification"

.field private static final SUFFIX_POWER_SOUND:Ljava/lang/String; = "_power_sound_enabled"

.field private static final SUFFIX_RINGER_URI:Ljava/lang/String; = "_ringtone"

.field private static final SUFFIX_RINGER_VOLUME:Ljava/lang/String; = "_volume_ring"

.field protected static final SUFFIX_SIM_ID:Ljava/lang/String; = "_sim_id"

.field private static final SUFFIX_SIP_CALL_URI:Ljava/lang/String; = "_sip_call"

.field private static final SUFFIX_SMS_URI:Ljava/lang/String; = "_sms_call"

.field private static final SUFFIX_SOUNDEFFECT:Ljava/lang/String; = "_sound_effects_enabled"

.field private static final SUFFIX_VIBRATION:Ljava/lang/String; = "_vibrate_on"

.field private static final SUFFIX_VIDEO_CALL_URI:Ljava/lang/String; = "_video_call"

.field private static final TAG:Ljava/lang/String; = "AudioProfileManager"

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_SIP_CALL:I = 0x10

.field public static final TYPE_SMS:I = 0x20

.field public static final TYPE_VIDEO_CALL:I = 0x8

.field public static final UNSUPPORT_STREAM_VOLUME:I

.field private static sDEFAULTSTATES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/wingtech/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/wingtech/audioprofile/IAudioProfileService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 167
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    .line 170
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 173
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    .line 176
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_SIP_STREAM_URI:Landroid/net/Uri;

    .line 180
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SMS_RINGTONE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_SMS_STREAM_URI:Landroid/net/Uri;

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 206
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "general"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "meeting"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "silent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "outdoor"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "custom"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileManager;->mContext:Landroid/content/Context;

    .line 221
    return-void
.end method

.method private static coverToProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;
    .locals 3
    .param p0, "scenario"    # Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "realProfileKey":Ljava/lang/String;
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 760
    :cond_0
    :goto_0
    return-object v0

    .line 751
    :cond_1
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 752
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0

    .line 753
    :cond_2
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 754
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    goto :goto_0

    .line 755
    :cond_3
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 756
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    goto :goto_0

    .line 757
    :cond_4
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public static getAllKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "profileKey"    # Ljava/lang/String;
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
    const/4 v3, 0x2

    .line 802
    if-nez p0, :cond_0

    .line 803
    const-string v2, "AudioProfileManager"

    const-string v3, "getAllKeys: Null profileKey!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v1, 0x0

    .line 825
    :goto_0
    return-object v1

    .line 807
    :cond_0
    const/16 v0, 0xe

    .line 808
    .local v0, "keySize":I
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 809
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-static {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    invoke-static {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    invoke-static {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-static {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-static {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getPowerSoundKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-static {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-static {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    invoke-static {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-static {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    invoke-static {p0, v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uriKey"    # Ljava/lang/String;

    .prologue
    .line 669
    if-eqz p0, :cond_0

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;
    .locals 51
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 261
    sget-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    if-nez v46, :cond_1

    .line 262
    new-instance v39, Lcom/wingtech/audioprofile/DefaultProfileStatesGetter;

    invoke-direct/range {v39 .. v39}, Lcom/wingtech/audioprofile/DefaultProfileStatesGetter;-><init>()V

    .line 265
    .local v39, "defaultProfileStatesGetter":Lcom/wingtech/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;
    if-eqz v39, :cond_0

    .line 266
    invoke-interface/range {v39 .. v39}, Lcom/wingtech/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;->getDefaultProfileStates()Ljava/util/HashMap;

    move-result-object v46

    sput-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 268
    :cond_0
    sget-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    if-nez v46, :cond_1

    .line 269
    new-instance v46, Ljava/util/HashMap;

    const/16 v47, 0x4

    invoke-direct/range {v46 .. v47}, Ljava/util/HashMap;-><init>(I)V

    sput-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 275
    const/16 v27, 0x8

    .line 276
    .local v27, "DEFAULT_RINGER_VOLUME_GENERAL":I
    const/16 v30, 0x0

    .line 277
    .local v30, "DEFAULT_RINGER_VOLUME_SILENT":I
    const/16 v28, 0x0

    .line 278
    .local v28, "DEFAULT_RINGER_VOLUME_MEETING":I
    const/16 v29, 0xf

    .line 284
    .local v29, "DEFAULT_RINGER_VOLUME_OUTDOOR":I
    const/16 v19, 0x8

    .line 285
    .local v19, "DEFAULT_NOTIFICATION_VOLUME_GENERAL":I
    const/16 v22, 0x0

    .line 286
    .local v22, "DEFAULT_NOTIFICATION_VOLUME_SILENT":I
    const/16 v20, 0x0

    .line 287
    .local v20, "DEFAULT_NOTIFICATION_VOLUME_MEETING":I
    const/16 v21, 0xf

    .line 290
    .local v21, "DEFAULT_NOTIFICATION_VOLUME_OUTDOOR":I
    const/16 v3, 0x8

    .line 291
    .local v3, "DEFAULT_ALARM_VOLUME_GENERAL":I
    const/4 v6, 0x0

    .line 292
    .local v6, "DEFAULT_ALARM_VOLUME_SILENT":I
    const/4 v4, 0x0

    .line 293
    .local v4, "DEFAULT_ALARM_VOLUME_MEETING":I
    const/16 v5, 0xf

    .line 296
    .local v5, "DEFAULT_ALARM_VOLUME_OUTDOOR":I
    const/16 v35, 0x0

    .line 297
    .local v35, "DEFAULT_VIBRATION_GENERAL":Z
    const/16 v38, 0x0

    .line 298
    .local v38, "DEFAULT_VIBRATION_SILENT":Z
    const/16 v36, 0x1

    .line 299
    .local v36, "DEFAULT_VIBRATION_MEETING":Z
    const/16 v37, 0x1

    .line 305
    .local v37, "DEFAULT_VIBRATION_OUTDOOR":Z
    const/4 v7, 0x0

    .line 306
    .local v7, "DEFAULT_DTMFTONE_GENERAL":Z
    const/4 v10, 0x0

    .line 307
    .local v10, "DEFAULT_DTMFTONE_SILENT":Z
    const/4 v8, 0x0

    .line 308
    .local v8, "DEFAULT_DTMFTONE_MEETING":Z
    const/4 v9, 0x1

    .line 314
    .local v9, "DEFAULT_DTMFTONE_OUTDOOR":Z
    const/16 v31, 0x0

    .line 315
    .local v31, "DEFAULT_SOUNDEFFECT_GENERAL":Z
    const/16 v34, 0x0

    .line 316
    .local v34, "DEFAULT_SOUNDEFFECT_SILENT":Z
    const/16 v32, 0x0

    .line 317
    .local v32, "DEFAULT_SOUNDEFFECT_MEETING":Z
    const/16 v33, 0x1

    .line 323
    .local v33, "DEFAULT_SOUNDEFFECT_OUTDOOR":Z
    const/4 v15, 0x0

    .line 324
    .local v15, "DEFAULT_LOCK_SCREEN_GENERAL":Z
    const/16 v18, 0x0

    .line 325
    .local v18, "DEFAULT_LOCK_SCREEN_SILENT":Z
    const/16 v16, 0x0

    .line 326
    .local v16, "DEFAULT_LOCK_SCREEN_MEETING":Z
    const/16 v17, 0x1

    .line 332
    .local v17, "DEFAULT_LOCK_SCREEN_OUTDOOR":Z
    const/4 v11, 0x1

    .line 333
    .local v11, "DEFAULT_HAPTIC_FEEDBACK_GENERAL":Z
    const/4 v14, 0x1

    .line 334
    .local v14, "DEFAULT_HAPTIC_FEEDBACK_SILENT":Z
    const/4 v12, 0x1

    .line 335
    .local v12, "DEFAULT_HAPTIC_FEEDBACK_MEETING":Z
    const/4 v13, 0x1

    .line 342
    .local v13, "DEFAULT_HAPTIC_FEEDBACK_OUTDOOR":Z
    const/16 v23, 0x1

    .line 343
    .local v23, "DEFAULT_POWER_SOUND_ENABLED_GENERAL":Z
    const/16 v26, 0x1

    .line 344
    .local v26, "DEFAULT_POWER_SOUND_ENABLED_SILENT":Z
    const/16 v24, 0x1

    .line 345
    .local v24, "DEFAULT_POWER_SOUND_ENABLED_MEETING":Z
    const/16 v25, 0x1

    .line 352
    .local v25, "DEFAULT_POWER_SOUND_ENABLED_OUTDOOR":Z
    new-instance v46, Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v47 .. v47}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v48, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v49, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    sget-object v50, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_SMS_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v46 .. v50}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x8

    const/16 v48, 0x8

    const/16 v49, 0x8

    invoke-virtual/range {v46 .. v49}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->powerSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->build()Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v40

    .line 369
    .local v40, "generalState":Lcom/wingtech/audioprofile/AudioProfileState;
    sget-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Enum;->ordinal()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v46, Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v47 .. v47}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v48, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v49, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    sget-object v50, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_SMS_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v46 .. v50}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    invoke-virtual/range {v46 .. v49}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->powerSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->build()Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v45

    .line 389
    .local v45, "silentState":Lcom/wingtech/audioprofile/AudioProfileState;
    sget-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Enum;->ordinal()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance v46, Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v47 .. v47}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v48, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v49, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    sget-object v50, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_SMS_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v46 .. v50}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    invoke-virtual/range {v46 .. v49}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->powerSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->build()Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v42

    .line 409
    .local v42, "meetingState":Lcom/wingtech/audioprofile/AudioProfileState;
    sget-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Enum;->ordinal()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    new-instance v46, Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v47 .. v47}, Lcom/wingtech/audioprofile/AudioProfileManager;->getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v48, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v49, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    sget-object v50, Lcom/wingtech/audioprofile/AudioProfileManager;->DEFAULT_SMS_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v46 .. v50}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0xf

    const/16 v48, 0xf

    const/16 v49, 0xf

    invoke-virtual/range {v46 .. v49}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    const/16 v47, 0x1

    invoke-virtual/range {v46 .. v47}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->powerSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->build()Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v43

    .line 429
    .local v43, "outdoorState":Lcom/wingtech/audioprofile/AudioProfileState;
    sget-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v47, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Enum;->ordinal()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v46, "AudioProfileManager"

    const-string v47, "getDefaultState from default!"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v3    # "DEFAULT_ALARM_VOLUME_GENERAL":I
    .end local v4    # "DEFAULT_ALARM_VOLUME_MEETING":I
    .end local v5    # "DEFAULT_ALARM_VOLUME_OUTDOOR":I
    .end local v6    # "DEFAULT_ALARM_VOLUME_SILENT":I
    .end local v7    # "DEFAULT_DTMFTONE_GENERAL":Z
    .end local v8    # "DEFAULT_DTMFTONE_MEETING":Z
    .end local v9    # "DEFAULT_DTMFTONE_OUTDOOR":Z
    .end local v10    # "DEFAULT_DTMFTONE_SILENT":Z
    .end local v11    # "DEFAULT_HAPTIC_FEEDBACK_GENERAL":Z
    .end local v12    # "DEFAULT_HAPTIC_FEEDBACK_MEETING":Z
    .end local v13    # "DEFAULT_HAPTIC_FEEDBACK_OUTDOOR":Z
    .end local v14    # "DEFAULT_HAPTIC_FEEDBACK_SILENT":Z
    .end local v15    # "DEFAULT_LOCK_SCREEN_GENERAL":Z
    .end local v16    # "DEFAULT_LOCK_SCREEN_MEETING":Z
    .end local v17    # "DEFAULT_LOCK_SCREEN_OUTDOOR":Z
    .end local v18    # "DEFAULT_LOCK_SCREEN_SILENT":Z
    .end local v19    # "DEFAULT_NOTIFICATION_VOLUME_GENERAL":I
    .end local v20    # "DEFAULT_NOTIFICATION_VOLUME_MEETING":I
    .end local v21    # "DEFAULT_NOTIFICATION_VOLUME_OUTDOOR":I
    .end local v22    # "DEFAULT_NOTIFICATION_VOLUME_SILENT":I
    .end local v23    # "DEFAULT_POWER_SOUND_ENABLED_GENERAL":Z
    .end local v24    # "DEFAULT_POWER_SOUND_ENABLED_MEETING":Z
    .end local v25    # "DEFAULT_POWER_SOUND_ENABLED_OUTDOOR":Z
    .end local v26    # "DEFAULT_POWER_SOUND_ENABLED_SILENT":Z
    .end local v27    # "DEFAULT_RINGER_VOLUME_GENERAL":I
    .end local v28    # "DEFAULT_RINGER_VOLUME_MEETING":I
    .end local v29    # "DEFAULT_RINGER_VOLUME_OUTDOOR":I
    .end local v30    # "DEFAULT_RINGER_VOLUME_SILENT":I
    .end local v31    # "DEFAULT_SOUNDEFFECT_GENERAL":Z
    .end local v32    # "DEFAULT_SOUNDEFFECT_MEETING":Z
    .end local v33    # "DEFAULT_SOUNDEFFECT_OUTDOOR":Z
    .end local v34    # "DEFAULT_SOUNDEFFECT_SILENT":Z
    .end local v35    # "DEFAULT_VIBRATION_GENERAL":Z
    .end local v36    # "DEFAULT_VIBRATION_MEETING":Z
    .end local v37    # "DEFAULT_VIBRATION_OUTDOOR":Z
    .end local v38    # "DEFAULT_VIBRATION_SILENT":Z
    .end local v39    # "defaultProfileStatesGetter":Lcom/wingtech/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;
    .end local v40    # "generalState":Lcom/wingtech/audioprofile/AudioProfileState;
    .end local v42    # "meetingState":Lcom/wingtech/audioprofile/AudioProfileState;
    .end local v43    # "outdoorState":Lcom/wingtech/audioprofile/AudioProfileState;
    .end local v45    # "silentState":Lcom/wingtech/audioprofile/AudioProfileState;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v44

    .line 435
    .local v44, "scenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    if-nez v44, :cond_2

    .line 436
    const-string v46, "AudioProfileManager"

    const-string v47, "getDefaultState: get null scenario and use custom scenario default!"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-object v44, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    .line 439
    :cond_2
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Enum;->ordinal()I

    move-result v41

    .line 440
    .local v41, "index":I
    sget-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    invoke-virtual/range {v46 .. v46}, Ljava/util/HashMap;->size()I

    move-result v46

    move/from16 v0, v41

    move/from16 v1, v46

    if-lt v0, v1, :cond_3

    .line 441
    sget-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    const/16 v47, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/wingtech/audioprofile/AudioProfileState;

    .line 443
    :goto_0
    return-object v46

    :cond_3
    sget-object v46, Lcom/wingtech/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/wingtech/audioprofile/AudioProfileState;

    goto :goto_0
.end method

.method public static getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 487
    if-eqz p0, :cond_0

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_dtmf_tone_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHapticKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 501
    if-eqz p0, :cond_0

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 723
    if-eqz p0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 726
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 683
    if-eqz p0, :cond_0

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 697
    if-eqz p0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_notifications_use_ring_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPowerSoundKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 515
    if-eqz p0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_power_sound_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;
    .locals 2
    .param p0, "scenario"    # Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    .prologue
    .line 739
    if-eqz p0, :cond_0

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtk_audioprofile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->coverToProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 743
    :goto_0
    return-object v0

    .line 742
    :cond_0
    const-string v0, "AudioProfileManager"

    const-string v1, "getProfileKey with null scenario!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 710
    if-eqz p0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getScenario(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .locals 8
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 771
    if-nez p0, :cond_0

    .line 772
    const-string v5, "AudioProfileManager"

    const-string v6, "getScenario: Null key! Return CUSTOM as default!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    .line 791
    :goto_0
    return-object v5

    .line 776
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 777
    .local v2, "keyLen":I
    const-string v5, "mtk_audioprofile_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 778
    .local v4, "startIndex":I
    if-ge v2, v4, :cond_1

    .line 779
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScenario: Invalid key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Return CUSTOM as default!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0

    .line 783
    :cond_1
    const/16 v5, 0x5f

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 785
    .local v1, "endIndex":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1    # "endIndex":I
    :cond_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 788
    .local v3, "scenarioStr":Ljava/lang/String;
    :try_start_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->valueOf(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not convert string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to Scenario type!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sget-object v5, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0
.end method

.method private static getService()Lcom/wingtech/audioprofile/IAudioProfileService;
    .locals 4

    .prologue
    .line 229
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager;->sService:Lcom/wingtech/audioprofile/IAudioProfileService;

    if-eqz v2, :cond_0

    .line 231
    :try_start_0
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager;->sService:Lcom/wingtech/audioprofile/IAudioProfileService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/wingtech/audioprofile/IAudioProfileService;->setUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .local v1, "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager;->sService:Lcom/wingtech/audioprofile/IAudioProfileService;

    .line 244
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-object v2

    .line 232
    :catch_0
    move-exception v1

    .line 233
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Set user id exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 237
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "audioprofile"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 238
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/wingtech/audioprofile/IAudioProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v2

    sput-object v2, Lcom/wingtech/audioprofile/AudioProfileManager;->sService:Lcom/wingtech/audioprofile/IAudioProfileService;

    .line 240
    :try_start_1
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager;->sService:Lcom/wingtech/audioprofile/IAudioProfileService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/wingtech/audioprofile/IAudioProfileService;->setUserId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :goto_2
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager;->sService:Lcom/wingtech/audioprofile/IAudioProfileService;

    goto :goto_1

    .line 241
    :catch_1
    move-exception v1

    .line 242
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Set user id exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 473
    if-eqz p0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "profileKey"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 569
    const-wide/16 v0, -0x1

    .line 570
    .local v0, "simId":J
    invoke-static {p0, p1, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 5
    .param p0, "profileKey"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "simId"    # J

    .prologue
    const-wide/16 v3, -0x1

    .line 584
    if-nez p0, :cond_0

    .line 585
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamUriKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x0

    .line 642
    :goto_0
    return-object v0

    .line 589
    :cond_0
    const/4 v0, 0x0

    .line 590
    .local v0, "uriKey":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 639
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamUriKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_1
    :goto_1
    const-string v1, "AudioProfileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamUriKey: StreamUriKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    cmp-long v1, p2, v3

    if-eqz v1, :cond_1

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 602
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    goto :goto_1

    .line 606
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_video_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    cmp-long v1, p2, v3

    if-eqz v1, :cond_1

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 617
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sip_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    cmp-long v1, p2, v3

    if-eqz v1, :cond_1

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 630
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sms_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    cmp-long v1, p2, v3

    if-eqz v1, :cond_1

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 590
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getStreamUriKeys(I)Ljava/util/List;
    .locals 9
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .local v0, "arr$":[Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v6, v0, v1

    .line 657
    .local v6, "scenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 658
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mtk_audioprofile_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/wingtech/audioprofile/AudioProfileManager;->coverToProfileKey(Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 659
    .local v5, "prefix":Ljava/lang/String;
    invoke-static {v5, p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 660
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 661
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    .end local v6    # "scenario":Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    :cond_1
    return-object v3
.end method

.method public static getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "profileKey"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 533
    if-nez p0, :cond_0

    .line 534
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamVolumeKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    .line 555
    :goto_0
    return-object v0

    .line 538
    :cond_0
    const/4 v0, 0x0

    .line 539
    .local v0, "volumeKey":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 553
    :pswitch_0
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamVolumeKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_ring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    goto :goto_0

    .line 545
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    goto :goto_0

    .line 549
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    goto :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getVibrationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 459
    if-eqz p0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vibrate_on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 858
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 860
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileService;->addProfile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 863
    :goto_0
    return-object v2

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 874
    if-nez p1, :cond_0

    .line 875
    const-string v3, "AudioProfileManager"

    const-string v4, "deleteProfile with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :goto_0
    return v2

    .line 879
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 881
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->deleteProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in deleteProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 989
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 991
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 994
    :goto_0
    return-object v2

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    const/4 v2, 0x0

    goto :goto_0
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
    .line 922
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 924
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getAllProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 927
    :goto_0
    return-object v2

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getAllProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCustomizedProfileKeys()Ljava/util/List;
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
    .line 952
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 954
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getCustomizedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 957
    :goto_0
    return-object v2

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getCustomizedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1679
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1681
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1684
    :goto_0
    return-object v2

    .line 1682
    :catch_0
    move-exception v0

    .line 1683
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1684
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1161
    if-nez p1, :cond_0

    .line 1162
    const-string v3, "AudioProfileManager"

    const-string v4, "getDtmfToneEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :goto_0
    return v2

    .line 1166
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1168
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getDtmfToneEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getDtmfToneEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getHapticFeedbackEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1234
    if-nez p1, :cond_0

    .line 1235
    const-string v3, "AudioProfileManager"

    const-string v4, "getHapticFeedbackEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :goto_0
    return v2

    .line 1239
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1241
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getHapticFeedbackEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getHapticFeedbackEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1004
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1006
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getLastActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1009
    :goto_0
    return-object v2

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getLastActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLockScreenEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1209
    if-nez p1, :cond_0

    .line 1210
    const-string v3, "AudioProfileManager"

    const-string v4, "getLockScreenEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :goto_0
    return v2

    .line 1214
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1216
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getLockScreenEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getLockScreenEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPowerSoundEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1259
    if-nez p1, :cond_0

    .line 1260
    const-string v3, "AudioProfileManager"

    const-string v4, "getPowerSoundEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :goto_0
    return v2

    .line 1264
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1266
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getPowerSoundEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getPowerSoundEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
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
    .line 937
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 939
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getPredefinedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 942
    :goto_0
    return-object v2

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getPredefinedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProfileCount()I
    .locals 4

    .prologue
    .line 907
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 909
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getProfileCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 912
    :goto_0
    return v2

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in deleteProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    const/16 v2, 0xa

    goto :goto_0
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1354
    if-nez p1, :cond_0

    .line 1355
    const-string v3, "AudioProfileManager"

    const-string v4, "getProfileName with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :goto_0
    return-object v2

    .line 1359
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1361
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getProfileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getProfileName"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileState;
    .locals 23
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1283
    if-nez p1, :cond_0

    .line 1284
    const-string v2, "AudioProfileManager"

    const-string v21, "getProfileState with null profile key!"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v14, 0x0

    .line 1343
    :goto_0
    return-object v14

    .line 1289
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v16

    .line 1291
    .local v16, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 1297
    .local v18, "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1298
    .local v19, "value":Ljava/lang/String;
    if-nez v19, :cond_1

    const/4 v3, 0x0

    .line 1299
    .local v3, "voiceCallUri":Landroid/net/Uri;
    :goto_1
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1300
    .restart local v19    # "value":Ljava/lang/String;
    if-nez v19, :cond_2

    const/4 v4, 0x0

    .line 1301
    .local v4, "notificationUri":Landroid/net/Uri;
    :goto_2
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1302
    .restart local v19    # "value":Ljava/lang/String;
    if-nez v19, :cond_3

    const/4 v5, 0x0

    .line 1303
    .local v5, "videoCallUri":Landroid/net/Uri;
    :goto_3
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->sipcall_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1304
    .restart local v19    # "value":Ljava/lang/String;
    if-nez v19, :cond_4

    const/4 v6, 0x0

    .line 1308
    .local v6, "sipCallUri":Landroid/net/Uri;
    :goto_4
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->sms_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1309
    .restart local v19    # "value":Ljava/lang/String;
    if-nez v19, :cond_5

    const/4 v7, 0x0

    .line 1312
    .local v7, "smsUri":Landroid/net/Uri;
    :goto_5
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1313
    .restart local v19    # "value":Ljava/lang/String;
    if-nez v19, :cond_6

    const/4 v15, 0x0

    .line 1314
    .local v15, "ringerVolume":I
    :goto_6
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1315
    .restart local v19    # "value":Ljava/lang/String;
    if-nez v19, :cond_7

    const/4 v13, 0x0

    .line 1316
    .local v13, "notificationVolume":I
    :goto_7
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1317
    .restart local v19    # "value":Ljava/lang/String;
    if-nez v19, :cond_8

    const/4 v8, 0x0

    .line 1319
    .local v8, "alarmVolume":I
    :goto_8
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1320
    .restart local v19    # "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    .line 1321
    .local v20, "vibration":Z
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1322
    .restart local v19    # "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1323
    .local v9, "dtmfTone":Z
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1324
    .restart local v19    # "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 1325
    .local v17, "soundEffect":Z
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1326
    .restart local v19    # "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1327
    .local v12, "lockScreensound":Z
    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "value":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 1328
    .restart local v19    # "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 1330
    .local v11, "hapticFeedback":Z
    new-instance v2, Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v2 .. v7}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v2

    invoke-virtual {v2, v15, v13, v8}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/wingtech/audioprofile/AudioProfileState$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wingtech/audioprofile/AudioProfileState$Builder;->build()Lcom/wingtech/audioprofile/AudioProfileState;

    move-result-object v14

    .line 1341
    .local v14, "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    const-string v2, "AudioProfileManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getProfileState for profileKey = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v14}, Lcom/wingtech/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1292
    .end local v3    # "voiceCallUri":Landroid/net/Uri;
    .end local v4    # "notificationUri":Landroid/net/Uri;
    .end local v5    # "videoCallUri":Landroid/net/Uri;
    .end local v6    # "sipCallUri":Landroid/net/Uri;
    .end local v7    # "smsUri":Landroid/net/Uri;
    .end local v8    # "alarmVolume":I
    .end local v9    # "dtmfTone":Z
    .end local v11    # "hapticFeedback":Z
    .end local v12    # "lockScreensound":Z
    .end local v13    # "notificationVolume":I
    .end local v14    # "profileState":Lcom/wingtech/audioprofile/AudioProfileState;
    .end local v15    # "ringerVolume":I
    .end local v17    # "soundEffect":Z
    .end local v18    # "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "value":Ljava/lang/String;
    .end local v20    # "vibration":Z
    :catch_0
    move-exception v10

    .line 1293
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v21, "Dead object in getProfileState"

    move-object/from16 v0, v21

    invoke-static {v2, v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1298
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v18    # "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "value":Ljava/lang/String;
    :cond_1
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_1

    .line 1300
    .restart local v3    # "voiceCallUri":Landroid/net/Uri;
    :cond_2
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_2

    .line 1302
    .restart local v4    # "notificationUri":Landroid/net/Uri;
    :cond_3
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto/16 :goto_3

    .line 1304
    .restart local v5    # "videoCallUri":Landroid/net/Uri;
    :cond_4
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_4

    .line 1309
    .restart local v6    # "sipCallUri":Landroid/net/Uri;
    :cond_5
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto/16 :goto_5

    .line 1313
    .restart local v7    # "smsUri":Landroid/net/Uri;
    :cond_6
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto/16 :goto_6

    .line 1315
    .restart local v15    # "ringerVolume":I
    :cond_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto/16 :goto_7

    .line 1317
    .restart local v13    # "notificationVolume":I
    :cond_8
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_8
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, "profileKey":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1079
    .local v1, "type":I
    int-to-long v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getRingtoneUri(IJ)Landroid/net/Uri;
    .locals 2
    .param p1, "callType"    # I
    .param p2, "simId"    # J

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/wingtech/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "profileKey":Ljava/lang/String;
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/wingtech/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1062
    const-wide/16 v0, -0x1

    .line 1063
    .local v0, "simId":J
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/wingtech/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1029
    if-nez p1, :cond_0

    .line 1030
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :goto_0
    return-object v2

    .line 1036
    :cond_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/16 v3, 0x8

    if-eq p2, v3, :cond_1

    const/16 v3, 0x10

    if-eq p2, v3, :cond_1

    const/16 v3, 0x20

    if-ne p2, v3, :cond_2

    .line 1038
    :cond_1
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1040
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/wingtech/audioprofile/IAudioProfileService;->getRingtoneUriWithSIM(Ljava/lang/String;IJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getRingtoneUri"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1046
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :cond_2
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1185
    if-nez p1, :cond_0

    .line 1186
    const-string v3, "AudioProfileManager"

    const-string v4, "getSoundEffectEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :goto_0
    return v2

    .line 1190
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1192
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getSoundEffectEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getSoundEffectEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1660
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1662
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1665
    :goto_0
    return v2

    .line 1663
    :catch_0
    move-exception v0

    .line 1664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1665
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1106
    if-nez p1, :cond_0

    .line 1107
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :goto_0
    return v2

    .line 1111
    :cond_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 1113
    :cond_1
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1115
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/wingtech/audioprofile/IAudioProfileService;->getStreamVolume(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getStreamVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1121
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :cond_2
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVibrationEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1136
    if-nez p1, :cond_0

    .line 1137
    const-string v3, "AudioProfileManager"

    const-string v4, "getVibrationEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :goto_0
    return v2

    .line 1141
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1143
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->getVibrationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getVibrationEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1614
    if-nez p1, :cond_0

    .line 1615
    const-string v3, "AudioProfileManager"

    const-string v4, "isActive with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :goto_0
    return v2

    .line 1619
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1621
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->isActive(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1622
    :catch_0
    move-exception v0

    .line 1623
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isActive"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 969
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 970
    :cond_0
    const-string v3, "AudioProfileManager"

    const-string v4, "isNameExist: Null or empty name!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :goto_0
    return v2

    .line 974
    :cond_1
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 976
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->isNameExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in setActiveProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1635
    if-nez p1, :cond_0

    .line 1636
    const-string v3, "AudioProfileManager"

    const-string v4, "isRingtoneExist with null uri!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :goto_0
    return v2

    .line 1640
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1642
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1643
    :catch_0
    move-exception v0

    .line 1644
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isRingtoneExist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/wingtech/audioprofile/AudioProfileListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/wingtech/audioprofile/AudioProfileListener;
    .param p2, "event"    # I

    .prologue
    .line 1700
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1702
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-virtual {p1}, Lcom/wingtech/audioprofile/AudioProfileListener;->getCallback()Lcom/wingtech/audioprofile/IAudioProfileListener;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/wingtech/audioprofile/IAudioProfileService;->listenAudioProfie(Lcom/wingtech/audioprofile/IAudioProfileListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    :goto_0
    return-void

    .line 1703
    :catch_0
    move-exception v0

    .line 1704
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in listenAudioProfie"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 892
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 894
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/wingtech/audioprofile/IAudioProfileService;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :goto_0
    return-void

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in reset"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 838
    if-nez p1, :cond_0

    .line 839
    const-string v2, "AudioProfileManager"

    const-string v3, "setActiveProfile with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_0
    return-void

    .line 843
    :cond_0
    const-string v2, "AudioProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActiveProfile: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 846
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/wingtech/audioprofile/IAudioProfileService;->setActiveProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1481
    if-nez p1, :cond_0

    .line 1482
    const-string v2, "AudioProfileManager"

    const-string v3, "setDtmfToneEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :goto_0
    return-void

    .line 1486
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1488
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/wingtech/audioprofile/IAudioProfileService;->setDtmfToneEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1489
    :catch_0
    move-exception v0

    .line 1490
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setDtmfToneEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1545
    if-nez p1, :cond_0

    .line 1546
    const-string v2, "AudioProfileManager"

    const-string v3, "setHapticFeedbackEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :goto_0
    return-void

    .line 1550
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1552
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/wingtech/audioprofile/IAudioProfileService;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1553
    :catch_0
    move-exception v0

    .line 1554
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setHapticFeedbackEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1523
    if-nez p1, :cond_0

    .line 1524
    const-string v2, "AudioProfileManager"

    const-string v3, "setLockScreenEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :goto_0
    return-void

    .line 1528
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1530
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/wingtech/audioprofile/IAudioProfileService;->setLockScreenEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setLockScreenEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPowerSoundEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1567
    if-nez p1, :cond_0

    .line 1568
    const-string v2, "AudioProfileManager"

    const-string v3, "setPowerSoundEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :goto_0
    return-void

    .line 1572
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1574
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/wingtech/audioprofile/IAudioProfileService;->setPowerSoundEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1575
    :catch_0
    move-exception v0

    .line 1576
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setPowerSoundEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 1590
    if-nez p1, :cond_0

    .line 1591
    const-string v2, "AudioProfileManager"

    const-string v3, "setProfileName with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :goto_0
    return-void

    .line 1595
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1597
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/wingtech/audioprofile/IAudioProfileService;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1598
    :catch_0
    move-exception v0

    .line 1599
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setProfileName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1400
    if-nez p1, :cond_0

    .line 1401
    const-string v1, "AudioProfileManager"

    const-string v2, "setStreamVolume with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :goto_0
    return-void

    .line 1407
    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8

    if-eq p2, v1, :cond_1

    const/16 v1, 0x10

    if-eq p2, v1, :cond_1

    const/16 v1, 0x20

    if-eq p2, v1, :cond_1

    .line 1409
    const-string v1, "AudioProfileManager"

    const-string v2, "setStreamVolume with unsupport stream type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1413
    :cond_1
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v0

    .local v0, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 1415
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/wingtech/audioprofile/IAudioProfileService;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1416
    :catch_0
    move-exception v6

    .line 1417
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "AudioProfileManager"

    const-string v2, "Dead object in setRingtoneUri"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1384
    const/4 v6, -0x1

    .line 1385
    .local v6, "simId":I
    int-to-long v3, v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/wingtech/audioprofile/AudioProfileManager;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 1386
    return-void
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1502
    if-nez p1, :cond_0

    .line 1503
    const-string v2, "AudioProfileManager"

    const-string v3, "setSoundEffectEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :goto_0
    return-void

    .line 1507
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1509
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/wingtech/audioprofile/IAudioProfileService;->setSoundEffectEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1510
    :catch_0
    move-exception v0

    .line 1511
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setSoundEffectEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "index"    # I

    .prologue
    .line 1433
    if-nez p1, :cond_0

    .line 1434
    const-string v2, "AudioProfileManager"

    const-string v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :goto_0
    return-void

    .line 1438
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    .line 1440
    const-string v2, "AudioProfileManager"

    const-string v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1444
    :cond_1
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1446
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/wingtech/audioprofile/IAudioProfileService;->setStreamVolume(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1447
    :catch_0
    move-exception v0

    .line 1448
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1460
    if-nez p1, :cond_0

    .line 1461
    const-string v2, "AudioProfileManager"

    const-string v3, "setVibrationEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :goto_0
    return-void

    .line 1465
    :cond_0
    invoke-static {}, Lcom/wingtech/audioprofile/AudioProfileManager;->getService()Lcom/wingtech/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1467
    .local v1, "service":Lcom/wingtech/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/wingtech/audioprofile/IAudioProfileService;->setVibrationEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setVibrationEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
