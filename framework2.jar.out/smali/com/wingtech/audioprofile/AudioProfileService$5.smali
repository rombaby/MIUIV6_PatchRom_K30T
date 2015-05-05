.class Lcom/wingtech/audioprofile/AudioProfileService$5;
.super Landroid/database/ContentObserver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wingtech/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wingtech/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/wingtech/audioprofile/AudioProfileService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/wingtech/audioprofile/AudioProfileService$5;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 368
    iget-object v0, p0, Lcom/wingtech/audioprofile/AudioProfileService$5;->this$0:Lcom/wingtech/audioprofile/AudioProfileService;

    const-wide/16 v1, 0x1

    # invokes: Lcom/wingtech/audioprofile/AudioProfileService;->onChangeEx(ZJ)V
    invoke-static {v0, p1, v1, v2}, Lcom/wingtech/audioprofile/AudioProfileService;->access$1100(Lcom/wingtech/audioprofile/AudioProfileService;ZJ)V

    .line 369
    return-void
.end method
