.class public Landroid/provider/MultiSIMUtils;
.super Ljava/lang/Object;
.source "MultiSIMUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MultiSIMUtils"

.field protected static MAX_PHONE_COUNT_DS:I

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Landroid/provider/MultiSIMUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x2

    sput v0, Landroid/provider/MultiSIMUtils;->MAX_PHONE_COUNT_DS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sput-object p1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/provider/MultiSIMUtils;

    invoke-direct {v0, p0}, Landroid/provider/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    .line 46
    :cond_0
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 1
    .param p0, "subscription"    # I

    .prologue
    .line 202
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public deleteMessageFromIcc(II)Z
    .locals 1
    .param p1, "messageIndex"    # I
    .param p2, "subscription"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public endDulCall()Z
    .locals 5

    .prologue
    .line 258
    const-string v2, "MultiSIMUtils"

    const-string v3, "endDulCall"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 261
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 262
    .local v0, "hangUp":Z
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->endCall()Z

    move-result v0

    .line 263
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangUp1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-nez v0, :cond_0

    .line 266
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 267
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->endCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 271
    :cond_0
    :goto_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hangUp2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v0

    .line 268
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataSubscriberId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 282
    .local v1, "subscription":I
    :try_start_0
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 288
    :goto_0
    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 289
    :cond_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscription is invalid..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Set to 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x0

    .line 293
    :cond_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MultiSIMUtils"

    const-string v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "simid"    # I

    .prologue
    .line 64
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 216
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getPhoneType(I)I
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 173
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string v0, "Qualcomm"

    return-object v0
.end method

.method public getSIMContactsUri(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 152
    const-string v0, ""

    return-object v0
.end method

.method public getSIMSMSUri(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 156
    const-string v0, ""

    return-object v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 4
    .param p1, "simid"    # I

    .prologue
    .line 91
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    .line 92
    .local v0, "DUALCARD_SUPPORT":Z
    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const-string v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    .line 96
    .local v2, "iTel":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v2, :cond_0

    .line 98
    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getMSimSmscOnIcc(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 117
    .end local v2    # "iTel":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :goto_0
    return-object v3

    .line 99
    .restart local v2    # "iTel":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "iTel":Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_0
    :goto_1
    const-string v3, ""

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    .line 106
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 108
    .local v2, "iTel":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 110
    :try_start_1
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSmscOnIcc(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    .line 112
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "simid"    # I

    .prologue
    .line 221
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "simid"    # I

    .prologue
    .line 227
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 78
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 71
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registDualCardPhoneState(Landroid/telephony/PhoneStateListener;II)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "subscription"    # I

    .prologue
    .line 243
    sget-object v1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    const-string v2, "phone_msim"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MSimTelephonyManager;

    .line 245
    .local v0, "manager":Landroid/telephony/MSimTelephonyManager;
    invoke-virtual {p1, p3}, Landroid/telephony/PhoneStateListener;->setSubscriptionForMulti(I)V

    .line 246
    invoke-virtual {v0, p1, p2}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 248
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/MSimSmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 149
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subscription"    # I

    .prologue
    .line 137
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/MSimSmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 139
    return-void
.end method
