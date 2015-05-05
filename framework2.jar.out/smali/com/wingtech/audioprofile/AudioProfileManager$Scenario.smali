.class public final enum Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
.super Ljava/lang/Enum;
.source "AudioProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wingtech/audioprofile/AudioProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scenario"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

.field public static final enum CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

.field public static final enum GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

.field public static final enum MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

.field public static final enum OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

.field public static final enum SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "GENERAL"

    invoke-direct {v0, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "SILENT"

    invoke-direct {v0, v1, v3}, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "MEETING"

    invoke-direct {v0, v1, v4}, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "OUTDOOR"

    invoke-direct {v0, v1, v5}, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v6}, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    .line 201
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->$VALUES:[Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

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
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 201
    const-class v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    return-object v0
.end method

.method public static values()[Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;->$VALUES:[Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wingtech/audioprofile/AudioProfileManager$Scenario;

    return-object v0
.end method
