.class public final enum Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;
.super Ljava/lang/Enum;
.source "AudioProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wingtech/audioprofile/AudioProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfileSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum alarm_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum dtmftone_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum hapticfeedback_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum lockscreensound_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum notification_stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum notification_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum power_sound_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum ringer_stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum ringer_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum sipcall_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum sms_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum soundeffect_enbled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum vibration_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

.field public static final enum videocall_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "ringer_stream"

    invoke-direct {v0, v1, v3}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "notification_stream"

    invoke-direct {v0, v1, v4}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "videocall_Stream"

    invoke-direct {v0, v1, v5}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "sipcall_Stream"

    invoke-direct {v0, v1, v6}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->sipcall_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "sms_Stream"

    invoke-direct {v0, v1, v7}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->sms_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    .line 192
    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "ringer_volume"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "notification_volume"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "alarm_volume"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    .line 193
    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "vibration_enabled"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "dtmftone_enabled"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "soundeffect_enbled"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "hapticfeedback_enabled"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    .line 195
    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "lockscreensound_enabled"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    const-string v1, "power_sound_enabled"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->power_sound_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    .line 188
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->sipcall_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->sms_Stream:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->power_sound_enabled:Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->$VALUES:[Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 188
    const-class v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    return-object v0
.end method

.method public static values()[Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;->$VALUES:[Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wingtech/audioprofile/AudioProfileManager$ProfileSettings;

    return-object v0
.end method
