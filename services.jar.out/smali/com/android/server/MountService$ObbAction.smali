.class abstract Lcom/android/server/MountService$ObbAction;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ObbAction"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field mObbState:Lcom/android/server/MountService$ObbState;

.field private mRetries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .locals 0
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 3155
    iput-object p1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3156
    iput-object p2, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    .line 3157
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/MountService$ObbActionHandler;)V
    .locals 5
    .param p1, "handler"    # Lcom/android/server/MountService$ObbActionHandler;

    .prologue
    const/4 v4, 0x3

    .line 3162
    :try_start_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting to execute action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    iget v1, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    .line 3164
    iget v1, p0, Lcom/android/server/MountService$ObbAction;->mRetries:I

    if-le v1, v4, :cond_0

    .line 3165
    const-string v1, "MountService"

    const-string v2, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3167
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    .line 3185
    :goto_0
    return-void

    .line 3170
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleExecute()V

    .line 3172
    const-string v1, "MountService"

    const-string v2, "Posting install MCS_UNBIND"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3175
    :catch_0
    move-exception v0

    .line 3177
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MountService"

    const-string v2, "Posting install MCS_RECONNECT"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3179
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3181
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v2, "Error handling OBB action"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3182
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbAction;->handleError()V

    .line 3183
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected getObbInfo()Landroid/content/res/ObbInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3193
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v3, v3, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IMediaContainerService;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3199
    .local v1, "obbInfo":Landroid/content/res/ObbInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 3200
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read OBB file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3194
    .end local v1    # "obbInfo":Landroid/content/res/ObbInfo;
    :catch_0
    move-exception v0

    .line 3195
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t call DefaultContainerService to fetch OBB info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    const/4 v1, 0x0

    .restart local v1    # "obbInfo":Landroid/content/res/ObbInfo;
    goto :goto_0

    .line 3202
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v1
.end method

.method abstract handleError()V
.end method

.method abstract handleExecute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendNewStatusOrIgnore(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 3206
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-nez v1, :cond_1

    .line 3215
    :cond_0
    :goto_0
    return-void

    .line 3211
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v2, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v2, v2, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v3, v3, Lcom/android/server/MountService$ObbState;->nonce:I

    invoke-interface {v1, v2, v3, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3212
    :catch_0
    move-exception v0

    .line 3213
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MountService"

    const-string v2, "MountServiceListener went away while calling onObbStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
