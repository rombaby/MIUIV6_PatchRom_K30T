.class public Lcom/android/internal/telephony/MSimConstants;
.super Ljava/lang/Object;
.source "MSimConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;
    }
.end annotation


# static fields
.field public static final DEFAULT_CARD_INDEX:I = 0x0

.field public static final DEFAULT_SUBSCRIPTION:I = 0x0

.field public static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f4

.field public static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f5

.field public static final INVALID_SUBSCRIPTION:I = -0x1

.field public static final MAX_PHONE_COUNT_DUAL_SIM:I = 0x2

.field public static final MAX_PHONE_COUNT_SINGLE_SIM:I = 0x1

.field public static final MAX_PHONE_COUNT_TRI_SIM:I = 0x3

.field public static final RIL_CARD_MAX_APPS:I = 0x8

.field public static final SUB1:I = 0x0

.field public static final SUB2:I = 0x1

.field public static final SUB3:I = 0x2

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String; = "sub_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
