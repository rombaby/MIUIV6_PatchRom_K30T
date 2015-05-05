.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_CAPTIVE_PORTAL_TEST_COMPLETED:Ljava/lang/String; = "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

.field public static final ACTION_DATA_ACTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.DATA_ACTIVITY_CHANGE"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

.field public static final CONNECTIVITY_CHANGE_DELAY_DEFAULT:I = 0xbb8

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "captivePortal"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field public static final MAX_NETWORK_TYPE:I = 0xe

.field public static final MAX_RADIO_TYPE:I = 0xe

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHER_CONNECT_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_CONNECT_STATE_CHANGED"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_IA:I = 0xe

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/IConnectivityManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Landroid/net/IConnectivityManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 917
    const-string/jumbo v0, "missing package name"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mPackageName:Ljava/lang/String;

    .line 918
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 922
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 430
    packed-switch p0, :pswitch_data_0

    .line 462
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 432
    :pswitch_0
    const-string v0, "MOBILE"

    goto :goto_0

    .line 434
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 436
    :pswitch_2
    const-string v0, "MOBILE_MMS"

    goto :goto_0

    .line 438
    :pswitch_3
    const-string v0, "MOBILE_SUPL"

    goto :goto_0

    .line 440
    :pswitch_4
    const-string v0, "MOBILE_DUN"

    goto :goto_0

    .line 442
    :pswitch_5
    const-string v0, "MOBILE_HIPRI"

    goto :goto_0

    .line 444
    :pswitch_6
    const-string v0, "WIMAX"

    goto :goto_0

    .line 446
    :pswitch_7
    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 448
    :pswitch_8
    const-string v0, "DUMMY"

    goto :goto_0

    .line 450
    :pswitch_9
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 452
    :pswitch_a
    const-string v0, "MOBILE_FOTA"

    goto :goto_0

    .line 454
    :pswitch_b
    const-string v0, "MOBILE_IMS"

    goto :goto_0

    .line 456
    :pswitch_c
    const-string v0, "MOBILE_CBS"

    goto :goto_0

    .line 458
    :pswitch_d
    const-string v0, "WIFI_P2P"

    goto :goto_0

    .line 460
    :pswitch_e
    const-string v0, "MOBILE_IA"

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static isNetworkTypeExempt(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 511
    sparse-switch p0, :sswitch_data_0

    .line 518
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 516
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 511
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 474
    packed-switch p0, :pswitch_data_0

    .line 486
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 484
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 418
    if-ltz p0, :cond_0

    const/16 v0, 0xe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkTypeWifi(I)Z
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 496
    sparse-switch p0, :sswitch_data_0

    .line 501
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 499
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 496
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 1373
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    :goto_0
    return-void

    .line 1374
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 1392
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    :goto_0
    return-void

    .line 1393
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkMobileProvisioning(I)I
    .locals 2
    .param p1, "suggestedTimeOutMs"    # I

    .prologue
    .line 1422
    const/4 v0, -0x1

    .line 1424
    .local v0, "timeOutMs":I
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->checkMobileProvisioning(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1427
    :goto_0
    return v0

    .line 1425
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 676
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 678
    :goto_0
    return-object v1

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 3

    .prologue
    .line 1473
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1476
    :goto_0
    return-object v1

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 574
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 576
    :goto_0
    return-object v1

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 595
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 597
    :goto_0
    return-object v1

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2

    .prologue
    .line 875
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 877
    :goto_0
    return-object v1

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    .locals 3

    .prologue
    .line 1486
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1489
    :goto_0
    return-object v1

    .line 1488
    :catch_0
    move-exception v0

    .line 1489
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 636
    :goto_0
    return-object v1

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 845
    const/4 v0, 0x1

    return v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 1255
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1257
    :goto_0
    return-object v1

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1177
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1179
    :goto_0
    return v1

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 696
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 698
    :goto_0
    return-object v1

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    .locals 3
    .param p1, "networkType"    # I

    .prologue
    .line 1460
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1}, Landroid/net/IConnectivityManager;->getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1463
    :goto_0
    return-object v1

    .line 1462
    :catch_0
    move-exception v0

    .line 1463
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 892
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 894
    :goto_0
    return v1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1436
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1439
    :goto_0
    return-object v0

    .line 1437
    :catch_0
    move-exception v0

    .line 1439
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1448
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1451
    :goto_0
    return-object v0

    .line 1449
    :catch_0
    move-exception v0

    .line 1451
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 616
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 618
    :goto_0
    return-object v1

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 553
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getNetworkPreference()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 555
    :goto_0
    return v1

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 657
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 659
    :goto_0
    return-object v1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 1274
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1276
    :goto_0
    return-object v1

    .line 1275
    :catch_0
    move-exception v0

    .line 1276
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTetherConnectedSta()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1134
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherConnectedSta()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1136
    :goto_0
    return-object v1

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1098
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1100
    :goto_0
    return-object v1

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 937
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 939
    :goto_0
    return-object v1

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1058
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1060
    :goto_0
    return-object v1

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1078
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1080
    :goto_0
    return-object v1

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 954
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 956
    :goto_0
    return-object v1

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 977
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 979
    :goto_0
    return-object v1

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    .prologue
    .line 1337
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isActiveNetworkMetered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1339
    :goto_0
    return v1

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 1316
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1318
    :goto_0
    return v0

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 2

    .prologue
    .line 1038
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1040
    :goto_0
    return v1

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportInetCondition(II)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .prologue
    .line 1218
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    :goto_0
    return-void

    .line 1219
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "forWhom"    # Ljava/lang/String;

    .prologue
    .line 1198
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    const/4 v1, 0x1

    .line 1201
    :goto_0
    return v1

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestRouteToHost(II)Z
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # I

    .prologue
    .line 797
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 799
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 800
    const/4 v1, 0x0

    .line 803
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 817
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 819
    .local v0, "address":[B
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    iget-object v3, p0, Landroid/net/ConnectivityManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, p1, v0, v3}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[BLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 821
    :goto_0
    return v2

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAirplaneMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1520
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setAirplaneMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1523
    :goto_0
    return-void

    .line 1521
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .param p1, "allowBackgroundData"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 861
    return-void
.end method

.method public setDataDependency(IZ)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "met"    # Z

    .prologue
    .line 1294
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setDataDependency(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :goto_0
    return-void

    .line 1295
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 1
    .param p1, "p"    # Landroid/net/ProxyProperties;

    .prologue
    .line 1238
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    :goto_0
    return-void

    .line 1239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 907
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :goto_0
    return-void

    .line 908
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 1
    .param p1, "preference"    # I

    .prologue
    .line 535
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 1504
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    :goto_0
    return-void

    .line 1505
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRadio(IZ)Z
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "turnOn"    # Z

    .prologue
    .line 736
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setRadio(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 738
    :goto_0
    return v1

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 2
    .param p1, "turnOn"    # Z

    .prologue
    .line 716
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setRadios(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 718
    :goto_0
    return v1

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1120
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1122
    :goto_0
    return v1

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 757
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 760
    :goto_0
    return v1

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;I)I
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2, p3}, Landroid/net/IConnectivityManager;->startUsingNetworkFeatureMSim(ILjava/lang/String;Landroid/os/IBinder;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 779
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 781
    :goto_0
    return v1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;I)I
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeatureMSim(ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public supplyMessenger(ILandroid/os/Messenger;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 1406
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    :goto_0
    return-void

    .line 1407
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1001
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1003
    :goto_0
    return v1

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1019
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1021
    :goto_0
    return v1

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public updateLockdownVpn()Z
    .locals 2

    .prologue
    .line 1354
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->updateLockdownVpn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1356
    :goto_0
    return v1

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
