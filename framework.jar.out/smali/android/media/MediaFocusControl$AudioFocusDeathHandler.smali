.class public Landroid/media/MediaFocusControl$AudioFocusDeathHandler;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AudioFocusDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method constructor <init>(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 630
    iput-object p1, p0, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p2, p0, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    .line 632
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 635
    # getter for: Landroid/media/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/MediaFocusControl;->access$2500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 636
    :try_start_0
    const-string v0, "MediaFocusControl"

    const-string v2, "  AudioFocus   audio focus client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v2, p0, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    # invokes: Landroid/media/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    invoke-static {v0, v2}, Landroid/media/MediaFocusControl;->access$2600(Landroid/media/MediaFocusControl;Landroid/os/IBinder;)V

    .line 638
    monitor-exit v1

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Landroid/media/MediaFocusControl$AudioFocusDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method
