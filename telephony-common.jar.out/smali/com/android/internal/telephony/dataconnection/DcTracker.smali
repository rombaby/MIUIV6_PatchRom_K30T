.class public Lcom/android/internal/telephony/dataconnection/DcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DcTracker$2;,
        Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final EVENT_3GPP_RECORDS_LOADED:I = 0x64

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

.field public static final PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String;

.field public static final PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String;

.field private static final PUPPET_MASTER_RADIO_STRESS_TEST:Ljava/lang/String; = "gsm.defaultpdpcontext.active"

.field private static final SUPPORT_MPDN:Z


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

.field private mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCanSetPreferApn:Z

.field private mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

.field protected mOosIsDisconnect:Z

.field private mReregisterOnReconnectFailure:Z

.field mSimRecordsLoadedHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "content://telephony/carriers/preferapn_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    .line 124
    const-string v0, "persist.telephony.mpdn"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->SUPPORT_MPDN:Z

    .line 130
    const-string v0, "persist.telephony.cdma.protocol"

    const-string v1, "IP"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String;

    .line 136
    const-string v0, "persist.telephony.cdma.rproto"

    const-string v1, "IP"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 9
    .param p1, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const v8, 0x42015

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 103
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 142
    const-string v3, "persist.telephony.oosisdc"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOosIsDisconnect:Z

    .line 146
    iput-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    .line 148
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimRecordsLoadedHandler:Landroid/os/Handler;

    .line 179
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 180
    const-string v3, "GsmDCT"

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    .line 187
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".constructor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 188
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x42001

    invoke-interface {v3, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    iget-object v3, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x42006

    invoke-interface {v3, p0, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const v4, 0x4202b

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForIwlanAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    const v4, 0x42008

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    const v4, 0x42007

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const v4, 0x42010

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const v4, 0x42009

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const v4, 0x4200b

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 203
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const v4, 0x4200c

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const v4, 0x42016

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 207
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const v4, 0x42017

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    const v4, 0x42028

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 212
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3, v4, p0, v8, v6}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 217
    invoke-virtual {p0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    :cond_0
    iput-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionTracker:Landroid/os/Handler;

    .line 222
    sget-boolean v3, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->OMH_ENABLED:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 223
    new-instance v4, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    move-object v3, p1

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    .line 224
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    const v4, 0x42029

    invoke-virtual {v3, p0, v4, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->registerForModemProfileReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    .line 229
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->initApnContexts()V

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUPPORT_MPDN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/DcTracker;->SUPPORT_MPDN:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMH_ENABLED = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->OMH_ENABLED:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 239
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.internal.telephony.data-reconnect."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.internal.telephony.data-restart-trysetup."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, v4, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_1

    .line 181
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 182
    const-string v3, "CdmaDCT"

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    goto/16 :goto_0

    .line 184
    :cond_3
    const-string v3, "DCT"

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected phone type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->supplyMessenger()V

    .line 245
    return-void
.end method

.method private addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "networkConfig"    # Landroid/net/NetworkConfig;

    .prologue
    .line 342
    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkConfig;)V

    .line 343
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 345
    return-object v0
.end method

.method private addDummyDataProfiles(Ljava/lang/String;)V
    .locals 33
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    .line 2315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAllApnList: Creating dummy apn for cdma operator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2316
    const/4 v2, 0x7

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "default"

    aput-object v3, v14, v2

    const/4 v2, 0x1

    const-string v3, "mms"

    aput-object v3, v14, v2

    const/4 v2, 0x2

    const-string v3, "supl"

    aput-object v3, v14, v2

    const/4 v2, 0x3

    const-string v3, "hipri"

    aput-object v3, v14, v2

    const/4 v2, 0x4

    const-string v3, "fota"

    aput-object v3, v14, v2

    const/4 v2, 0x5

    const-string v3, "ims"

    aput-object v3, v14, v2

    const/4 v2, 0x6

    const-string v3, "cbs"

    aput-object v3, v14, v2

    .line 2324
    .local v14, "defaultApnTypes":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v2, 0x0

    const-string v3, "dun"

    aput-object v3, v28, v2

    .line 2327
    .local v28, "dunApnTypes":[Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    sget-object v15, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String;

    sget-object v16, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String;

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2331
    .local v1, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2332
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .end local v1    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/16 v16, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3

    sget-object v29, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String;

    sget-object v30, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String;

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object v15, v1

    move-object/from16 v17, p1

    invoke-direct/range {v15 .. v32}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 2336
    .restart local v1    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    return-void
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2460
    .local p1, "apns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2461
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2462
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2466
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "enabled"    # Z
    .param p3, "met"    # Z

    .prologue
    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, "cleanup":Z
    const/4 v2, 0x0

    .line 1571
    .local v2, "trySetup":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyNewState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1575
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1576
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 1577
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 1578
    .local v1, "state":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1602
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :goto_0
    const/4 v0, 0x1

    .line 1616
    :cond_0
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    .line 1617
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDependencyMet(Z)V

    .line 1618
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1619
    :cond_1
    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    .line 1620
    :cond_2
    :goto_2
    return-void

    .line 1584
    .restart local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :pswitch_0
    const-string v3, "applyNewState: \'ready\' so return"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1592
    :pswitch_1
    const/4 v2, 0x1

    .line 1593
    const-string v3, "dataEnabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 1597
    .end local v1    # "state":Lcom/android/internal/telephony/DctConstants$State;
    :cond_3
    if-nez p2, :cond_4

    .line 1598
    const-string v3, "dataDisabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 1600
    :cond_4
    const-string v3, "dependencyUnmet"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 1604
    :cond_5
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1605
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1606
    const-string v3, "dependencyMet"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1610
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_6

    .line 1611
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1613
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 1608
    :cond_7
    const-string v3, "dataEnabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_3

    .line 1578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "requestedApnType"    # Ljava/lang/String;
    .param p2, "radioTech"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 2376
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: E requestedApnType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2379
    .local v1, "apnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const-string v7, "dun"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2380
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v2

    .line 2381
    .local v2, "dun":Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-eqz v2, :cond_0

    .line 2382
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2383
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: X added APN_TYPE_DUN apnList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2456
    .end local v2    # "dun":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :goto_0
    return-object v1

    .line 2388
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 2394
    .local v5, "operator":Ljava/lang/String;
    const/4 v6, 0x1

    .line 2396
    .local v6, "usePreferred":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110056

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_2

    const/4 v6, 0x1

    .line 2403
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: usePreferred="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " canSetPreferApn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mPreferredApn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " operator="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " radioTech="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2409
    if-eqz v6, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: Preferred APN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2415
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2416
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget v7, v7, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget v7, v7, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-ne v7, p2, :cond_3

    .line 2417
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: X added preferred apnList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2396
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2398
    :catch_0
    move-exception v3

    .line 2399
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "buildWaitingApns: usePreferred NotFoundException set to true"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2400
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 2421
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    const-string v7, "buildWaitingApns: no preferred APN"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2422
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 2423
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 2431
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2432
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: mAllDps="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2433
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 2434
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: apn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2435
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2436
    iget v7, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    if-ne v7, p2, :cond_7

    .line 2437
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: adding apn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2426
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v7, "buildWaitingApns: no preferred APN"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2427
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 2428
    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    goto/16 :goto_2

    .line 2441
    .restart local v0    # "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: bearer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->bearer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "radioTech:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2447
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: couldn\'t handle requesedApnType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2453
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v7, "mAllDps is empty!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 2455
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildWaitingApns: X apnList="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 10
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1623
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v1

    .line 1624
    .local v1, "apnType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1626
    .local v4, "dunSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    const-string v8, "dun"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1627
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v4

    .line 1630
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: apnContext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1633
    const/4 v7, 0x0

    .line 1634
    .local v7, "potentialDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    const/4 v6, 0x0

    .line 1635
    .local v6, "potentialApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1636
    .local v2, "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v3

    .line 1637
    .local v3, "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v3, :cond_1

    .line 1638
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfile()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v0

    .line 1639
    .local v0, "apnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-eqz v4, :cond_2

    .line 1640
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1641
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1644
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: found dun conn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curApnCtx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1691
    .end local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v2    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_1
    return-object v3

    .line 1651
    .restart local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .restart local v2    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v3    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :pswitch_2
    move-object v7, v3

    .line 1652
    move-object v6, v2

    goto :goto_0

    .line 1658
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1659
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 1662
    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: found canHandle conn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curApnCtx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1669
    :pswitch_5
    move-object v7, v3

    .line 1670
    move-object v6, v2

    goto/16 :goto_0

    .line 1682
    .end local v0    # "apnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v2    # "curApnCtx":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "curDcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_3
    if-eqz v7, :cond_4

    .line 1684
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: found potential conn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " curApnCtx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move-object v3, v7

    .line 1687
    goto :goto_1

    .line 1690
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForCompatibleConnectedApnContext: NO conn apnContext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1691
    const/4 v3, 0x0

    goto :goto_1

    .line 1641
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1659
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private create3gppApnsList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2290
    const/4 v9, 0x0

    .line 2291
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2292
    .local v8, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 2293
    .local v7, "operator":Ljava/lang/String;
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2297
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create3gppApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2300
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2303
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2304
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2305
    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createApnList(Landroid/database/Cursor;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2307
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2310
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v9

    .line 2292
    .end local v7    # "operator":Ljava/lang/String;
    :cond_2
    const-string v7, ""

    goto :goto_0
.end method

.method private createAllApnList()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2244
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2245
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 2246
    .local v7, "operator":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2250
    .local v3, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and carrier_enabled = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2256
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2257
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createApnList(Landroid/database/Cursor;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    .line 2260
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2264
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2265
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v8

    .line 2266
    .local v8, "radioTech":I
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->OMH_ENABLED:Z

    if-nez v0, :cond_2

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccController;->getFamilyFromRadioTechnology(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2269
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addDummyDataProfiles(Ljava/lang/String;)V

    .line 2273
    .end local v8    # "radioTech":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2275
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 2286
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: X mAllDps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2287
    return-void

    .line 2279
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 2280
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2281
    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 2282
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 2284
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAllApnList: mPreferredApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createApnList(Landroid/database/Cursor;Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1133
    const/4 v3, 0x0

    .line 1134
    .local v3, "mvnoType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1136
    .local v2, "mvnoMatchData":Ljava/lang/String;
    :cond_0
    const-string v5, "mvno_type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1138
    .local v1, "cursorMvnoType":Ljava/lang/String;
    const-string v5, "mvno_match_data"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "cursorMvnoMatchData":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1141
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1162
    .end local v0    # "cursorMvnoMatchData":Ljava/lang/String;
    .end local v1    # "cursorMvnoType":Ljava/lang/String;
    .end local v2    # "mvnoMatchData":Ljava/lang/String;
    .end local v3    # "mvnoType":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createApnList: X result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1163
    return-object v4

    .line 1147
    .restart local v0    # "cursorMvnoMatchData":Ljava/lang/String;
    .restart local v1    # "cursorMvnoType":Ljava/lang/String;
    .restart local v2    # "mvnoMatchData":Ljava/lang/String;
    .restart local v3    # "mvnoType":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p2, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1149
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1150
    move-object v3, v1

    .line 1151
    move-object v2, v0

    .line 1152
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1155
    :cond_4
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 7

    .prologue
    .line 2341
    const-string v4, "createDataConnection E"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2343
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 2344
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDcc:Lcom/android/internal/telephony/dataconnection/DcController;

    invoke-static {v4, v2, p0, v5, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v0

    .line 2346
    .local v0, "conn":Lcom/android/internal/telephony/dataconnection/DataConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v1, v0, v4}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V

    .line 2348
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v1, v4, p0, v5}, Lcom/android/internal/util/AsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v3

    .line 2349
    .local v3, "status":I
    if-nez v3, :cond_0

    .line 2350
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getDataConnectionIdSync()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDataConnection() X id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2356
    return-object v1

    .line 2352
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createDataConnection: Could not connect to dcac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z
    .locals 4
    .param p1, "dcac"    # Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .prologue
    .line 1167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionNotInUse: check if dcac is inuse dcac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1168
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1169
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionNotInUse: in use by apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1171
    const/4 v2, 0x0

    .line 1180
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    return v2

    .line 1177
    :cond_1
    const-string v2, "dataConnectionNotInUse: tearDownAll"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1178
    const-string v2, "No connection"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 1179
    const-string v2, "dataConnectionNotInUse: not in use return true"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1180
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private destroyDataConnections()V
    .locals 1

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2361
    const-string v0, "destroyDataConnections: clear mDataConnectionList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2362
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2366
    :goto_0
    return-void

    .line 2364
    :cond_0
    const-string v0, "destroyDataConnections: mDataConnecitonList is empty, ignore"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findDataConnectionAcByCid(I)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 3
    .param p1, "cid"    # I

    .prologue
    .line 1319
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1320
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getCidSync()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1324
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .locals 4

    .prologue
    .line 1184
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    .line 1185
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->isInactiveSync()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findFreeDataConnection: found free DataConnection= dcac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1194
    .end local v0    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v0

    .line 1193
    :cond_1
    const-string v2, "findFreeDataConnection: NO free DataConnection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAnyDataEnabled(Z)Z
    .locals 8
    .param p1, "enableMmsData"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 618
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v4

    .line 619
    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-nez v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    sget-boolean v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z

    if-nez v5, :cond_2

    .line 621
    :cond_1
    const-string v2, "getAnyDataEnabled data disabled: mInternalDataEnabled=%b mUserDataEnabled=%b enableMmsData=%b sPolicyDataEnabled=%b"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-boolean v7, Lcom/android/internal/telephony/dataconnection/DcTracker;->sPolicyDataEnabled:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 625
    monitor-exit v4

    move v2, v3

    .line 634
    :goto_0
    return v2

    .line 627
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 630
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 631
    monitor-exit v4

    goto :goto_0

    .line 635
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 634
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    goto :goto_0
.end method

.method private getApnDelay()I
    .locals 2

    .prologue
    .line 1981
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mFailFast:Z

    if-eqz v0, :cond_0

    .line 1982
    const-string v0, "persist.radio.apn_ff_delay"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1985
    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.radio.apn_delay"

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getCellLocationId()I
    .locals 3

    .prologue
    .line 2666
    const/4 v0, -0x1

    .line 2667
    .local v0, "cid":I
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 2669
    .local v1, "loc":Landroid/telephony/CellLocation;
    if-eqz v1, :cond_0

    .line 2670
    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_1

    .line 2671
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 2676
    :cond_0
    :goto_0
    return v0

    .line 2672
    .restart local v1    # "loc":Landroid/telephony/CellLocation;
    :cond_1
    instance-of v2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    .line 2673
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1    # "loc":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_0
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2227
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isNvSubscription()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2228
    const-string v2, "ro.cdma.home.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2229
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorNumberic - returning from NV: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2235
    :goto_0
    if-nez v1, :cond_0

    const-string v1, ""

    .line 2236
    :cond_0
    return-object v1

    .line 2231
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2232
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2233
    .restart local v1    # "result":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorNumberic - returning from card: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2232
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 2488
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2489
    const-string v0, "getPreferredApn: X not found mAllDps.isEmpty"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2524
    :goto_0
    return-object v3

    .line 2493
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2497
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 2498
    iput-boolean v11, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    .line 2502
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferredApn: mRequestedApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cursor.count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2505
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2507
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2508
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2509
    .local v9, "pos":I
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 2510
    .local v8, "p":Lcom/android/internal/telephony/dataconnection/DataProfile;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferredApn: apnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2511
    iget v0, v8, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferredApn: X found apnSetting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2513
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 2514
    goto/16 :goto_0

    .line 2500
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "p":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v9    # "pos":I
    :cond_2
    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    goto/16 :goto_1

    :cond_3
    move v0, v10

    .line 2502
    goto :goto_2

    .line 2519
    :cond_4
    if-eqz v6, :cond_5

    .line 2520
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2523
    :cond_5
    const-string v0, "getPreferredApn: X not found"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "imsiDB"    # Ljava/lang/String;
    .param p2, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1058
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1059
    .local v3, "len":I
    const/4 v2, 0x0

    .line 1061
    .local v2, "idxCompare":I
    if-gtz v3, :cond_1

    .line 1072
    :cond_0
    :goto_0
    return v4

    .line 1062
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v3, v5, :cond_0

    .line 1064
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1065
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1066
    .local v0, "c":C
    const/16 v5, 0x78

    if-eq v0, v5, :cond_2

    const/16 v5, 0x58

    if-eq v0, v5, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 1064
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1072
    .end local v0    # "c":C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isAnyActiveApnContextHandlesType(Ljava/lang/String;)Z
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1336
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1337
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1339
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfile()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v1

    .line 1340
    .local v1, "apnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAnyActiveApnContextHandlesType:  - apnContext = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can handle apnType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1344
    const/4 v3, 0x1

    .line 1348
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v1    # "apnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 5
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v2, 0x0

    .line 1373
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1374
    .local v1, "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1379
    .end local v1    # "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    :goto_0
    return v2

    .line 1375
    .restart local v1    # "otherContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v3, v4, :cond_0

    .line 1376
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isHigherPriorityDataCallActive(Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1352
    const/4 v5, 0x0

    .line 1353
    .local v5, "result":Z
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1356
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPrioritySortedApnContextList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/telephony/dataconnection/ApnContext;

    .local v2, "arr$":[Lcom/android/internal/telephony/dataconnection/ApnContext;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 1357
    .local v1, "apnContextEntry":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isHigherPriority(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v6, v7, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v7, :cond_2

    .line 1360
    :cond_0
    const/4 v5, 0x1

    .line 1364
    .end local v1    # "apnContextEntry":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    return v5

    .line 1356
    .restart local v1    # "apnContextEntry":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isNvSubscription()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2209
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 2210
    .local v0, "radioTech":I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-nez v3, :cond_1

    .line 2218
    :cond_0
    :goto_0
    return v1

    .line 2213
    :cond_1
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getFamilyFromRadioTechnology(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 2216
    goto :goto_0
.end method

.method private isOnlySingleDcAllowed(I)Z
    .locals 5
    .param p1, "rilRadioTech"    # I

    .prologue
    .line 1389
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 1391
    .local v2, "singleDcRats":[I
    const/4 v1, 0x0

    .line 1392
    .local v1, "onlySingleDcAllowed":Z
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "persist.telephony.test.singleDc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1394
    const/4 v1, 0x1

    .line 1396
    :cond_0
    if-eqz v2, :cond_2

    .line 1397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    if-nez v1, :cond_2

    .line 1398
    aget v3, v2, v0

    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    .line 1397
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1402
    .end local v0    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOnlySingleDcAllowed("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1403
    return v1
.end method

.method private makeApnSetting(Landroid/database/Cursor;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 20
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1098
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1100
    .local v15, "types":[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x1

    :goto_0
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1126
    .local v2, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v2

    .line 1100
    .end local v2    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_0
    const/16 v18, 0x0

    goto :goto_0
.end method

.method private mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p2, "mvno_type"    # Ljava/lang/String;
    .param p3, "mvno_match_data"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1076
    const-string v5, "spn"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1077
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1094
    :cond_0
    :goto_0
    return v3

    .line 1081
    :cond_1
    const-string v5, "imsi"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1082
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 1083
    .local v1, "imsiSIM":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-direct {p0, p3, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v1    # "imsiSIM":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 1094
    goto :goto_0

    .line 1086
    :cond_3
    const-string v5, "gid"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1087
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1089
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v2, :cond_2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0
.end method

.method private notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 3
    .param p1, "lastFailCauseCode"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNoData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    :cond_0
    return-void
.end method

.method private onApnChanged()V
    .locals 2

    .prologue
    .line 1273
    const-string v0, "onApnChanged: tryRestartDataConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1274
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->create3gppApnsList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInitialAttachApn(Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 1275
    const-string v0, "apnChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->tryRestartDataConnections(Ljava/lang/String;)V

    .line 1276
    return-void
.end method

.method private onDataConnectionAttached()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 670
    const-string v0, "onDataConnectionAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 672
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 673
    const-string v0, "onDataConnectionAttached: start polling notify attached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 675
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    .line 676
    const-string v0, "dataAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 681
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    .line 682
    const-string v0, "dataAttached"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 683
    return-void

    .line 679
    :cond_0
    const-string v0, "dataAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onModemDataProfileReady()V
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 1306
    const/4 v0, 0x0

    const-string v1, "psRestrictEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 1308
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1309
    const-string v0, "OMH: onModemDataProfileReady(): Setting up data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1310
    const-string v0, "simLoaded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 1312
    :cond_1
    return-void
.end method

.method private onNvReady()V
    .locals 1

    .prologue
    .line 1543
    const-string v0, "onNvReady"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1544
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 1545
    const-string v0, "nvReady"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 1546
    return-void
.end method

.method private onRecordsLoaded()V
    .locals 3

    .prologue
    .line 1512
    const-string v1, "onRecordsLoaded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1514
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    if-eqz v1, :cond_1

    .line 1515
    const-string v1, "OMH: onRecordsLoaded(): calling loadProfiles()"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1517
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->loadProfiles()V

    .line 1518
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1519
    const-string v1, "onRecordsLoaded: notifying data availability"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1520
    const-string v1, "simLoaded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1523
    :cond_1
    const-string v1, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1524
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 1525
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1526
    const-string v1, "onRecordsLoaded: notifying data availability"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1527
    const-string v1, "simLoaded"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1529
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v0

    .line 1530
    .local v0, "isDisconnected":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordsLoaded: isDisconnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1532
    if-eqz v0, :cond_0

    .line 1533
    const-string v1, "simLoaded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 1042
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1044
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 1048
    :goto_0
    return-object v0

    .line 1046
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1454
    const/4 v1, 0x1

    .line 1455
    .local v1, "retry":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, "reason":Ljava/lang/String;
    const-string v2, "radioTurnedOff"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->SUPPORT_MPDN:Z

    if-nez v2, :cond_2

    const-string v2, "SinglePdnArbitration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1461
    :cond_1
    const/4 v1, 0x0

    .line 1463
    :cond_2
    return v1
.end method

.method private setPreferredApn(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x0

    .line 2470
    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    if-nez v2, :cond_1

    .line 2471
    const-string v2, "setPreferredApn: X !canSEtPreferApn"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2485
    :cond_0
    :goto_0
    return-void

    .line 2475
    :cond_1
    const-string v2, "setPreferredApn: delete"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2476
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2477
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2479
    if-ltz p1, :cond_0

    .line 2480
    const-string v2, "setPreferredApn: insert"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2481
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2482
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2483
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z
    .locals 9
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "radioTech"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupData: apnContext="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v3

    .line 1203
    .local v3, "profileId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getNextWaitingApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v6

    .line 1204
    .local v6, "apnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-nez v6, :cond_0

    .line 1205
    const-string v2, "setupData: return for no apn found!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1266
    :goto_0
    return v1

    .line 1209
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->checkForCompatibleConnectedApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 1210
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v0, :cond_1

    .line 1212
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getApnSettingSync()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v7

    .line 1213
    .local v7, "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-eqz v7, :cond_1

    .line 1215
    move-object v6, v7

    .line 1218
    .end local v7    # "dcacApnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_1
    if-nez v0, :cond_6

    .line 1219
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1220
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityApnContextActive(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1222
    const-string v2, "setupData: Higher priority ApnContext active.  Ignoring call"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1230
    :cond_2
    const-string v2, "SinglePdnArbitration"

    invoke-virtual {p0, v8, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1234
    const-string v2, "setupData: Some calls are disconnecting first.  Wait and retry"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1239
    :cond_3
    const-string v2, "setupData: Single pdp. Continue setting up data call."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1242
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->findFreeDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 1244
    if-nez v0, :cond_5

    .line 1245
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createDataConnection()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 1248
    :cond_5
    if-nez v0, :cond_6

    .line 1249
    const-string v2, "setupData: No free DataConnection and couldn\'t create one, WEIRD"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupData: dcac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apnSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 1256
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)V

    .line 1257
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1258
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 1261
    .local v5, "msg":Landroid/os/Message;
    const v1, 0x42000

    iput v1, v5, Landroid/os/Message;->what:I

    .line 1262
    iput-object p1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1263
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInitialMaxRetry()I

    move-result v2

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->bringUp(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILandroid/os/Message;)V

    .line 1265
    const-string v1, "setupData: initing!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    move v1, v8

    .line 1266
    goto/16 :goto_0
.end method

.method private setupDataOnConnectableApns(Ljava/lang/String;)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupDataOnConnectableApns: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 740
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 741
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupDataOnConnectableApns: apnContext "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v7, :cond_1

    .line 743
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 745
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 746
    const-string v6, "setupDataOnConnectableApns: isConnectable() call trySetupData"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 748
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    if-eqz v6, :cond_4

    .line 751
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->getDataProfile(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v1

    .line 753
    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-eqz v1, :cond_4

    .line 754
    const/4 v2, 0x0

    .line 755
    .local v2, "dupFound":Z
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 756
    .local v5, "temp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip addition of duplicate profile, dp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 758
    const/4 v2, 0x1

    .line 762
    .end local v5    # "temp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_3
    if-nez v2, :cond_4

    .line 763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding dp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in mAllDps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 764
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v2    # "dupFound":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 772
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    goto/16 :goto_0

    .line 775
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_5
    return-void
.end method

.method private startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 9
    .param p1, "delay"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1467
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v1

    .line 1469
    .local v1, "apnType":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.internal.telephony.data-reconnect."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "reconnect_alarm_extra_reason"

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1471
    const-string v3, "reconnect_alarm_extra_type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAlarmForReconnect: delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1478
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1480
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .line 1481
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, p1

    add-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1483
    return-void
.end method

.method private startAlarmForRestartTrySetup(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 9
    .param p1, "delay"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1486
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v1

    .line 1487
    .local v1, "apnType":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.internal.telephony.data-restart-trysetup."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "restart_trysetup_alarm_extra_type"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAlarmForRestartTrySetup: delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1494
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1496
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .line 1497
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, p1

    add-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1499
    return-void
.end method

.method private tryRestartDataConnections(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1279
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 1280
    .local v1, "overallState":Lcom/android/internal/telephony/DctConstants$State;
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_3

    :cond_0
    move v0, v4

    .line 1283
    .local v0, "isDisconnected":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_1

    .line 1285
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 1288
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    if-eqz v2, :cond_4

    .line 1289
    const-string v2, "OMH: tryRestartDataConnections(): calling loadProfiles()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1291
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->loadProfiles()V

    .line 1302
    :cond_2
    :goto_1
    return-void

    .end local v0    # "isDisconnected":Z
    :cond_3
    move v0, v3

    .line 1280
    goto :goto_0

    .line 1295
    .restart local v0    # "isDisconnected":Z
    :cond_4
    const-string v2, "tryRestartDataConnections: createAllApnList and cleanUpAllConnections"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1296
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->createAllApnList()V

    .line 1297
    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 1298
    if-eqz v0, :cond_2

    .line 1299
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v4, v3

    .line 1297
    goto :goto_2
.end method

.method private trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 8
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v3, 0x0

    .line 779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trySetupData for type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 781
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trySetupData with mIsPsRestricted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 784
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 787
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 788
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v5, "trySetupData: X We\'re on the simulator; assuming connected retValue=true"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 791
    const/4 v3, 0x1

    .line 864
    :goto_0
    return v3

    .line 794
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 802
    .local v0, "desiredPowerState":Z
    sget-boolean v5, Lcom/android/internal/telephony/dataconnection/DcTracker;->SUPPORT_MPDN:Z

    if-nez v5, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isAnyActiveApnContextHandlesType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 804
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->disconnectOneLowerPriorityCall(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 805
    const-string v5, "Lower/Equal priority call disconnected."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isHigherPriorityDataCallActive(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 810
    const-string v5, "Higher priority call active. Ignoring setup data call request."

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 816
    :cond_2
    const/4 v1, 0x0

    .line 817
    .local v1, "enableMmsData":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 818
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 822
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAnyDataEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isEmergency()Z

    move-result v5

    if-nez v5, :cond_7

    .line 824
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_4

    .line 825
    const-string v5, "trySetupData: make a FAILED ApnContext IDLE so its reusable"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 826
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 828
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    .line 829
    .local v2, "radioTech":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_6

    .line 831
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->buildWaitingApns(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 833
    .local v4, "waitingDps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 834
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyNoData(Lcom/android/internal/telephony/dataconnection/DcFailCause;Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 835
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 836
    const-string v5, "trySetupData: X No APN found retValue=false"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    :cond_5
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setWaitingDataProfiles(Ljava/util/ArrayList;)V

    .line 841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trySetupData: Create from mAllDps : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 848
    .end local v4    # "waitingDps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trySetupData: call setupData, waitingApns : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 851
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupData(Lcom/android/internal/telephony/dataconnection/ApnContext;I)Z

    move-result v3

    .line 852
    .local v3, "retValue":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 854
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trySetupData: X retValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 857
    .end local v2    # "radioTech":I
    .end local v3    # "retValue":Z
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isConnectable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 859
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 863
    const-string v5, "trySetupData: X apnContext not \'ready\' retValue=false"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 4
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1023
    if-nez p1, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 1027
    .local v1, "intent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1028
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1030
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1031
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)Z
    .locals 5
    .param p1, "tearDown"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpAllConnections: tearDown="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 902
    const/4 v1, 0x0

    .line 904
    .local v1, "didDisconnect":Z
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 905
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 907
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 911
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 912
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 915
    const-string v3, "default"

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mRequestedApnType:Ljava/lang/String;

    .line 916
    return v1
.end method

.method protected cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 8
    .param p1, "tearDown"    # Z
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v7, 0x0

    .line 936
    if-nez p2, :cond_0

    .line 937
    const-string v4, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1015
    :goto_0
    return-void

    .line 941
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v0

    .line 943
    .local v0, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpConnection: E tearDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 946
    if-eqz p1, :cond_a

    .line 947
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 950
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 951
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v4

    if-nez v4, :cond_2

    .line 952
    if-eqz v0, :cond_1

    .line 953
    const-string v4, ""

    invoke-virtual {v0, p2, v4, v7}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 955
    :cond_1
    invoke-virtual {p2, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 1002
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    if-eqz v4, :cond_3

    .line 1003
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->clearActiveDataProfile()V

    .line 1008
    :cond_3
    if-eqz v0, :cond_4

    .line 1009
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1012
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpConnection: X tearDown="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dcac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 959
    :cond_5
    if-eqz v0, :cond_9

    .line 960
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v4, v5, :cond_2

    .line 961
    const/4 v1, 0x0

    .line 962
    .local v1, "disconnectAll":Z
    const-string v4, "dun"

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v2

    .line 964
    .local v2, "dunSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfile()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 966
    const-string v4, "tearing down dedicated DUN connection"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 971
    const/4 v1, 0x1

    .line 975
    .end local v2    # "dunSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanUpConnection: tearing down"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_7

    const-string v4, " all"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 977
    const v4, 0x4200f

    invoke-virtual {p0, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 978
    .local v3, "msg":Landroid/os/Message;
    if-eqz v1, :cond_8

    .line 979
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 984
    :goto_3
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    goto/16 :goto_1

    .line 975
    .end local v3    # "msg":Landroid/os/Message;
    :cond_7
    const-string v4, ""

    goto :goto_2

    .line 981
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_8
    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5, v3}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->tearDown(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 989
    .end local v1    # "disconnectAll":Z
    .end local v3    # "msg":Landroid/os/Message;
    :cond_9
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 990
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 996
    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->reqReset()V

    .line 997
    :cond_b
    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 998
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual {p2, v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    goto/16 :goto_1
.end method

.method protected completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v6, 0x0

    .line 1790
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v1

    .line 1792
    .local v1, "isProvApn":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeConnection: successful, notify the world apnContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1794
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeConnection: MOBILE_PROVISIONING_ACTION url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1799
    const-string v3, "android.intent.action.MAIN"

    const-string v4, "android.intent.category.APP_BROWSER"

    invoke-static {v3, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1801
    .local v2, "newIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1802
    const/high16 v3, 0x10400000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1805
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    .line 1811
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mProvisioningUrl:Ljava/lang/String;

    .line 1813
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 1815
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    .line 1816
    return-void

    .line 1806
    .restart local v2    # "newIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1807
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeConnection: startActivityAsUser failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 569
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 572
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setEnabled(IZ)V

    .line 574
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_0

    .line 576
    const-string v1, "diableApnType: return APN_REQUEST_STARTED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    const/4 v1, 0x1

    .line 587
    :goto_0
    monitor-exit p0

    return v1

    .line 579
    :cond_0
    :try_start_1
    const-string v1, "disableApnType: return APN_ALREADY_INACTIVE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 580
    const/4 v1, 0x4

    goto :goto_0

    .line 585
    :cond_1
    const-string v1, "disableApnType: no apn context was found, return APN_REQUEST_FAILED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    const/4 v1, 0x3

    goto :goto_0

    .line 569
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected disconnectOneLowerPriorityCall(Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1408
    const/4 v3, 0x0

    .line 1410
    .local v3, "disconnect":Z
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1413
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPrioritySortedApnContextList()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/telephony/dataconnection/ApnContext;

    .local v2, "arr$":[Lcom/android/internal/telephony/dataconnection/ApnContext;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 1414
    .local v1, "apnContextEntry":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isLowerPriority(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1416
    const/4 v3, 0x1

    .line 1419
    const-string v6, "SinglePdnArbitration"

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1420
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1425
    .end local v1    # "apnContextEntry":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disconnectOneLowerPriorityCall:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1427
    return v3

    .line 1413
    .restart local v1    # "apnContextEntry":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 249
    const-string v1, "dispose"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 252
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    .line 255
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 258
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 260
    .restart local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimRecordsLoadedHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPrioritySortedApnContexts:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->clear()V

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    if-eqz v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOmhDpt:Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->unregisterForModemProfileReady(Landroid/os/Handler;)V

    .line 283
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->destroyDataConnections()V

    .line 284
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2768
    const-string v0, "DataConnectionTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2769
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReregisterOnReconnectFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " canSetPreferApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnObserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mApnObserver:Lcom/android/internal/telephony/dataconnection/DcTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getOverallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataConnectionAsyncChannels=%s\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionAcHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SUPPORT_MPDN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTracker;->SUPPORT_MPDN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsOmhEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->OMH_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2778
    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 546
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 547
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 548
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is type not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    const/4 v1, 0x2

    .line 564
    :goto_0
    monitor-exit p0

    return v1

    .line 553
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_2

    .line 556
    const-string v1, "enableApnType: return APN_ALREADY_ACTIVE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 557
    const/4 v1, 0x0

    goto :goto_0

    .line 559
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnTypeToId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setEnabled(IZ)V

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType: new apn request for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return APN_REQUEST_STARTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 546
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 325
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 444
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfile()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v1

    .line 446
    .local v1, "apnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-eqz v1, :cond_0

    .line 447
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    .line 450
    .end local v1    # "apnSetting":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 427
    const-string v3, "get all active apn types"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 428
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 431
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getAnyDataEnabled()Z
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getAnyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method protected getApnProfileID(Ljava/lang/String;)I
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2650
    const-string v1, "ims"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2651
    const/4 v0, 0x2

    .line 2661
    :cond_0
    :goto_0
    return v0

    .line 2652
    :cond_1
    const-string v1, "fota"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2653
    const/4 v0, 0x3

    goto :goto_0

    .line 2654
    :cond_2
    const-string v1, "cbs"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2655
    const/4 v0, 0x4

    goto :goto_0

    .line 2656
    :cond_3
    const-string v1, "ia"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2658
    const-string v1, "dun"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2659
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 413
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 415
    .local v1, "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active pdp is not null, return link Capabilities for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 421
    .end local v1    # "dataConnectionAc":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    .line 420
    :cond_0
    const-string v2, "return new LinkCapabilities"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 421
    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    goto :goto_0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 399
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v1

    .line 401
    .local v1, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-eqz v1, :cond_0

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return link properites for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 407
    .end local v1    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    return-object v2

    .line 406
    :cond_0
    const-string v2, "return new LinkProperties"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 407
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 7

    .prologue
    .line 490
    const/4 v3, 0x0

    .line 491
    .local v3, "isConnecting":Z
    const/4 v4, 0x1

    .line 492
    .local v4, "isFailed":Z
    const/4 v2, 0x0

    .line 494
    .local v2, "isAnyEnabled":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 495
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 496
    const/4 v2, 0x1

    .line 497
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 512
    const/4 v2, 0x1

    goto :goto_0

    .line 500
    :pswitch_0
    const-string v5, "overall state is CONNECTED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 501
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    .line 531
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_1
    return-object v5

    .line 504
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :pswitch_1
    const/4 v3, 0x1

    .line 505
    const/4 v4, 0x0

    .line 506
    goto :goto_0

    .line 509
    :pswitch_2
    const/4 v4, 0x0

    .line 510
    goto :goto_0

    .line 518
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_1
    if-nez v2, :cond_2

    .line 519
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 520
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 523
    :cond_2
    if-eqz v3, :cond_3

    .line 524
    const-string v5, "overall state is CONNECTING"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 525
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 526
    :cond_3
    if-nez v4, :cond_4

    .line 527
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 528
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 530
    :cond_4
    const-string v5, "overall state is FAILED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 531
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_1

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 471
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 474
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_0
.end method

.method protected getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p1, "appFamily"    # I

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 1333
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2531
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsDisposed:Z

    if-eqz v3, :cond_2

    .line 2532
    :cond_0
    const-string v2, "handleMessage: Ignore GSM msgs since GSM phone is inactive"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 2647
    :cond_1
    :goto_0
    return-void

    .line 2536
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2644
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2538
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 2542
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionDetached()V

    goto :goto_0

    .line 2546
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataConnectionAttached()V

    goto :goto_0

    .line 2550
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->doRecovery()V

    goto :goto_0

    .line 2554
    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onApnChanged()V

    goto :goto_0

    .line 2564
    :sswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2565
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 2566
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 2567
    iput-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    goto :goto_0

    .line 2575
    :sswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2576
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    .line 2577
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2578
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 2579
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 2582
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_4

    .line 2583
    const-string v2, "psRestrictEnabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 2584
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 2586
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2587
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_5

    .line 2588
    const-string v2, "psRestrictEnabled"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2589
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    goto/16 :goto_0

    .line 2591
    :cond_5
    const-string v2, "**** Default ApnContext not found ****"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 2592
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1

    .line 2593
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Default ApnContext not found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2600
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v2, :cond_6

    .line 2601
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    goto/16 :goto_0

    .line 2602
    :cond_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 2603
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2605
    :cond_7
    const-string v2, "EVENT_TRY_SETUP request w/o apnContext or String"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2610
    :sswitch_8
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_8

    .line 2611
    .local v1, "tearDown":Z
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CLEAN_UP_CONNECTION tearDown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2612
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v2, :cond_9

    .line 2613
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto/16 :goto_0

    .end local v1    # "tearDown":Z
    :cond_8
    move v1, v2

    .line 2610
    goto :goto_1

    .line 2615
    .restart local v1    # "tearDown":Z
    :cond_9
    const-string v2, "EVENT_CLEAN_UP_CONNECTION request w/o apn context, call super"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 2616
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2624
    .end local v1    # "tearDown":Z
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onUpdateIcc()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2625
    const-string v2, "onUpdateIcc: tryRestartDataConnections nwTypeChanged"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2626
    const-string v2, "nwTypeChanged"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->tryRestartDataConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2627
    :cond_a
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->OMH_ENABLED:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isNvSubscription()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2630
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onNvReady()V

    goto/16 :goto_0

    .line 2635
    :sswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onModemDataProfileReady()V

    goto/16 :goto_0

    .line 2639
    :sswitch_b
    const-string v2, "iwlanAvailable"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2536
    :sswitch_data_0
    .sparse-switch
        0x42002 -> :sswitch_0
        0x42003 -> :sswitch_7
        0x42009 -> :sswitch_1
        0x42010 -> :sswitch_2
        0x42012 -> :sswitch_3
        0x42013 -> :sswitch_4
        0x42015 -> :sswitch_9
        0x42016 -> :sswitch_5
        0x42017 -> :sswitch_6
        0x42018 -> :sswitch_8
        0x42028 -> :sswitch_9
        0x42029 -> :sswitch_a
        0x4202b -> :sswitch_b
    .end sparse-switch
.end method

.method protected initApnContexts()V
    .locals 10

    .prologue
    .line 349
    const-string v8, "initApnContexts: E"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 350
    const-string v8, "net.def_data_on_boot"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 352
    .local v2, "defaultEnabled":Z
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 354
    .local v7, "networkConfigStrings":[Ljava/lang/String;
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v1, v3

    .line 355
    .local v6, "networkConfigString":Ljava/lang/String;
    new-instance v5, Landroid/net/NetworkConfig;

    invoke-direct {v5, v6}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 356
    .local v5, "networkConfig":Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    .line 358
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget v8, v5, Landroid/net/NetworkConfig;->type:I

    packed-switch v8, :pswitch_data_0

    .line 388
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initApnContexts: skipping unknown type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 354
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :pswitch_1
    const-string v8, "default"

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 361
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setEnabled(Z)V

    .line 391
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initApnContexts: apnContext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :pswitch_2
    const-string v8, "mms"

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 365
    goto :goto_2

    .line 367
    :pswitch_3
    const-string v8, "supl"

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 368
    goto :goto_2

    .line 370
    :pswitch_4
    const-string v8, "dun"

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 371
    goto :goto_2

    .line 373
    :pswitch_5
    const-string v8, "hipri"

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 374
    goto :goto_2

    .line 376
    :pswitch_6
    const-string v8, "fota"

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 377
    goto :goto_2

    .line 379
    :pswitch_7
    const-string v8, "ims"

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 380
    goto :goto_2

    .line 382
    :pswitch_8
    const-string v8, "cbs"

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 383
    goto :goto_2

    .line 385
    :pswitch_9
    const-string v8, "ia"

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->addApnContext(Ljava/lang/String;Landroid/net/NetworkConfig;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 386
    goto :goto_2

    .line 393
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v5    # "networkConfig":Landroid/net/NetworkConfig;
    .end local v6    # "networkConfigString":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initApnContexts: X mApnContexts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 394
    return-void

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 289
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 593
    const-string v3, "dun"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 604
    :goto_0
    return v2

    .line 597
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 598
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 599
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 604
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 456
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 457
    const/4 v1, 0x0

    .line 459
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 4

    .prologue
    .line 2173
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2174
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_0

    .line 2176
    const/4 v2, 0x1

    .line 2180
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isDataAllowed()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 688
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v10

    .line 689
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInternalDataEnabled:Z

    .line 690
    .local v3, "internalDataEnabled":Z
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 693
    .local v1, "attachedState":Z
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v2

    .line 694
    .local v2, "desiredPowerState":Z
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    .line 695
    .local v5, "radioTech":I
    const/16 v10, 0x12

    if-ne v5, v10, :cond_0

    if-nez v2, :cond_0

    .line 697
    const/4 v2, 0x1

    .line 700
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 701
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v7

    .line 702
    .local v7, "recordsLoaded":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isNvSubscription()Z

    move-result v8

    .line 704
    .local v8, "subscriptionFromNv":Z
    if-nez v1, :cond_1

    iget-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    if-eqz v10, :cond_e

    :cond_1
    if-nez v8, :cond_2

    if-eqz v7, :cond_e

    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_3
    if-eqz v3, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_4
    iget-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    if-nez v10, :cond_e

    if-eqz v2, :cond_e

    const/4 v0, 0x1

    .line 713
    .local v0, "allowed":Z
    :goto_1
    if-nez v0, :cond_c

    .line 714
    const-string v6, ""

    .line 715
    .local v6, "reason":Ljava/lang/String;
    if-nez v1, :cond_5

    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAutoAttachOnCreation:Z

    if-nez v9, :cond_5

    .line 716
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - Attached= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 718
    :cond_5
    if-nez v8, :cond_6

    if-nez v7, :cond_6

    .line 719
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - SIM not loaded and not NV subscription"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 721
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v9, v10, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v9

    if-nez v9, :cond_7

    .line 723
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - PhoneState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 724
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - Concurrent voice and data not allowed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 726
    :cond_7
    if-nez v3, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - mInternalDataEnabled= false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 727
    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v9

    if-nez v9, :cond_9

    .line 728
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - Roaming and data roaming not enabled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 730
    :cond_9
    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsPsRestricted:Z

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - mIsPsRestricted= true"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 731
    :cond_a
    if-nez v2, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - desiredPowerState= false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 732
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isDataAllowed: not allowed due to"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 734
    .end local v6    # "reason":Ljava/lang/String;
    :cond_c
    return v0

    .line 690
    .end local v0    # "allowed":Z
    .end local v1    # "attachedState":Z
    .end local v2    # "desiredPowerState":Z
    .end local v3    # "internalDataEnabled":Z
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "radioTech":I
    .end local v7    # "recordsLoaded":Z
    .end local v8    # "subscriptionFromNv":Z
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .restart local v1    # "attachedState":Z
    .restart local v2    # "desiredPowerState":Z
    .restart local v3    # "internalDataEnabled":Z
    .restart local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v5    # "radioTech":I
    :cond_d
    move v7, v9

    .line 701
    goto/16 :goto_0

    .restart local v7    # "recordsLoaded":Z
    .restart local v8    # "subscriptionFromNv":Z
    :cond_e
    move v0, v9

    .line 704
    goto/16 :goto_1
.end method

.method protected isDataAllowed(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    const/4 v0, 0x0

    .line 641
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 645
    const-string v1, "Default data call activation not allowed in iwlan."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 648
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDataPossible(Ljava/lang/String;)Z
    .locals 9
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 297
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 320
    :goto_0
    return v6

    .line 300
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    .line 301
    .local v1, "apnContextIsEnabled":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    .line 302
    .local v2, "apnContextState":Lcom/android/internal/telephony/DctConstants$State;
    if-eqz v1, :cond_1

    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v8, :cond_4

    :cond_1
    move v3, v7

    .line 304
    .local v3, "apnTypePossible":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDataAllowed()Z

    move-result v4

    .line 305
    .local v4, "dataAllowed":Z
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    move v5, v7

    .line 307
    .local v5, "possible":Z
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ia"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 311
    const/4 v5, 0x0

    :cond_3
    move v6, v5

    .line 320
    goto :goto_0

    .end local v3    # "apnTypePossible":Z
    .end local v4    # "dataAllowed":Z
    .end local v5    # "possible":Z
    :cond_4
    move v3, v6

    .line 302
    goto :goto_1

    .restart local v3    # "apnTypePossible":Z
    .restart local v4    # "dataAllowed":Z
    :cond_5
    move v5, v6

    .line 305
    goto :goto_2
.end method

.method public isDisconnected()Z
    .locals 3

    .prologue
    .line 2185
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2186
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isDisconnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2188
    const/4 v2, 0x0

    .line 2192
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected isProvisioningApn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 481
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v1

    .line 484
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2763
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    return-void
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2198
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2199
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOosIsDisconnect:Z

    if-nez v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2201
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_2

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2205
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2206
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 871
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 872
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mOosIsDisconnect:Z

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 877
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_3

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 887
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_4
    return-void
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/String;

    .prologue
    .line 931
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 932
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 3
    .param p1, "tearDown"    # Z
    .param p2, "apnId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 2163
    const-string v1, "onCleanUpConnection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2164
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2165
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 2166
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 2169
    :cond_0
    return-void
.end method

.method protected onDataConnectionDetached()V
    .locals 2

    .prologue
    .line 662
    const-string v0, "onDataConnectionDetached: stop polling and notify detached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 664
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 665
    const-string v0, "dataDetached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 667
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 21
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1825
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1826
    .local v5, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    const/4 v9, 0x0

    .line 1827
    .local v9, "handleError":Z
    const/4 v3, 0x0

    .line 1829
    .local v3, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1830
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1835
    .restart local v3    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    .line 1836
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDcAc()Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;

    move-result-object v7

    .line 1856
    .local v7, "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    if-nez v7, :cond_2

    .line 1857
    const-string v17, "onDataSetupComplete: no connection to DC, handle as error"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1858
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1859
    const/4 v9, 0x1

    .line 1972
    .end local v7    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :goto_0
    if-eqz v9, :cond_0

    .line 1973
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupCompleteError(Landroid/os/AsyncResult;)V

    .line 1975
    :cond_0
    return-void

    .line 1832
    :cond_1
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "onDataSetupComplete: No apnContext"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1861
    .restart local v7    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfile()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v2

    .line 1863
    .local v2, "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onDataSetupComplete: success apn="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-nez v2, :cond_7

    const-string v17, "unknown"

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1865
    if-eqz v2, :cond_4

    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DataProfile;->proxy:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DataProfile;->proxy:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_4

    .line 1867
    :try_start_0
    iget-object v15, v2, Lcom/android/internal/telephony/dataconnection/DataProfile;->port:Ljava/lang/String;

    .line 1868
    .local v15, "port":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string v15, "8080"

    .line 1869
    :cond_3
    new-instance v16, Landroid/net/ProxyProperties;

    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DataProfile;->proxy:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v19}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1871
    .local v16, "proxy":Landroid/net/ProxyProperties;
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    .end local v15    # "port":Ljava/lang/String;
    .end local v16    # "proxy":Landroid/net/ProxyProperties;
    :cond_4
    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "default"

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1881
    const-string v17, "gsm.defaultpdpcontext.active"

    const-string v18, "true"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mCanSetPreferApn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 1883
    const-string v17, "onDataSetupComplete: PREFERED APN is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1884
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setPreferredApn(I)V

    .line 1894
    :cond_5
    :goto_3
    sget-object v17, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1895
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v12

    .line 1896
    .local v12, "isProvApn":Z
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 1900
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->completeConnection(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1935
    :goto_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onDataSetupComplete: SETUP complete type="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", reason:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1863
    .end local v12    # "isProvApn":Z
    :cond_7
    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_1

    .line 1872
    :catch_0
    move-exception v8

    .line 1873
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DataProfile;->port:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "): "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1890
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    const-string v17, "gsm.defaultpdpcontext.active"

    const-string v18, "false"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1908
    .restart local v12    # "isProvApn":Z
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onDataSetupComplete: successful, BUT send connected to prov apn as mIsProvisioning:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsProvisioning:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " == false"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " && (isProvisioningApn:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " == true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1913
    new-instance v11, Landroid/content/Intent;

    const-string v17, "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1915
    .local v11, "intent":Landroid/content/Intent;
    const-string v17, "apn"

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfile()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1916
    const-string v17, "apnType"

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1918
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v4

    .line 1919
    .local v4, "apnType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v14

    .line 1920
    .local v14, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v14, :cond_a

    .line 1921
    const-string v17, "linkProperties"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1922
    invoke-virtual {v14}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    .line 1923
    .local v10, "iface":Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 1924
    const-string v17, "iface"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1927
    .end local v10    # "iface":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v13

    .line 1928
    .local v13, "linkCapabilities":Landroid/net/LinkCapabilities;
    if-eqz v13, :cond_b

    .line 1929
    const-string v17, "linkCapabilities"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1932
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v17

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_4

    .line 1941
    .end local v2    # "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v4    # "apnType":Ljava/lang/String;
    .end local v7    # "dcac":Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "isProvApn":Z
    .end local v13    # "linkCapabilities":Landroid/net/LinkCapabilities;
    .end local v14    # "linkProperties":Landroid/net/LinkProperties;
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-object/from16 v5, v17

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1943
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfile()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v2

    .line 1944
    .restart local v2    # "apn":Lcom/android/internal/telephony/dataconnection/DataProfile;
    const-string v18, "onDataSetupComplete: error apn=%s cause=%s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    if-nez v2, :cond_10

    const-string v17, "unknown"

    :goto_5
    aput-object v17, v19, v20

    const/16 v17, 0x1

    aput-object v5, v19, v17

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1948
    if-nez v5, :cond_d

    .line 1949
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 1952
    :cond_d
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isEventLoggable()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1954
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getCellLocationId()I

    move-result v6

    .line 1955
    .local v6, "cid":I
    const v17, 0xc3b9

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1960
    .end local v6    # "cid":I
    :cond_e
    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isPermanentFail()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->decWaitingApnsPermFailCount()V

    .line 1962
    :cond_f
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfile()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->removeWaitingApn(Lcom/android/internal/telephony/dataconnection/DataProfile;)V

    .line 1964
    const-string v17, "onDataSetupComplete: WaitingApns.size=%d WaitingApnsPermFailureCountDown=%d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1969
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1944
    :cond_10
    iget-object v0, v2, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_5
.end method

.method protected onDataSetupCompleteError(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1997
    const-string v2, ""

    .line 1998
    .local v2, "reason":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2000
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v3, :cond_0

    .line 2001
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2007
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2008
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2009
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "apnFailed"

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 2013
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2015
    const-string v3, "onDataSetupCompleteError: All APN\'s had permanent failures, stop retrying"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2032
    :goto_0
    return-void

    .line 2003
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "onDataSetupCompleteError: No apnContext"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2018
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v1

    .line 2020
    .local v1, "delay":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataSetupCompleteError: Not all APN\'s had permanent failures delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2023
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForRestartTrySetup(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0

    .line 2026
    .end local v1    # "delay":I
    :cond_2
    const-string v3, "onDataSetupCompleteError: Try next APN"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2027
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2030
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_0
.end method

.method protected onDisconnectDcRetrying(ILandroid/os/AsyncResult;)V
    .locals 4
    .param p1, "connId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2115
    const/4 v0, 0x0

    .line 2117
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v1, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v1, :cond_0

    .line 2118
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2124
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnectDcRetrying: apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2127
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    :goto_0
    return-void

    .line 2120
    :cond_0
    const-string v1, "onDisconnectDcRetrying: Invalid ar in onDisconnectDone, ignore"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 6
    .param p1, "connId"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x0

    .line 2039
    const/4 v0, 0x0

    .line 2041
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v2, :cond_1

    .line 2042
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2048
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnectDone: EVENT_DISCONNECT_DONE apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2049
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2051
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDataProfileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2056
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2057
    const-string v2, "onDisconnectDone: radio will be turned off, no retries"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2059
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)V

    .line 2060
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 2107
    :cond_0
    :goto_0
    return-void

    .line 2044
    :cond_1
    const-string v2, "onDisconnectDone: Invalid ar in onDisconnectDone, ignore"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2066
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mAttached:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2067
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nwTypeChanged"

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2070
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2071
    const-string v2, "onDisconnectDone: Cleanup due to NW type changed done. Restart all apns"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2072
    const-string v2, "nwTypeChanged"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 2104
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->SUPPORT_MPDN:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2105
    const-string v2, "SinglePdnArbitration"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0

    .line 2075
    :cond_4
    const-string v2, "gsm.defaultpdpcontext.active"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    const-string v2, "onDisconnectDone: attached, ready and retry after disconnect"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2080
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getApnDelay()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/dataconnection/ApnContext;)V

    goto :goto_1

    .line 2083
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 2086
    .local v1, "restartRadioAfterProvisioning":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isProvisioningApn()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 2087
    const-string v2, "onDisconnectDone: restartRadio after provisioning"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->restartRadio()V

    .line 2090
    :cond_6
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)V

    .line 2091
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;)V

    .line 2092
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isOnlySingleDcAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2093
    const-string v2, "onDisconnectDone: isOnlySigneDcAllowed true so setup single apn"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2095
    const-string v2, "SinglePdnArbitration"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_1

    .line 2097
    :cond_7
    const-string v2, "onDisconnectDone: Wait for all apn contexts to be disconnected"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2100
    :cond_8
    const-string v2, "onDisconnectDone: not retrying"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onEnableApn(II)V
    .locals 4
    .param p1, "apnId"    # I
    .param p2, "enabled"    # I

    .prologue
    const/4 v1, 0x1

    .line 1696
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1697
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_0

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableApn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): NO ApnContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    .line 1704
    :goto_0
    return-void

    .line 1702
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnableApn: apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call applyNewState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1703
    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDependencyMet()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onRadioAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1750
    const-string v1, "onRadioAvailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1751
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1755
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1757
    const-string v1, "onRadioAvailable: We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1760
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1761
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1762
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1765
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_2

    .line 1766
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnection(ZLcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 1768
    :cond_2
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1775
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mReregisterOnReconnectFailure:Z

    .line 1777
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1780
    const-string v0, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1785
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1786
    return-void

    .line 1782
    :cond_0
    const-string v0, "onRadioOffOrNotAvailable: is off and clean up all connections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1783
    const-string v0, "radioTurnedOff"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    goto :goto_0
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 1721
    const-string v0, "onRoamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1723
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 1731
    :goto_0
    return-void

    .line 1725
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1726
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1727
    const-string v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    goto :goto_0

    .line 1729
    :cond_1
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 2

    .prologue
    .line 1735
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 1746
    :goto_0
    return-void

    .line 1737
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1738
    const-string v0, "onRoamingOn: setup data on roaming"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1739
    const-string v0, "roamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 1740
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 1742
    :cond_1
    const-string v0, "onRoamingOn: Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1743
    const/4 v0, 0x1

    const-string v1, "roamingOn"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 1744
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "met"    # Z

    .prologue
    .line 1551
    const-string v1, "hipri"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1554
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-nez v0, :cond_2

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDependencyMet: ApnContext not found in onSetDependencyMet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1559
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    .line 1560
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "hipri"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1563
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->applyNewState(Lcom/android/internal/telephony/dataconnection/ApnContext;ZZ)V

    goto :goto_0
.end method

.method protected onSimRecordsLoaded()V
    .locals 2

    .prologue
    .line 1539
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->create3gppApnsList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInitialAttachApn(Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 1540
    return-void
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1716
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->trySetupData(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1710
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 1711
    const/4 v0, 0x1

    return v0
.end method

.method protected onUpdateIcc()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2715
    const/4 v4, 0x0

    .line 2716
    .local v4, "result":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v5, :cond_0

    .line 2717
    const-string v5, "onUpdateIcc: mUiccController is null. Error!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->loge(Ljava/lang/String;)V

    move v5, v7

    .line 2753
    :goto_0
    return v5

    .line 2721
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->updateSimRecords()V

    .line 2723
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 2724
    .local v1, "dataRat":I
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFamilyFromRadioTechnology(I)I

    move-result v0

    .line 2725
    .local v0, "appFamily":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 2726
    .local v2, "newIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUpdateIcc: newIccRecords "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2728
    if-nez v1, :cond_2

    move v5, v7

    .line 2732
    goto :goto_0

    :cond_1
    move-object v5, v6

    .line 2726
    goto :goto_1

    .line 2735
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2736
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eq v3, v2, :cond_5

    .line 2737
    if-eqz v3, :cond_3

    .line 2738
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing stale icc objects. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2740
    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2741
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2743
    :cond_3
    if-eqz v2, :cond_4

    .line 2744
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New records found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2746
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2747
    const v5, 0x42002

    invoke-virtual {v2, p0, v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2751
    :cond_4
    const/4 v4, 0x1

    :cond_5
    move v5, v4

    .line 2753
    goto/16 :goto_0

    :cond_6
    move-object v5, v6

    .line 2738
    goto :goto_2

    :cond_7
    move-object v5, v6

    .line 2744
    goto :goto_3
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2145
    const-string v0, "onVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2146
    iput-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    .line 2147
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2149
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPoll()V

    .line 2150
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startDataStallAlarm(Z)V

    .line 2151
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2158
    :cond_0
    :goto_0
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApns(Ljava/lang/String;)V

    .line 2159
    return-void

    .line 2154
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->resetPollStats()V

    goto :goto_0
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    .prologue
    .line 2133
    const-string v0, "onVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mInVoiceCall:Z

    .line 2135
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2136
    const-string v0, "onVoiceCallStarted stop polling"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2137
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 2138
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopDataStallAlarm()V

    .line 2139
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2141
    :cond_0
    return-void
.end method

.method protected restartRadio()V
    .locals 3

    .prologue
    .line 1431
    const-string v1, "restartRadio: ************TURN OFF RADIO**************"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 1432
    const/4 v1, 0x1

    const-string v2, "radioTurnedOff"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpAllConnections(ZLjava/lang/String;)Z

    .line 1433
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    .line 1442
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1443
    .local v0, "reset":I
    const-string v1, "net.ppp.reset-by-timeout"

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 2
    .param p1, "s"    # Lcom/android/internal/telephony/DctConstants$State;

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState should not be used in GSM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method protected supplyMessenger()V
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 332
    const/4 v1, 0x2

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 333
    const/4 v1, 0x3

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 334
    const/4 v1, 0x4

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 335
    const/4 v1, 0x5

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 336
    const/16 v1, 0xa

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 337
    const/16 v1, 0xb

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 338
    const/16 v1, 0xc

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 339
    return-void
.end method

.method protected updateSimRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2684
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 2705
    :cond_0
    :goto_0
    return-void

    .line 2688
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getUiccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 2689
    .local v0, "newSimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSimRecords: newSimRecords = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2691
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2692
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eq v1, v0, :cond_0

    .line 2693
    if-eqz v1, :cond_2

    .line 2694
    const-string v2, "Removing stale sim objects."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2695
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimRecordsLoadedHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2696
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2698
    :cond_2
    if-eqz v0, :cond_0

    .line 2699
    const-string v2, "New sim records found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 2700
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mSimRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2701
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker;->mSimRecordsLoadedHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method
