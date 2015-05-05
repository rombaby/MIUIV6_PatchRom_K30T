.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 802
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mShutDownFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    # setter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$302(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 805
    :try_start_0
    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 806
    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 808
    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 809
    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 810
    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 811
    # getter for: Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/ShutdownThread$7$1;

    invoke-direct {v3, p0}, Lcom/android/server/power/ShutdownThread$7$1;-><init>(Lcom/android/server/power/ShutdownThread$7;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play shutdown music error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
