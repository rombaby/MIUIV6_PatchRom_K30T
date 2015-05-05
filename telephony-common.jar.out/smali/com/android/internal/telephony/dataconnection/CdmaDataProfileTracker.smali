.class public final Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;
.super Landroid/os/Handler;
.source "CdmaDataProfileTracker.java"


# static fields
.field private static final EVENT_GET_DATA_CALL_PROFILE_DONE:I = 0x1

.field private static final EVENT_LOAD_PROFILES:I = 0x2

.field private static final EVENT_READ_MODEM_PROFILES:I = 0x0

.field public static final OMH_ENABLED:Z

.field public static final PROPERTY_OMH_ENABLED:Ljava/lang/String; = "persist.omh.enabled"

.field private static final mDefaultApnTypes:[Ljava/lang/String;

.field private static final mSupportedApnTypes:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

.field private mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mModemDataProfileRegistrants:Landroid/os/RegistrantList;

.field mOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mOmhReadProfileContext:I

.field private mOmhReadProfileCount:I

.field mOmhServicePriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field mTempOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string v1, "mms"

    aput-object v1, v0, v4

    const-string v1, "supl"

    aput-object v1, v0, v5

    const-string v1, "dun"

    aput-object v1, v0, v6

    const-string v1, "hipri"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "fota"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ims"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cbs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, v3

    const-string v1, "mms"

    aput-object v1, v0, v4

    const-string v1, "supl"

    aput-object v1, v0, v5

    const-string v1, "hipri"

    aput-object v1, v0, v6

    const-string v1, "fota"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ims"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cbs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDefaultApnTypes:[Ljava/lang/String;

    .line 111
    const-string v0, "persist.omh.enabled"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->OMH_ENABLED:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    const-string v0, "CDMA"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->LOG_TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    .line 104
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    .line 109
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUPPORT_OMH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->OMH_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private addDummyDataProfiles()Ljava/util/ArrayList;
    .locals 21
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
    .line 332
    const-string v2, "OMH profiles not found. Creating dummy data profiles"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 333
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v20, "mDummyProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const-string v4, "dun"

    aput-object v4, v19, v2

    .line 335
    .local v19, "dunApnTypes":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->getCdmaOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "operator":Ljava/lang/String;
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

    sget-object v14, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDefaultApnTypes:[Ljava/lang/String;

    sget-object v15, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String;

    sget-object v16, Lcom/android/internal/telephony/dataconnection/DcTracker;->PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String;

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 342
    .local v1, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .end local v1    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    const/4 v2, 0x3

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

    move-object/from16 v14, v19

    invoke-direct/range {v1 .. v18}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 349
    .restart local v1    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    return-object v20
.end method

.method private addServiceTypeToUnSpecified()V
    .locals 8

    .prologue
    .line 430
    sget-object v1, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 431
    .local v0, "apntype":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 436
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    move-object v6, v2

    .line 437
    check-cast v6, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getDataProfileTypeModem()Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    if-ne v6, v7, :cond_0

    .line 439
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Service Type added to UNSPECIFIED is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 430
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 448
    .end local v0    # "apntype":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getCdmaOperatorNumeric()Ljava/lang/String;
    .locals 5

    .prologue
    .line 360
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 361
    .local v1, "dataNetworkType":I
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getFamilyFromRadioTechnology(I)I

    move-result v0

    .line 363
    .local v0, "appFamily":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mCdmaSsm:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 366
    const-string v3, "ro.cdma.home.operator.numeric"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "operatorNumeric":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaOperatorNumberic - returning from NV: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 373
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaOperatorNumeric:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 374
    return-object v2

    .line 369
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 370
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private getDuplicateProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
    .locals 4
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataProfile;

    .prologue
    .line 382
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .local v0, "dataProfile":Lcom/android/internal/telephony/dataconnection/DataProfile;
    move-object v2, p1

    .line 383
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getProfileId()I

    move-result v3

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getProfileId()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 385
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    .line 388
    .end local v0    # "dataProfile":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private omhListGetArbitratedPriority(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 5
    .param p2, "serviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DataProfile;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "dataProfileListModem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    const/4 v2, 0x0

    .line 459
    .local v2, "profile":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .local v0, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    move-object v3, v0

    .line 460
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority()Z

    move-result v3

    if-nez v3, :cond_0

    .line 461
    const-string v3, "[OMH] Invalid priority... skipping"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_0
    if-nez v2, :cond_1

    .line 466
    move-object v2, v0

    goto :goto_0

    .line 468
    :cond_1
    const-string v3, "supl"

    if-ne p2, v3, :cond_3

    move-object v3, v0

    .line 470
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isPriorityLower(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    :cond_2
    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 474
    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isPriorityHigher(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, v0

    :cond_4
    goto :goto_0

    .line 479
    .end local v0    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_5
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    .end local v2    # "profile":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->getPriority()I

    move-result v3

    return v3
.end method

.method private onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "context"    # I

    .prologue
    .line 253
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    if-eq p2, v6, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Exception in onGetDataCallProfileDone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 260
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    goto :goto_0

    .line 266
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v0, "dataProfileListModem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v0    # "dataProfileListModem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 269
    .restart local v0    # "dataProfileListModem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/DataProfile;>;"
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    .line 271
    .local v3, "modemProfile":Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 273
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 277
    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "serviceType":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: # profiles returned from modem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 282
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, v5}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->omhListGetArbitratedPriority(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .local v1, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    move-object v6, v1

    .line 288
    check-cast v6, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->setDataProfileTypeModem(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V

    .line 294
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->getDuplicateProfile(Lcom/android/internal/telephony/dataconnection/DataProfile;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    move-result-object v4

    .line 295
    .local v4, "omhDuplicateDp":Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
    if-nez v4, :cond_3

    .line 296
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;

    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_1

    .line 306
    .restart local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OMH: Duplicate Profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 307
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_1

    .line 314
    .end local v1    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "omhDuplicateDp":Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
    .end local v5    # "serviceType":Ljava/lang/String;
    :cond_4
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    if-nez v6, :cond_0

    .line 315
    const-string v6, "OMH: Modem omh profile read complete."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->addServiceTypeToUnSpecified()V

    .line 317
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 318
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->addDummyDataProfiles()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    .line 320
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0
.end method

.method private onReadDataProfilesFromModem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 226
    const-string v4, "OMH: onReadDataProfilesFromModem()"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 227
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    .line 229
    iput v8, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 231
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 232
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 233
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 236
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->values()[Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 237
    .local v3, "p":Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OMH: Reading profiles for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 238
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileCount:I

    .line 239
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mOmhReadProfileContext:I

    invoke-virtual {p0, v6, v7, v8, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallProfile(ILandroid/os/Message;)V

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v3    # "p":Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    :cond_0
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 162
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 166
    :goto_0
    return-object v0

    .line 164
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method private readDataProfilesFromModem()V
    .locals 1

    .prologue
    .line 215
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->OMH_ENABLED:Z

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v0, "OMH is disabled, ignoring request!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearActiveDataProfile()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 484
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "CDMA"

    const-string v1, "CdmaDataProfileTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public getDataProfile(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfile;
    .locals 5
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile: serviceType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x0

    .line 396
    .local v2, "profile":Lcom/android/internal/telephony/dataconnection/DataProfile;
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 397
    .local v0, "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    sget-boolean v3, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->OMH_ENABLED:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;

    if-ne v3, v4, :cond_0

    .line 403
    :cond_1
    move-object v2, v0

    .line 408
    .end local v0    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_2
    if-nez v2, :cond_5

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile: OMH profile not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 411
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataProfile;

    .line 412
    .restart local v0    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 413
    move-object v2, v0

    .line 418
    .end local v0    # "dp":Lcom/android/internal/telephony/dataconnection/DataProfile;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile: using hardcoded profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 422
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataProfile: return profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 423
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 188
    const-string v0, "CDMA"

    const-string v1, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 192
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 194
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->loadProfiles()V

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->onReadDataProfilesFromModem()V

    goto :goto_0

    .line 201
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mActiveDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 495
    sget-object v0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 496
    .local v3, "s":Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    const/4 v4, 0x1

    .line 500
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    return v4

    .line 495
    .restart local v3    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isOmhEnabled()Z
    .locals 1

    .prologue
    .line 491
    sget-boolean v0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->OMH_ENABLED:Z

    return v0
.end method

.method loadProfiles()V
    .locals 1

    .prologue
    .line 146
    const-string v0, "loadProfiles..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->log(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->readDataProfilesFromModem()V

    .line 150
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 504
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataProfileTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 508
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataProfileTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void
.end method

.method public registerForModemProfileReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 177
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 178
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 179
    return-void
.end method

.method public unregisterForModemProfileReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/CdmaDataProfileTracker;->mModemDataProfileRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 183
    return-void
.end method
