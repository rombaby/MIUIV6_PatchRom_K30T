.class Lcom/android/server/power/ShutdownThread$7$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownThread$7;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$7;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7$1;->this$1:Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$7$1;->this$1:Lcom/android/server/power/ShutdownThread$7;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$400(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$7$1;->this$1:Lcom/android/server/power/ShutdownThread$7;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z
    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread;->access$502(Lcom/android/server/power/ShutdownThread;Z)Z

    .line 816
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$7$1;->this$1:Lcom/android/server/power/ShutdownThread$7;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$400(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 817
    monitor-exit v1

    .line 818
    return-void

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
