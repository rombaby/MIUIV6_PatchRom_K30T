.class Lcom/wingtech/audioprofile/AudioProfileService$Record;
.super Ljava/lang/Object;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wingtech/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mCallback:Lcom/wingtech/audioprofile/IAudioProfileListener;

.field mEvent:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wingtech/audioprofile/AudioProfileService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wingtech/audioprofile/AudioProfileService$1;

    .prologue
    .line 3777
    invoke-direct {p0}, Lcom/wingtech/audioprofile/AudioProfileService$Record;-><init>()V

    return-void
.end method
