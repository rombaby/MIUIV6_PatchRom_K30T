.class final Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;
.super Landroid/media/IRemoteDisplayCallback$Stub;
.source "RemoteDisplayProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderCallback"
.end annotation


# instance fields
.field private final mConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .prologue
    .line 427
    invoke-direct {p0}, Landroid/media/IRemoteDisplayCallback$Stub;-><init>()V

    .line 428
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 429
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 433
    return-void
.end method

.method public onStateChanged(Landroid/media/RemoteDisplayState;)V
    .locals 2
    .param p1, "state"    # Landroid/media/RemoteDisplayState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 438
    .local v0, "connection":Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->postStateChanged(Landroid/media/RemoteDisplayState;)V

    .line 441
    :cond_0
    return-void
.end method
