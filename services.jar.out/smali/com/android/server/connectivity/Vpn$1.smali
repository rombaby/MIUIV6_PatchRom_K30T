.class Lcom/android/server/connectivity/Vpn$1;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, -0x2710

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, "userId":I
    const-string v2, "android.security.STORAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v3, "[Legacy VPN]"

    const-string v4, "[Legacy VPN]"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    :cond_0
    :goto_0
    if-ne v1, v5, :cond_3

    .line 163
    :cond_1
    :goto_1
    return-void

    .line 150
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$000(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    const-string v4, "[Legacy VPN]"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 158
    :cond_3
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V
    invoke-static {v2, v1}, Lcom/android/server/connectivity/Vpn;->access$100(Lcom/android/server/connectivity/Vpn;I)V

    goto :goto_1

    .line 160
    :cond_4
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$1;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;I)V

    goto :goto_1
.end method
