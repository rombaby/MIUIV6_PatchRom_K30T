.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2pStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

.field private mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

.field private mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

.field private mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

.field private final mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

.field private mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

.field private mOngoingGroupRemovalState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;

.field private mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

.field private mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

.field private mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

.field private mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

.field private mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

.field private final mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private final mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

.field private mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private mUserAuthorizingInviteRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

.field private mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

.field private mUserAuthorizingNegotiationRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private final mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pService;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "p2pSupported"    # Z

    .prologue
    .line 462
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    .line 463
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 407
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    .line 408
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    .line 409
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    .line 410
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    .line 411
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    .line 412
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    .line 414
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    .line 415
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    .line 416
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInviteRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

    .line 418
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    .line 420
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    .line 421
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    .line 422
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    .line 424
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    .line 425
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    .line 426
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;

    invoke-direct {v0, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mOngoingGroupRemovalState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;

    .line 428
    new-instance v0, Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 429
    new-instance v0, Landroid/net/wifi/WifiMonitor;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 431
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 440
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 441
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList;

    const/4 v1, 0x0

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$1;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>(Landroid/net/wifi/p2p/WifiP2pGroupList;Landroid/net/wifi/p2p/WifiP2pGroupList$GroupDeleteListener;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 451
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 457
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 465
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 466
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 467
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 468
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 469
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 470
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mDefaultState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 471
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 472
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 473
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInviteRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 474
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 475
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 476
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 477
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 478
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 479
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 480
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mOngoingGroupRemovalState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 482
    if-eqz p3, :cond_0

    .line 483
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 487
    :goto_0
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setLogRecSize(I)V

    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setLogOnlyTransitions(Z)V

    .line 489
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pNotSupportedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pNotSupportedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V

    return-void
.end method

.method static synthetic access$10900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/net/InetAddress;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$11000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mOngoingGroupRemovalState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$OngoingGroupRemovalState;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 405
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$11100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupRemoved()V

    return-void
.end method

.method static synthetic access$11300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingJoinState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingJoinState;

    return-object v0
.end method

.method static synthetic access$11900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    return-object v0
.end method

.method static synthetic access$12000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->resetWifiP2pInfo()V

    return-void
.end method

.method static synthetic access$12100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisabledState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisabledState;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pEnablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pEnablingState;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pStateChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->initializeP2pSettings()V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mP2pDisablingState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$P2pDisablingState;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setAndPersistDeviceName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearSupplicantServiceRequest()V

    return-void
.end method

.method static synthetic access$4000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pDiscoveryChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;
    .param p2, "x2"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMiracastModeChanged(I)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method static synthetic access$5202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 405
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object p1
.end method

.method static synthetic access$5300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    return-object v0
.end method

.method static synthetic access$6300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInviteRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyP2pProvDiscShowPinRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 405
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$7000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure()V

    return-void
.end method

.method static synthetic access$7300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationReceived()V

    return-void
.end method

.method static synthetic access$7700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updatePersistentNetworks(Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 405
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->startDhcpServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupCreatedState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatedState;

    return-object v0
.end method

.method static synthetic access$9400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .prologue
    .line 405
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mFrequencyConflictState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;

    return-object v0
.end method

.method static synthetic access$9600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;ILjava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 405
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->removeClientFromList(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private addLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2905
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientDeadChannels()V

    .line 2906
    invoke-direct {p0, p1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2907
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2920
    :cond_0
    :goto_0
    return v1

    .line 2911
    :cond_1
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2915
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiNative;->p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2916
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2920
    goto :goto_0
.end method

.method private addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "stringId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2160
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2161
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900db

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2163
    .local v1, "row":Landroid/view/View;
    const v2, 0x1020396

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2164
    const v2, 0x10202b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2165
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2166
    return-void
.end method

.method private addServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)Z
    .locals 4
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    const/4 v1, 0x1

    .line 2829
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientDeadChannels()V

    .line 2830
    invoke-direct {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2831
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2832
    const/4 v1, 0x0

    .line 2845
    :cond_0
    :goto_0
    return v1

    .line 2835
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # ++operator for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12704(Landroid/net/wifi/p2p/WifiP2pService;)B

    .line 2837
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12700(Landroid/net/wifi/p2p/WifiP2pService;)B

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # ++operator for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12704(Landroid/net/wifi/p2p/WifiP2pService;)B

    .line 2838
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12700(Landroid/net/wifi/p2p/WifiP2pService;)B

    move-result v2

    invoke-virtual {p2, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->setTransactionId(I)V

    .line 2839
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$12700(Landroid/net/wifi/p2p/WifiP2pService;)B

    move-result v3

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2841
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$6000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2845
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    move-result v1

    goto :goto_0
.end method

.method private clearClientDeadChannels()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2993
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2995
    .local v1, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Messenger;>;"
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 2996
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 2997
    .local v5, "msg":Landroid/os/Message;
    const v6, 0x22031

    iput v6, v5, Landroid/os/Message;->what:I

    .line 2998
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 2999
    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 3000
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3002
    :try_start_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3003
    :catch_0
    move-exception v2

    .line 3005
    .local v2, "e":Landroid/os/RemoteException;
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3009
    .end local v0    # "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 3010
    .local v4, "m":Landroid/os/Messenger;
    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    goto :goto_1

    .line 3012
    .end local v4    # "m":Landroid/os/Messenger;
    :cond_1
    return-void
.end method

.method private clearClientInfo(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 2956
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearLocalServices(Landroid/os/Messenger;)V

    .line 2957
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearServiceRequests(Landroid/os/Messenger;)V

    .line 2958
    return-void
.end method

.method private clearLocalServices(Landroid/os/Messenger;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 2939
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2940
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2953
    :cond_0
    :goto_0
    return-void

    .line 2944
    :cond_1
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .line 2945
    .local v2, "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    goto :goto_1

    .line 2948
    .end local v2    # "servInfo":Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    :cond_2
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2949
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2951
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v3

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private clearServiceRequests(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;

    .prologue
    .line 2881
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2882
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2902
    :cond_0
    :goto_0
    return-void

    .line 2886
    :cond_1
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2890
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 2892
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2894
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2897
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$6000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2901
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0
.end method

.method private clearSupplicantServiceRequest()V
    .locals 2

    .prologue
    .line 2819
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$6000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2823
    :goto_0
    return-void

    .line 2821
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$6000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->p2pServDiscCancelReq(Ljava/lang/String;)Z

    .line 2822
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$6002(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 2386
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    move-result v0

    .line 2387
    .local v0, "gc":I
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 2388
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    return-object v1
.end method

.method private getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "createIfNotExist"    # Z

    .prologue
    .line 3022
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 3024
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3026
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .end local v0    # "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;Landroid/net/wifi/p2p/WifiP2pService$1;)V

    .line 3027
    .restart local v0    # "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3030
    :cond_0
    return-object v0
.end method

.method private getClientList(I)[Ljava/lang/String;
    .locals 3
    .param p1, "netId"    # I

    .prologue
    .line 2512
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v2, "p2p_client_list"

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2513
    .local v0, "p2pClients":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2514
    const/4 v1, 0x0

    .line 2516
    :goto_0
    return-object v1

    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2575
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 2576
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_0

    .line 2577
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2578
    .local v1, "deviceName":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2584
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local p1    # "deviceAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 2581
    .restart local v1    # "deviceName":Ljava/lang/String;
    .restart local p1    # "deviceAddress":Ljava/lang/String;
    :cond_1
    iget-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNetworkIdFromClientList(Ljava/lang/String;)I
    .locals 11
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 2490
    if-nez p1, :cond_1

    move v7, v9

    .line 2503
    :cond_0
    :goto_0
    return v7

    .line 2492
    :cond_1
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v3

    .line 2493
    .local v3, "groups":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pGroup;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2494
    .local v2, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v7

    .line 2495
    .local v7, "netId":I
    invoke-direct {p0, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    move-result-object v8

    .line 2496
    .local v8, "p2pClientList":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 2497
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v1, v0, v5

    .line 2498
    .local v1, "client":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2497
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "client":Ljava/lang/String;
    .end local v2    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "netId":I
    .end local v8    # "p2pClientList":[Ljava/lang/String;
    :cond_3
    move v7, v9

    .line 2503
    goto :goto_0
.end method

.method private getPersistedDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2588
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2590
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2593
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2596
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ro.product.model"

    const-string v4, "Android"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2600
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleGroupCreationFailure()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2679
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->resetWifiP2pInfo()V

    .line 2680
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pConnectionChangedBroadcast()V

    .line 2683
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2686
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result v0

    .line 2687
    .local v0, "peersChanged":Z
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2688
    const/4 v0, 0x1

    .line 2690
    :cond_0
    if-eqz v0, :cond_1

    .line 2691
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V

    .line 2694
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 2696
    .end local v0    # "peersChanged":Z
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$6002(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 2697
    const v1, 0x22001

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 2698
    return-void
.end method

.method private handleGroupRemoved()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2701
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2702
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->stopDhcpServer(Ljava/lang/String;)V

    .line 2711
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2715
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 2719
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiNative;->setP2pGroupIdle(Ljava/lang/String;I)Z

    .line 2721
    const/4 v3, 0x0

    .line 2724
    .local v3, "peersChanged":Z
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2725
    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    .line 2705
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "peersChanged":Z
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$9100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    const v5, 0x30002

    invoke-virtual {v4, v5}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 2706
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$9100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/DhcpStateMachine;->doQuit()V

    .line 2707
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;
    invoke-static {v4, v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$9102(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto :goto_0

    .line 2712
    :catch_0
    move-exception v1

    .line 2713
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clear addresses "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2727
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "peersChanged":Z
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 2728
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    .line 2729
    :cond_4
    if-eqz v3, :cond_5

    .line 2730
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V

    .line 2733
    :cond_5
    iput-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 2734
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 2735
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v4, v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$6002(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 2737
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$10600(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2738
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    const v5, 0x2300c

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 2739
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$10602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2741
    :cond_6
    return-void
.end method

.method private initializeP2pSettings()V
    .locals 4

    .prologue
    .line 2642
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setPersistentReconnect(Z)Z

    .line 2643
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2644
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    .line 2646
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 2647
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setDeviceType(Ljava/lang/String;)Z

    .line 2650
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v2, "virtual_push_button physical_display keypad"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setConfigMethods(Ljava/lang/String;)Z

    .line 2652
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v2, "sta"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setConcurrencyPriority(Ljava/lang/String;)Z

    .line 2654
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->p2pGetDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2655
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateThisDevice(I)V

    .line 2658
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2659
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    .line 2660
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->p2pServiceFlush()Z

    .line 2661
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v2, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$12702(Landroid/net/wifi/p2p/WifiP2pService;B)B

    .line 2662
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v2, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$6002(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 2664
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2666
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2667
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    move-result-object v1

    const v2, 0x23010

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 2670
    :cond_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$12500()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updatePersistentNetworks(Z)V

    .line 2671
    return-void
.end method

.method private isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v0, 0x1

    .line 2374
    if-nez p1, :cond_1

    .line 2377
    :cond_0
    :goto_0
    return v0

    .line 2375
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2376
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2377
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyInvitationReceived()V
    .locals 9

    .prologue
    .line 2218
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 2219
    .local v3, "r":Landroid/content/res/Resources;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v5, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 2220
    .local v5, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900da

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2223
    .local v4, "textEntryView":Landroid/view/View;
    const v6, 0x10202da

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2224
    .local v1, "group":Landroid/view/ViewGroup;
    const v6, 0x104044c

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2226
    const v6, 0x1020395

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2228
    .local v2, "pin":Landroid/widget/EditText;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x104044b

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040448

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$5;

    invoke-direct {v8, p0, v5, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$5;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/WpsInfo;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040449

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;

    invoke-direct {v8, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$4;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$3;

    invoke-direct {v7, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$3;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2257
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget v6, v5, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v6, :pswitch_data_0

    .line 2270
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 2273
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$6;

    invoke-direct {v6, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$6;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2290
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 2291
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2292
    return-void

    .line 2260
    :pswitch_0
    const v6, 0x1020394

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2264
    :pswitch_1
    const v6, 0x104044f

    iget-object v7, v5, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-direct {p0, v1, v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_0

    .line 2257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2169
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2171
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x10900da

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2174
    .local v3, "textEntryView":Landroid/view/View;
    const v4, 0x10202da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2175
    .local v1, "group":Landroid/view/ViewGroup;
    const v4, 0x104044d

    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2176
    const v4, 0x104044f

    invoke-direct {p0, v1, v4, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2178
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x104044a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2183
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2184
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2185
    return-void
.end method

.method private notifyP2pEnableFailure()V
    .locals 5

    .prologue
    .line 2149
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2150
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040443

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040445

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2155
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2156
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2157
    return-void
.end method

.method private notifyP2pProvDiscShowPinRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "peerAddress"    # Ljava/lang/String;

    .prologue
    .line 2188
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2189
    .local v2, "r":Landroid/content/res/Resources;
    move-object v3, p2

    .line 2190
    .local v3, "tempDevAddress":Ljava/lang/String;
    move-object v4, p1

    .line 2192
    .local v4, "tempPin":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900da

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2195
    .local v5, "textEntryView":Landroid/view/View;
    const v6, 0x10202da

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2196
    .local v1, "group":Landroid/view/ViewGroup;
    const v6, 0x104044d

    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2197
    const v6, 0x104044f

    invoke-direct {p0, v1, v6, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->addRowToDialog(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 2199
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x104044a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040448

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;

    invoke-direct {v8, p0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$2;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2213
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 2214
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2215
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .param p1, "srcMsg"    # Landroid/os/Message;

    .prologue
    .line 2771
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2772
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2773
    return-object v0
.end method

.method private p2pConnectWithPinDisplay(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    .line 2396
    const/4 v1, 0x0

    .line 2397
    .local v1, "join":Z
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 2399
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsInvite:Z
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$6400(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2400
    const/4 v1, 0x1

    .line 2405
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, p1, v1}, Landroid/net/wifi/WifiNative;->p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;

    move-result-object v2

    .line 2407
    .local v2, "pin":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 2408
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->notifyInvitationSent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2412
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v4, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mIsInvite:Z
    invoke-static {v3, v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$6402(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2413
    return-void

    .line 2402
    .end local v2    # "pin":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v1

    goto :goto_0

    .line 2409
    .restart local v2    # "pin":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2422
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->fetchCurrentDeviceDetails(Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    .line 2424
    .local v0, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v1

    .line 2425
    .local v1, "join":Z
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiNative;->p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2428
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupLimit()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2433
    const/4 v1, 0x0

    .line 2445
    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isDeviceLimit()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2446
    const-string/jumbo v5, "target device reaches the device limit."

    invoke-virtual {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2477
    :cond_1
    :goto_0
    return v4

    .line 2434
    :cond_2
    if-eqz v1, :cond_0

    .line 2435
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2436
    .local v2, "netId":I
    if-ltz v2, :cond_0

    .line 2438
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 2441
    goto :goto_0

    .line 2450
    .end local v2    # "netId":I
    :cond_3
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationCapable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2451
    const/4 v2, -0x2

    .line 2452
    .restart local v2    # "netId":I
    iget v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    if-ltz v6, :cond_6

    .line 2453
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget v8, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {v7, v8}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getOwnerAddr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2454
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 2459
    :cond_4
    :goto_1
    if-gez v2, :cond_5

    .line 2460
    iget-object v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getNetworkIdFromClientList(Ljava/lang/String;)I

    move-result v2

    .line 2463
    :cond_5
    if-ltz v2, :cond_1

    .line 2465
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Landroid/net/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2467
    iput v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    move v4, v5

    .line 2468
    goto :goto_0

    .line 2457
    :cond_6
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 2470
    :cond_7
    const-string/jumbo v5, "p2pReinvoke() failed, update networks"

    invoke-virtual {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2471
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$12500()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updatePersistentNetworks(Z)V

    goto :goto_0
.end method

.method private removeClientFromList(ILjava/lang/String;Z)Z
    .locals 11
    .param p1, "netId"    # I
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "isRemovable"    # Z

    .prologue
    const/4 v7, 0x1

    .line 2527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2528
    .local v6, "modifiedClientList":Ljava/lang/StringBuilder;
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientList(I)[Ljava/lang/String;

    move-result-object v2

    .line 2529
    .local v2, "currentClientList":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2530
    .local v4, "isClientRemoved":Z
    if-eqz v2, :cond_1

    .line 2531
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 2532
    .local v1, "client":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2533
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2536
    :cond_0
    const/4 v4, 0x1

    goto :goto_1

    .line 2540
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "client":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_2

    if-eqz p3, :cond_2

    .line 2543
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v8, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->remove(I)V

    .line 2559
    :goto_2
    return v7

    .line 2547
    :cond_2
    if-nez v4, :cond_3

    .line 2549
    const/4 v7, 0x0

    goto :goto_2

    .line 2553
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 2554
    const-string v8, "\"\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    :cond_4
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v9, "p2p_client_list"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p1, v9, v10}, Landroid/net/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    .line 2558
    iget-object v8, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v8}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto :goto_2
.end method

.method private removeLocalService(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 2924
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2925
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2936
    :cond_0
    :goto_0
    return-void

    .line 2929
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiNative;->p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z

    .line 2931
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2932
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2934
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v1

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeServiceRequest(Landroid/os/Messenger;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Messenger;
    .param p2, "req"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .prologue
    .line 2849
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getClientInfo(Landroid/os/Messenger;Z)Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    move-result-object v0

    .line 2850
    .local v0, "clientInfo":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    if-nez v0, :cond_1

    .line 2877
    :cond_0
    :goto_0
    return-void

    .line 2856
    :cond_1
    const/4 v2, 0x0

    .line 2857
    .local v2, "removed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2858
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2859
    const/4 v2, 0x1

    .line 2860
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2865
    :cond_2
    if-eqz v2, :cond_0

    .line 2867
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_3

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mServList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13100(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 2869
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v3

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2872
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$6000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2876
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->updateSupplicantServiceRequest()Z

    goto :goto_0

    .line 2857
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I

    .prologue
    .line 2746
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2750
    :goto_0
    return-void

    .line 2747
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2748
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2749
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12900(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 2753
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2758
    :goto_0
    return-void

    .line 2754
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2755
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2756
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 2757
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12900(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2761
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 2766
    :goto_0
    return-void

    .line 2762
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 2763
    .local v0, "dstMsg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 2764
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2765
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$12900(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private resetWifiP2pInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2569
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 2570
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 2571
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 2572
    return-void
.end method

.method private sendMiracastModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2108
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x23011

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 2110
    return-void
.end method

.method private sendP2pConnectionChangedBroadcast()V
    .locals 5

    .prologue
    .line 2096
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2097
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2099
    const-string/jumbo v1, "wifiP2pInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2100
    const-string/jumbo v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2101
    const-string/jumbo v1, "p2pGroupInfo"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2102
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2103
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2300b

    new-instance v3, Landroid/net/NetworkInfo;

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 2105
    return-void
.end method

.method private sendP2pDiscoveryChangedBroadcast(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 2067
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$3700(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2078
    :goto_0
    return-void

    .line 2068
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z
    invoke-static {v1, p1}, Landroid/net/wifi/p2p/WifiP2pService;->access$3702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2072
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2073
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2074
    const-string v2, "discoveryState"

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2077
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 2074
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private sendP2pPersistentGroupsChangedBroadcast()V
    .locals 3

    .prologue
    .line 2114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2115
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2116
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2117
    return-void
.end method

.method private sendP2pStateChangedBroadcast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2054
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2055
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2056
    if-eqz p1, :cond_0

    .line 2057
    const-string/jumbo v1, "wifi_p2p_state"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2063
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2064
    return-void

    .line 2060
    :cond_0
    const-string/jumbo v1, "wifi_p2p_state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendPeersChangedBroadcast()V
    .locals 4

    .prologue
    .line 2088
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2089
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "wifiP2pDeviceList"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2090
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2091
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2092
    return-void
.end method

.method private sendServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    .locals 8
    .param p1, "resp"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .prologue
    const/4 v7, 0x0

    .line 2966
    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 2967
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->getTransactionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 2968
    .local v4, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v4, :cond_0

    .line 2969
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 2970
    .local v3, "msg":Landroid/os/Message;
    const v5, 0x22032

    iput v5, v3, Landroid/os/Message;->what:I

    .line 2971
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 2972
    iput v7, v3, Landroid/os/Message;->arg2:I

    .line 2973
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2975
    :try_start_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2976
    :catch_0
    move-exception v1

    .line 2978
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13200(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/os/Messenger;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearClientInfo(Landroid/os/Messenger;)V

    .line 2983
    .end local v0    # "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_1
    return-void
.end method

.method private sendThisDeviceChangedBroadcast()V
    .locals 4

    .prologue
    .line 2081
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2082
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2083
    const-string/jumbo v1, "wifiP2pDevice"

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2084
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2085
    return-void
.end method

.method private setAndPersistDeviceName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "devName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2604
    if-nez p1, :cond_0

    .line 2617
    :goto_0
    return v0

    .line 2606
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNative;->setDeviceName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set device name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2611
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 2612
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setP2pSsidPostfix(Ljava/lang/String;)Z

    .line 2614
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_p2p_device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2616
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 2617
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setWfdInfo(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)Z
    .locals 5
    .param p1, "wfdInfo"    # Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2623
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2624
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiNative;->setWfdEnable(Z)Z

    move-result v0

    .line 2631
    .local v0, "success":Z
    :goto_0
    if-nez v0, :cond_2

    .line 2632
    const-string v1, "Failed to set wfd properties"

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2638
    :goto_1
    return v2

    .line 2626
    .end local v0    # "success":Z
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiNative;->setWfdEnable(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceInfoHex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiNative;->setWfdDeviceInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .restart local v0    # "success":Z
    :goto_2
    goto :goto_0

    .end local v0    # "success":Z
    :cond_1
    move v0, v2

    goto :goto_2

    .line 2636
    .restart local v0    # "success":Z
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iput-object p1, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 2637
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    move v2, v1

    .line 2638
    goto :goto_1
.end method

.method private setWifiP2pInfoOnGroupFormation(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "serverInetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 2563
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 2564
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 2565
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 2566
    return-void
.end method

.method private startDhcpServer(Ljava/lang/String;)V
    .locals 5
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 2120
    const/4 v1, 0x0

    .line 2122
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 2123
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "192.168.49.1"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x18

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 2125
    invoke-virtual {v1}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 2126
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 2128
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$12300()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started Dhcp server on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2135
    :goto_0
    return-void

    .line 2129
    :catch_0
    move-exception v0

    .line 2130
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error configuring interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopDhcpServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 2139
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2145
    const-string v1, "Stopped Dhcp server"

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2146
    :goto_0
    return-void

    .line 2140
    :catch_0
    move-exception v0

    .line 2141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error stopping Dhcp server"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePersistentNetworks(Z)V
    .locals 15
    .param p1, "reload"    # Z

    .prologue
    .line 2299
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->listNetworks()Ljava/lang/String;

    move-result-object v8

    .line 2300
    .local v8, "listStr":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 2366
    :cond_0
    :goto_0
    return-void

    .line 2302
    :cond_1
    const/4 v6, 0x0

    .line 2303
    .local v6, "isSaveRequired":Z
    const-string v13, "\n"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2304
    .local v7, "lines":[Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2306
    if-eqz p1, :cond_2

    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13}, Landroid/net/wifi/p2p/WifiP2pGroupList;->clear()Z

    .line 2309
    :cond_2
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    array-length v13, v7

    if-ge v5, v13, :cond_8

    .line 2310
    aget-object v13, v7, v5

    const-string v14, "\t"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2311
    .local v11, "result":[Ljava/lang/String;
    if-eqz v11, :cond_3

    array-length v13, v11

    const/4 v14, 0x4

    if-ge v13, v14, :cond_4

    .line 2309
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2315
    :cond_4
    const/4 v10, -0x1

    .line 2316
    .local v10, "netId":I
    const/4 v13, 0x1

    aget-object v12, v11, v13

    .line 2317
    .local v12, "ssid":Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v0, v11, v13

    .line 2318
    .local v0, "bssid":Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v3, v11, v13

    .line 2320
    .local v3, "flags":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_0
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 2326
    const-string v13, "[CURRENT]"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 2329
    const-string v13, "[P2P-PERSISTENT]"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 2335
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v13, v10}, Landroid/net/wifi/WifiNative;->removeNetwork(I)Z

    .line 2336
    const/4 v6, 0x1

    .line 2337
    goto :goto_2

    .line 2321
    :catch_0
    move-exception v2

    .line 2322
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 2340
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13, v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->contains(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 2344
    new-instance v4, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 2345
    .local v4, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v4, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 2346
    invoke-virtual {v4, v12}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 2347
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string/jumbo v14, "mode"

    invoke-virtual {v13, v10, v14}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2348
    .local v9, "mode":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string v13, "3"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2349
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 2351
    :cond_6
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    iget-object v13, v13, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2352
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v13}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2358
    :goto_3
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-virtual {v13, v4}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 2359
    const/4 v6, 0x1

    goto :goto_2

    .line 2354
    :cond_7
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 2355
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2356
    invoke-virtual {v4, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_3

    .line 2362
    .end local v0    # "bssid":Ljava/lang/String;
    .end local v1    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v3    # "flags":Ljava/lang/String;
    .end local v4    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v9    # "mode":Ljava/lang/String;
    .end local v10    # "netId":I
    .end local v11    # "result":[Ljava/lang/String;
    .end local v12    # "ssid":Ljava/lang/String;
    :cond_8
    if-nez p1, :cond_9

    if-eqz v6, :cond_0

    .line 2363
    :cond_9
    iget-object v13, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v13}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 2364
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pPersistentGroupsChangedBroadcast()V

    goto/16 :goto_0
.end method

.method private updateSupplicantServiceRequest()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 2790
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->clearSupplicantServiceRequest()V

    .line 2792
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2793
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$12600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;

    .line 2796
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 2797
    # getter for: Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->mReqList:Landroid/util/SparseArray;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;->access$13000(Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 2798
    .local v3, "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    if-eqz v3, :cond_1

    .line 2799
    invoke-virtual {v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->getSupplicantQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2796
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2804
    .end local v0    # "c":Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;
    .end local v1    # "i":I
    .end local v3    # "req":Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 2812
    :cond_3
    :goto_1
    return v5

    .line 2808
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiNative;->p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService;->access$6002(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 2809
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$6000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2812
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private updateThisDevice(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 2674
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$4200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 2675
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendThisDeviceChangedBroadcast()V

    .line 2676
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2045
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiP2pInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedPeerConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSavedP2pGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2051
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2778
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2783
    const-string v0, "WifiP2pService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    return-void
.end method
