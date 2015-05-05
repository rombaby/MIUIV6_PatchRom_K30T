.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_captivePortalCheckComplete:I = 0x31

.field static final TRANSACTION_captivePortalCheckCompleted:I = 0x32

.field static final TRANSACTION_checkMobileProvisioning:I = 0x35

.field static final TRANSACTION_establishVpn:I = 0x2c

.field static final TRANSACTION_findConnectionTypeForIface:I = 0x34

.field static final TRANSACTION_getActiveLinkProperties:I = 0xa

.field static final TRANSACTION_getActiveLinkQualityInfo:I = 0x39

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x4

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x5

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0xd

.field static final TRANSACTION_getAllLinkQualityInfo:I = 0x3a

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0xc

.field static final TRANSACTION_getGlobalProxy:I = 0x26

.field static final TRANSACTION_getLastTetherError:I = 0x1a

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2f

.field static final TRANSACTION_getLinkProperties:I = 0xb

.field static final TRANSACTION_getLinkQualityInfo:I = 0x38

.field static final TRANSACTION_getMobileDataEnabled:I = 0x15

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x36

.field static final TRANSACTION_getMobileRedirectedProvisioningUrl:I = 0x37

.field static final TRANSACTION_getNetworkInfo:I = 0x6

.field static final TRANSACTION_getNetworkPreference:I = 0x3

.field static final TRANSACTION_getProvisioningOrActiveNetworkInfo:I = 0x8

.field static final TRANSACTION_getProxy:I = 0x28

.field static final TRANSACTION_getTetherConnectedSta:I = 0x23

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x21

.field static final TRANSACTION_getTetherableIfaces:I = 0x1c

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x1f

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x20

.field static final TRANSACTION_getTetheredIfaces:I = 0x1d

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1e

.field static final TRANSACTION_getVpnConfig:I = 0x2d

.field static final TRANSACTION_isActiveNetworkMetered:I = 0xe

.field static final TRANSACTION_isNetworkSupported:I = 0x9

.field static final TRANSACTION_isTetheringSupported:I = 0x1b

.field static final TRANSACTION_markSocketAsUser:I = 0x1

.field static final TRANSACTION_prepareVpn:I = 0x2b

.field static final TRANSACTION_protectVpn:I = 0x2a

.field static final TRANSACTION_reportInetCondition:I = 0x25

.field static final TRANSACTION_requestNetworkTransitionWakelock:I = 0x24

.field static final TRANSACTION_requestRouteToHost:I = 0x13

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x14

.field static final TRANSACTION_setAirplaneMode:I = 0x3c

.field static final TRANSACTION_setDataDependency:I = 0x29

.field static final TRANSACTION_setGlobalProxy:I = 0x27

.field static final TRANSACTION_setMobileDataEnabled:I = 0x16

.field static final TRANSACTION_setNetworkPreference:I = 0x2

.field static final TRANSACTION_setPolicyDataEnable:I = 0x17

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x3b

.field static final TRANSACTION_setRadio:I = 0x10

.field static final TRANSACTION_setRadios:I = 0xf

.field static final TRANSACTION_setUsbTethering:I = 0x22

.field static final TRANSACTION_startLegacyVpn:I = 0x2e

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x11

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x12

.field static final TRANSACTION_supplyMessenger:I = 0x33

.field static final TRANSACTION_tether:I = 0x18

.field static final TRANSACTION_untether:I = 0x19

.field static final TRANSACTION_updateLockdownVpn:I = 0x30

.field static final TRANSACTION_startUsingNetworkFeatureMSim:I = 0x3c

.field static final TRANSACTION_stopUsingNetworkFeatureMSim:I = 0x3d

# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 746
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 46
    :sswitch_0
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 60
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->markSocketAsUser(Landroid/os/ParcelFileDescriptor;I)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 67
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v4

    .line 78
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v4    # "_result":I
    :sswitch_4
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 86
    .local v4, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {v4, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 101
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 102
    .restart local v4    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v4, :cond_2

    .line 104
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {v4, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 114
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 118
    .restart local v4    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {v4, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 124
    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 132
    .local v4, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 138
    .end local v4    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_8
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 140
    .local v4, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v4, :cond_4

    .line 142
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v4, p3, v7}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 146
    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_9
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v4

    .line 156
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v4, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 164
    .local v4, "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v4, :cond_6

    .line 166
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v4, p3, v7}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 170
    :cond_6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 176
    .end local v4    # "_result":Landroid/net/LinkProperties;
    :sswitch_b
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 180
    .restart local v4    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v4, :cond_7

    .line 182
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {v4, p3, v7}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 186
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/LinkProperties;
    :sswitch_c
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v4

    .line 194
    .local v4, "_result":[Landroid/net/NetworkState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 200
    .end local v4    # "_result":[Landroid/net/NetworkState;
    :sswitch_d
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v4

    .line 202
    .local v4, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v4, :cond_8

    .line 204
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {v4, p3, v7}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 208
    :cond_8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v4    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_e
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v4

    .line 216
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v4, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 222
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    move v0, v7

    .line 225
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v4

    .line 226
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v4, :cond_a

    move v6, v7

    :cond_a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_b
    move v0, v6

    .line 224
    goto :goto_2

    .line 232
    :sswitch_10
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    move v1, v7

    .line 237
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v4

    .line 238
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v4, :cond_c

    move v6, v7

    :cond_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_d
    move v1, v6

    .line 236
    goto :goto_3

    .line 244
    .end local v0    # "_arg0":I
    :sswitch_11
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 248
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 251
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    .line 252
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :sswitch_12
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 263
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v4

    .line 264
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 270
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_13
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(IILjava/lang/String;)Z

    move-result v4

    .line 278
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v4, :cond_e

    move v6, v7

    :cond_e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 284
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_14
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 290
    .local v1, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v4

    .line 292
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v4, :cond_f

    move v6, v7

    :cond_f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 298
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_15
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v4

    .line 300
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v4, :cond_10

    move v6, v7

    :cond_10
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 306
    .end local v4    # "_result":Z
    :sswitch_16
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    move v1, v7

    .line 311
    .local v1, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Ljava/lang/String;Z)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_11
    move v1, v6

    .line 310
    goto :goto_4

    .line 317
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12

    move v1, v7

    .line 322
    .restart local v1    # "_arg1":Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_12
    move v1, v6

    .line 321
    goto :goto_5

    .line 328
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v4

    .line 332
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 338
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_19
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v4

    .line 342
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 348
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1a
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v4

    .line 352
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1b
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v4

    .line 360
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v4, :cond_13

    move v6, v7

    :cond_13
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 366
    .end local v4    # "_result":Z
    :sswitch_1c
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 376
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 384
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_1f
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 392
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 400
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 408
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_22
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_14

    move v0, v7

    .line 417
    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v4

    .line 418
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_14
    move v0, v6

    .line 416
    goto :goto_6

    .line 424
    :sswitch_23
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherConnectedSta()Ljava/util/List;

    move-result-object v5

    .line 426
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 432
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiDevice;>;"
    :sswitch_24
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 441
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_25
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 445
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 446
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 452
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_26
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 454
    .local v4, "_result":Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    if-eqz v4, :cond_15

    .line 456
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    invoke-virtual {v4, p3, v7}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 460
    :cond_15
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 466
    .end local v4    # "_result":Landroid/net/ProxyProperties;
    :sswitch_27
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    .line 469
    sget-object v6, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    .line 474
    .local v0, "_arg0":Landroid/net/ProxyProperties;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 472
    .end local v0    # "_arg0":Landroid/net/ProxyProperties;
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/ProxyProperties;
    goto :goto_7

    .line 480
    .end local v0    # "_arg0":Landroid/net/ProxyProperties;
    :sswitch_28
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 482
    .restart local v4    # "_result":Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    if-eqz v4, :cond_17

    .line 484
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    invoke-virtual {v4, p3, v7}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 488
    :cond_17
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 494
    .end local v4    # "_result":Landroid/net/ProxyProperties;
    :sswitch_29
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 498
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_18

    move v1, v7

    .line 499
    .local v1, "_arg1":Z
    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setDataDependency(IZ)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_18
    move v1, v6

    .line 498
    goto :goto_8

    .line 505
    .end local v0    # "_arg0":I
    :sswitch_2a
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1a

    .line 508
    sget-object v8, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 513
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_9
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->protectVpn(Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 514
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    if-eqz v4, :cond_19

    move v6, v7

    :cond_19
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 511
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_result":Z
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_9

    .line 520
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_2b
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 526
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    if-eqz v4, :cond_1b

    move v6, v7

    :cond_1b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 532
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_2c
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1c

    .line 535
    sget-object v8, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 540
    .local v0, "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_a
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 541
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v4, :cond_1d

    .line 543
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    invoke-virtual {v4, p3, v7}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 538
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_a

    .line 547
    .restart local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 553
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2d
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    .line 555
    .local v4, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    if-eqz v4, :cond_1e

    .line 557
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    invoke-virtual {v4, p3, v7}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 561
    :cond_1e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 567
    .end local v4    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_2e
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    .line 570
    sget-object v6, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 575
    .local v0, "_arg0":Lcom/android/internal/net/VpnProfile;
    :goto_b
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 573
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_b

    .line 581
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_2f
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v4

    .line 583
    .local v4, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    if-eqz v4, :cond_20

    .line 585
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    invoke-virtual {v4, p3, v7}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 589
    :cond_20
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 595
    .end local v4    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_30
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v4

    .line 597
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    if-eqz v4, :cond_21

    move v6, v7

    :cond_21
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 603
    .end local v4    # "_result":Z
    :sswitch_31
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    .line 606
    sget-object v6, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 611
    .local v0, "_arg0":Landroid/net/NetworkInfo;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 609
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_c

    .line 617
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_32
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_23

    .line 620
    sget-object v8, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 626
    .restart local v0    # "_arg0":Landroid/net/NetworkInfo;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_24

    move v1, v7

    .line 627
    .local v1, "_arg1":Z
    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 623
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    .end local v1    # "_arg1":Z
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_d

    :cond_24
    move v1, v6

    .line 626
    goto :goto_e

    .line 633
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_33
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 637
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    .line 638
    sget-object v6, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 643
    .local v1, "_arg1":Landroid/os/Messenger;
    :goto_f
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 641
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Messenger;
    goto :goto_f

    .line 649
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :sswitch_34
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v4

    .line 653
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 659
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_35
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 662
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v4

    .line 663
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 669
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_36
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v4

    .line 671
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 677
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;

    move-result-object v4

    .line 679
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 685
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_38
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 688
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;

    move-result-object v4

    .line 689
    .local v4, "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    if-eqz v4, :cond_26

    .line 691
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    invoke-virtual {v4, p3, v7}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 695
    :cond_26
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 701
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_39
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v4

    .line 703
    .restart local v4    # "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    if-eqz v4, :cond_27

    .line 705
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    invoke-virtual {v4, p3, v7}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 709
    :cond_27
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 715
    .end local v4    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_3a
    const-string v6, "android.net.IConnectivityManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;

    move-result-object v4

    .line 717
    .local v4, "_result":[Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {p3, v4, v7}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 723
    .end local v4    # "_result":[Landroid/net/LinkQualityInfo;
    :sswitch_3b
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_28

    move v0, v7

    .line 727
    .local v0, "_arg0":Z
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 729
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 731
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 732
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :cond_28
    move v0, v6

    .line 725
    goto :goto_10

    .line 738
    :sswitch_3c
    const-string v8, "android.net.IConnectivityManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_29

    move v0, v7

    .line 741
    .restart local v0    # "_arg0":Z
    :goto_11
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_29
    move v0, v6

    .line 740
    goto :goto_11

    .line 42
    nop

    :sswitch_miui_0
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .restart local v2    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeatureMSim(ILjava/lang/String;Landroid/os/IBinder;I)I

    move-result v4

    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_miui_1
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeatureMSim(ILjava/lang/String;I)I

    move-result v4

    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_miui_0
        0x3e -> :sswitch_miui_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
