.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    }
.end annotation


# static fields
.field private static final ANR_ADDITIONAL_NUMBER_END_ID:I = 0xc

.field private static final ANR_ADDITIONAL_NUMBER_START_ID:I = 0x3

.field private static final ANR_ADN_RECORD_IDENTIFIER_ID:I = 0x10

.field private static final ANR_ADN_SFI_ID:I = 0xf

.field private static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field private static final ANR_CAPABILITY_ID:I = 0xd

.field private static final ANR_DESCRIPTION_ID:I = 0x0

.field private static final ANR_EXTENSION_ID:I = 0xe

.field private static final ANR_TON_NPI_ID:I = 0x2

.field private static final DBG:Z = true

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_EF_ANR_RECORD_SIZE_DONE:I = 0x7

.field private static final EVENT_EF_EMAIL_RECORD_SIZE_DONE:I = 0x6

.field private static final EVENT_EF_IAP_RECORD_SIZE_DONE:I = 0xa

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0x9

.field private static final EVENT_UPDATE_EMAIL_RECORD_DONE:I = 0x8

.field private static final EVENT_UPDATE_IAP_RECORD_DONE:I = 0xb

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field private static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAdnLengthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mAnrFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnrFlagsRecord:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrPresentInIap:Z

.field private mAnrTagNumberInIap:I

.field private mAnrsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mEmailFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailFlagsRecord:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIapFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mIapPresent:Z

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPendingExtLoads:I

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordNums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 3
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 54
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 55
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapPresent:Z

    .line 60
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    .line 122
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrsForAdnRec:Ljava/util/Map;

    .line 132
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 133
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapPresent:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return p1
.end method

.method private buildAnrData(IILjava/lang/String;)[B
    .locals 11
    .param p1, "length"    # I
    .param p2, "adnRecIndex"    # I
    .param p3, "anr"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 837
    new-array v1, p1, [B

    .line 838
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 839
    aput-byte v8, v1, v2

    .line 838
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 842
    const-string v6, "[buildAnrData] Empty anr record"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 869
    .end local v1    # "data":[B
    :goto_1
    return-object v1

    .line 845
    .restart local v1    # "data":[B
    :cond_1
    aput-byte v7, v1, v7

    .line 846
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 849
    .local v0, "byteAnr":[B
    if-nez v0, :cond_2

    .line 850
    const/4 v1, 0x0

    goto :goto_1

    .line 853
    :cond_2
    const/16 v3, 0xa

    .line 854
    .local v3, "maxlength":I
    array-length v6, v0

    if-le v6, v3, :cond_4

    .line 855
    invoke-static {v0, v7, v1, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    int-to-byte v6, v3

    aput-byte v6, v1, v9

    .line 861
    :goto_2
    const/16 v6, 0xd

    aput-byte v8, v1, v6

    .line 862
    const/16 v6, 0xe

    aput-byte v8, v1, v6

    .line 863
    const/16 v6, 0x11

    if-ne p1, v6, :cond_3

    .line 864
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    .line 865
    .local v4, "pbrIndex":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v6

    sub-int v5, p2, v6

    .line 866
    .local v5, "recordIndex":I
    const/16 v6, 0x10

    add-int/lit8 v7, v5, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 868
    .end local v4    # "pbrIndex":I
    .end local v5    # "recordIndex":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildAnrData: data is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 858
    :cond_4
    array-length v6, v0

    invoke-static {v0, v7, v1, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 859
    array-length v6, v0

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    goto :goto_2
.end method

.method private buildEmailData(IILjava/lang/String;)[B
    .locals 7
    .param p1, "length"    # I
    .param p2, "adnRecIndex"    # I
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 817
    new-array v1, p1, [B

    .line 818
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 819
    const/4 v5, -0x1

    aput-byte v5, v1, v2

    .line 818
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 821
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 822
    const-string v5, "[buildEmailData] Empty email record"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 833
    :goto_1
    return-object v1

    .line 825
    :cond_1
    invoke-static {p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 826
    .local v0, "byteEmail":[B
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    .line 828
    .local v3, "pbrIndex":I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v5

    sub-int v4, p2, v5

    .line 829
    .local v4, "recordIndex":I
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v5, :cond_2

    .line 830
    add-int/lit8 v5, p1, -0x1

    add-int/lit8 v6, v4, 0x1

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 832
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildEmailData: data is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 873
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 874
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 875
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 879
    :goto_0
    return-void

    .line 878
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private getAnrRecNumber(IILjava/lang/String;)I
    .locals 11
    .param p1, "adnRecIndex"    # I
    .param p2, "numRecs"    # I
    .param p3, "oldAnr"    # Ljava/lang/String;

    .prologue
    .line 773
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    .line 774
    .local v4, "pbrIndex":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    sub-int v6, p1, v9

    .line 775
    .local v6, "recordIndex":I
    const/4 v7, -0x1

    .line 776
    .local v7, "recordNumber":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v7

    .line 813
    :goto_0
    return v9

    .line 779
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 780
    const/4 v5, 0x0

    .line 782
    .local v5, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [B

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_1
    if-eqz v5, :cond_1

    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v9, v5, v9

    if-lez v9, :cond_1

    .line 787
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v7, v5, v9

    .line 788
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAnrRecNumber: recnum from iap is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 789
    goto :goto_0

    .line 783
    :catch_0
    move-exception v2

    .line 784
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "IndexOutOfBoundsException in getAnrRecNumber"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 791
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 792
    .local v8, "recsSize":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAnrRecNumber: anr record size is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 793
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 794
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v8, :cond_5

    .line 795
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(II)Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "anrRecord":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 797
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAnrRecNumber: Empty anr record. Anr record num is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 798
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 799
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    .line 802
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unused but non empty record.Anr record num is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 803
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 794
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 809
    .end local v1    # "anrRecord":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "record":[B
    .end local v8    # "recsSize":I
    :cond_4
    add-int/lit8 v7, v6, 0x1

    move v9, v7

    .line 810
    goto/16 :goto_0

    .line 812
    .restart local v5    # "record":[B
    .restart local v8    # "recsSize":I
    :cond_5
    const-string v9, "getAnrRecNumber: no anr record index found"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 813
    goto/16 :goto_0
.end method

.method private getEfidByTag(II)I
    .locals 4
    .param p1, "recNum"    # I
    .param p2, "tag"    # I

    .prologue
    .line 432
    const/4 v0, -0x1

    .line 433
    .local v0, "efid":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 434
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 435
    const/4 v2, -0x1

    .line 439
    :goto_0
    return v2

    .line 436
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 437
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    move v2, v0

    .line 439
    goto :goto_0
.end method

.method private getEmailRecNumber(IILjava/lang/String;)I
    .locals 11
    .param p1, "adnRecIndex"    # I
    .param p2, "numRecs"    # I
    .param p3, "oldEmail"    # Ljava/lang/String;

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    .line 725
    .local v4, "pbrIndex":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    sub-int v6, p1, v9

    .line 726
    .local v6, "recordIndex":I
    const/4 v7, -0x1

    .line 727
    .local v7, "recordNumber":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber adnRecIndex is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", recordIndex is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 729
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 730
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber recordNumber is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 769
    :goto_0
    return v9

    .line 733
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 734
    const/4 v5, 0x0

    .line 736
    .local v5, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [B

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_1
    if-eqz v5, :cond_1

    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v9, v5, v9

    if-lez v9, :cond_1

    .line 741
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v5, v9

    .line 742
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getEmailRecNumber: record is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", the email recordNumber is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 744
    goto :goto_0

    .line 737
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "IndexOutOfBoundsException in getEmailRecNumber"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 746
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 747
    .local v8, "recsSize":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber recsSize is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 748
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 749
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v8, :cond_5

    .line 750
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(II)Ljava/lang/String;

    move-result-object v2

    .line 751
    .local v2, "emailRecord":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 752
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber: Got empty record.Email record num is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 754
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 755
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    .line 758
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unused but non empty record.Email record num is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 759
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 749
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 765
    .end local v2    # "emailRecord":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "record":[B
    .end local v8    # "recsSize":I
    :cond_4
    add-int/lit8 v7, v6, 0x1

    move v9, v7

    .line 766
    goto/16 :goto_0

    .line 768
    .restart local v5    # "record":[B
    .restart local v8    # "recsSize":I
    :cond_5
    const-string v9, "getEmailRecNumber: no email record index found"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 769
    goto/16 :goto_0
.end method

.method private getInitIndexBy(I)I
    .locals 3
    .param p1, "pbrIndex"    # I

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "index":I
    :goto_0
    if-lez p1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 461
    :cond_0
    return v0
.end method

.method private getValidRecordNums(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private hasRecordIn(Ljava/util/Map;I)Z
    .locals 5
    .param p2, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "record":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<[B>;>;"
    const/4 v1, 0x0

    .line 465
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v1

    .line 468
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 473
    const/4 v1, 0x1

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "UsimPhoneBookManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record is empty in pbrIndex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasValidRecords(I)Z
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1296
    const-string v0, "UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    return-void
.end method

.method private putValidRecNums(I)V
    .locals 5
    .param p1, "pbrIndex"    # I

    .prologue
    .line 882
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v2, "recordNums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v1

    .line 884
    .local v1, "initAdnIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pbr index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", initAdnIndex is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 885
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 886
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "valid recnum is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 891
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 892
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    const/16 v6, 0xc2

    const/16 v5, 0xc0

    .line 699
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 700
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "mPbrFile is NULL, exiting from readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 705
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 708
    const/4 v1, 0x0

    .line 710
    .local v1, "extEf":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 711
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 713
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAdnFileAndWait adn efid is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 714
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 717
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAnrFileAndWait(I)V
    .locals 8
    .param p1, "recNum"    # I

    .prologue
    const/4 v7, 0x5

    const/16 v6, 0xc4

    .line 269
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 270
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "mPbrFile is NULL, exiting from readAnrFileAndWait"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 275
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v2, :cond_3

    .line 279
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(II)V

    .line 280
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: IAP file is empty"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 290
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAnrFileAndWait anr efid is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 297
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: Anr file is empty"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 287
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/util/ArrayList;Landroid/os/Message;)V

    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 300
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithAnr(I)V

    goto/16 :goto_0
.end method

.method private readAnrRecord(II)Ljava/lang/String;
    .locals 7
    .param p1, "recNum"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, "anrRec":[B
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v5

    .line 694
    :goto_0
    return-object v4

    .line 685
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v3, v4, 0xff

    .line 690
    .local v3, "numberLength":I
    const/16 v4, 0xb

    if-le v3, v4, :cond_1

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number length in anr record "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 692
    const-string v4, ""

    goto :goto_0

    .line 686
    .end local v3    # "numberLength":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v4, v5

    .line 687
    goto :goto_0

    .line 694
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "numberLength":I
    :cond_1
    const/4 v4, 0x2

    invoke-static {v1, v4, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 8
    .param p1, "recNum"    # I

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0xca

    .line 223
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 224
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "mPbrFile is NULL, exiting from readEmailFileAndWait"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 229
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_3

    .line 237
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(II)V

    .line 238
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 239
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: IAP file is empty"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 250
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readEmailFileAndWait email efid is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 259
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Error: Email file is empty"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 246
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/util/ArrayList;Landroid/os/Message;)V

    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 262
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithEmail(I)V

    goto/16 :goto_0
.end method

.method private readEmailRecord(II)Ljava/lang/String;
    .locals 6
    .param p1, "recNum"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 666
    const/4 v3, 0x0

    .line 667
    .local v3, "emailRec":[B
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 677
    :goto_0
    return-object v2

    .line 670
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    const/4 v4, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, "email":Ljava/lang/String;
    goto :goto_0

    .line 671
    .end local v2    # "email":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 672
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method private readIapFileAndWait(II)V
    .locals 5
    .param p1, "efid"    # I
    .param p2, "recNum"    # I

    .prologue
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pbrIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",iap efid is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/util/ArrayList;Landroid/os/Message;)V

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 199
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 206
    :cond_0
    return-void

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 203
    .local v1, "numRecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 204
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "adnRecNum"    # I
    .param p2, "oldValue"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;
    .param p4, "tag"    # I

    .prologue
    .line 398
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v2

    .line 399
    .local v2, "pbrIndex":I
    const/16 v4, 0xc1

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(II)I

    move-result v1

    .line 400
    .local v1, "efid":I
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 401
    const/4 v3, -0x1

    .line 402
    .local v3, "recordNumber":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 403
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 427
    :goto_0
    return v4

    .line 404
    :cond_0
    sparse-switch p4, :sswitch_data_0

    .line 413
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    const/4 v3, -0x1

    .line 416
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIapFile  efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recordNumber= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adnRecNum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 418
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 419
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0xa

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, p1, v3, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 406
    :sswitch_0
    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecNumber(IILjava/lang/String;)I

    move-result v3

    .line 408
    goto :goto_1

    .line 410
    :sswitch_1
    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecNumber(IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "interrupted while trying to update by search"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 426
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 404
    nop

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePhoneAdnRecordWithAnr(I)V
    .locals 14
    .param p1, "pbrIndex"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 541
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 545
    .local v5, "numAdnRecs":I
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 551
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 552
    const/4 v8, 0x0

    .line 554
    .local v8, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "record":[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .restart local v8    # "record":[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 560
    .local v7, "recNum":I
    if-lez v7, :cond_2

    .line 561
    new-array v2, v13, [Ljava/lang/String;

    .line 563
    .local v2, "anrs":[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v12

    .line 564
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    add-int v0, v4, v9

    .line 565
    .local v0, "adnRecIndex":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 566
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_2

    aget-object v9, v2, v12

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 567
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdditionalNumbers([Ljava/lang/String;)V

    .line 568
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 551
    .end local v0    # "adnRecIndex":I
    .end local v2    # "anrs":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 555
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    :catch_0
    move-exception v3

    .line 556
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "i":I
    :cond_3
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v9, :cond_4

    .line 581
    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1AnrFile(II)V

    .line 583
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v4

    .restart local v4    # "i":I
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    add-int/2addr v9, v5

    if-ge v4, v9, :cond_0

    .line 584
    const/4 v1, 0x0

    .line 586
    .local v1, "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrsForAdnRec:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 590
    .restart local v1    # "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_6

    .line 583
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 587
    .end local v1    # "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    .line 588
    .restart local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 592
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 593
    .restart local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_5

    .line 594
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 595
    .restart local v2    # "anrs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v12, v2, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 596
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdditionalNumbers([Ljava/lang/String;)V

    .line 597
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private updatePhoneAdnRecordWithEmail(I)V
    .locals 14
    .param p1, "pbrIndex"    # I

    .prologue
    .line 477
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v10, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 481
    .local v6, "numAdnRecs":I
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v10, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 487
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 488
    const/4 v9, 0x0

    .line 490
    .local v9, "record":[B
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "record":[B
    check-cast v9, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .restart local v9    # "record":[B
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v8, v9, v10

    .line 497
    .local v8, "recNum":I
    if-lez v8, :cond_2

    .line 498
    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/String;

    .line 500
    .local v3, "emails":[Ljava/lang/String;
    const/4 v10, 0x0

    add-int/lit8 v11, v8, -0x1

    invoke-direct {p0, v11, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    .line 501
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v10

    add-int v0, v4, v10

    .line 502
    .local v0, "adnRecIndex":I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 503
    .local v7, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v7, :cond_2

    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 504
    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 505
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 487
    .end local v0    # "adnRecIndex":I
    .end local v3    # "emails":[Ljava/lang/String;
    .end local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 491
    .end local v8    # "recNum":I
    .end local v9    # "record":[B
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "UsimPhoneBookManager"

    const-string v11, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 514
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "i":I
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 518
    .local v5, "len":I
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v10, :cond_4

    .line 519
    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(II)V

    .line 521
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v4

    .restart local v4    # "i":I
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v10

    add-int/2addr v10, v6

    if-ge v4, v10, :cond_0

    .line 522
    const/4 v2, 0x0

    .line 524
    .local v2, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 528
    .restart local v2    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_6

    .line 521
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 525
    .end local v2    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 526
    .restart local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 530
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 531
    .restart local v7    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v7, :cond_5

    .line 532
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v3, v10, [Ljava/lang/String;

    .line 533
    .restart local v3    # "emails":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v10, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 535
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method


# virtual methods
.method public getAnrCount()I
    .locals 5

    .prologue
    .line 1300
    const/4 v0, 0x0

    .line 1301
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 1302
    .local v2, "pbrIndex":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1303
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1305
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnrCount count is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1306
    return v0
.end method

.method public getEmailCount()I
    .locals 5

    .prologue
    .line 1310
    const/4 v0, 0x0

    .line 1311
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 1312
    .local v2, "pbrIndex":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1313
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1315
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmailCount count is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1316
    return v0
.end method

.method public getEmptyAnrNum_Pbrindex(I)I
    .locals 5
    .param p1, "pbrindex"    # I

    .prologue
    .line 1369
    const/4 v0, 0x0

    .line 1370
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1372
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1373
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1375
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1374
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1378
    .end local v1    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmptyAnrNum_Pbrindex pbrIndex is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1380
    return v0
.end method

.method public getEmptyEmailNum_Pbrindex(I)I
    .locals 5
    .param p1, "pbrindex"    # I

    .prologue
    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1357
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1358
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1360
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1359
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1363
    .end local v1    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmptyEmailNum_Pbrindex pbrIndex is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1365
    return v0
.end method

.method public getPbrIndexBy(I)I
    .locals 5
    .param p1, "adnIndex"    # I

    .prologue
    .line 443
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 444
    .local v1, "len":I
    const/4 v2, 0x0

    .line 445
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 446
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 447
    if-ge p1, v2, :cond_0

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPbrIndexBy  adnIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PbrIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 452
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 445
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSpareAnrCount()I
    .locals 6

    .prologue
    .line 1320
    const/4 v0, 0x0

    .line 1321
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 1322
    .local v3, "pbrIndex":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1323
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1324
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 1325
    add-int/lit8 v0, v0, 0x1

    .line 1323
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1322
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1328
    .end local v1    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpareAnrCount count is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1329
    return v0
.end method

.method public getSpareEmailCount()I
    .locals 6

    .prologue
    .line 1333
    const/4 v0, 0x0

    .line 1334
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 1335
    .local v3, "pbrIndex":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1336
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1337
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 1338
    add-int/lit8 v0, v0, 0x1

    .line 1336
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1335
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1341
    .end local v1    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpareEmailCount count is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1342
    return v0
.end method

.method public getUsimAdnCount()I
    .locals 2

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAdnCount count is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1350
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 914
    const/16 v22, 0x0

    .line 915
    .local v22, "oldAnr":Ljava/lang/String;
    const/16 v20, 0x0

    .line 916
    .local v20, "newAnr":Ljava/lang/String;
    const/16 v23, 0x0

    .line 917
    .local v23, "oldEmail":Ljava/lang/String;
    const/16 v21, 0x0

    .line 918
    .local v21, "newEmail":Ljava/lang/String;
    const/16 v27, 0x0

    .line 920
    .local v27, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 922
    :pswitch_0
    const-string v2, "Loading PBR done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 923
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 924
    .local v15, "ar":Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 925
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 927
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 928
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 929
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 932
    .end local v15    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v2, "Loading USIM ADN records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 933
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 934
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 935
    .local v24, "pbrIndex":I
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 936
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 937
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v6, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 938
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->putValidRecNums(I)V

    .line 942
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 943
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 944
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 940
    :cond_2
    const-string v2, "can\'t load USIM ADN records"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 947
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "pbrIndex":I
    :pswitch_2
    const-string v2, "Loading USIM IAP records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 948
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 949
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 950
    .restart local v24    # "pbrIndex":I
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 951
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 954
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 955
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 958
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "pbrIndex":I
    :pswitch_3
    const-string v2, "Loading USIM Email records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 959
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 960
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 961
    .restart local v24    # "pbrIndex":I
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    .line 962
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlemessage EVENT_EMAIL_LOAD_DONE size is: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 966
    const/16 v19, 0x0

    .local v19, "m":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_4

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    aget-object v2, v2, v24

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 969
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    aget-object v7, v7, v24

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .end local v19    # "m":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 973
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 974
    monitor-exit v6

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 977
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "pbrIndex":I
    :pswitch_4
    const-string v2, "Loading USIM Anr records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 978
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/AsyncResult;

    .line 979
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 980
    .restart local v24    # "pbrIndex":I
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    .line 981
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlemessage EVENT_ANR_LOAD_DONE size is: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 985
    const/16 v19, 0x0

    .restart local v19    # "m":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_6

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    aget-object v2, v2, v24

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 988
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    aget-object v7, v7, v24

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    .end local v19    # "m":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 991
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 992
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 995
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "pbrIndex":I
    :pswitch_5
    const-string v2, "Loading EF_EMAIL_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 997
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    .line 998
    .local v17, "emails":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v12, v2, -0x1

    .line 999
    .local v12, "adnRecIndex":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1000
    .local v3, "efid":I
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1001
    .local v16, "email":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_9

    .line 1002
    const/4 v2, 0x0

    aget-object v23, v16, v2

    .line 1003
    const-string v21, ""

    .line 1008
    :cond_8
    :goto_4
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_a

    .line 1009
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1010
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1011
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1012
    monitor-exit v6

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 1004
    :cond_9
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v6, 0x1

    if-le v2, v6, :cond_8

    .line 1005
    const/4 v2, 0x0

    aget-object v23, v16, v2

    .line 1006
    const/4 v2, 0x1

    aget-object v21, v16, v2

    goto :goto_4

    .line 1015
    :cond_a
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v26, v2

    check-cast v26, [I

    .line 1016
    .local v26, "recordSize":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecNumber(IILjava/lang/String;)I

    move-result v4

    .line 1017
    .local v4, "recordNumber":I
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v6, 0x3

    if-ne v2, v6, :cond_b

    const/4 v2, 0x2

    aget v2, v26, v2

    if-gt v4, v2, :cond_b

    if-gtz v4, :cond_c

    .line 1018
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1019
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1020
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1021
    monitor-exit v6

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 1024
    :cond_c
    const/4 v2, 0x0

    aget v2, v26, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v2, v12, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailData(IILjava/lang/String;)[B

    move-result-object v5

    .line 1025
    .local v5, "data":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v12, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1032
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 1035
    .end local v3    # "efid":I
    .end local v4    # "recordNumber":I
    .end local v5    # "data":[B
    .end local v12    # "adnRecIndex":I
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "email":[Ljava/lang/String;
    .end local v17    # "emails":Ljava/lang/String;
    .end local v26    # "recordSize":[I
    :pswitch_6
    const-string v2, "Loading EF_ANR_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1036
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1037
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 1038
    .local v14, "anrs":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v12, v2, -0x1

    .line 1039
    .restart local v12    # "adnRecIndex":I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1040
    .restart local v3    # "efid":I
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1041
    .local v13, "anr":[Ljava/lang/String;
    array-length v2, v13

    const/4 v6, 0x1

    if-ne v2, v6, :cond_e

    .line 1042
    const/4 v2, 0x0

    aget-object v22, v13, v2

    .line 1043
    const-string v20, ""

    .line 1048
    :cond_d
    :goto_5
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_f

    .line 1049
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1050
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1051
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1052
    monitor-exit v6

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    .line 1044
    :cond_e
    array-length v2, v13

    const/4 v6, 0x1

    if-le v2, v6, :cond_d

    .line 1045
    const/4 v2, 0x0

    aget-object v22, v13, v2

    .line 1046
    const/4 v2, 0x1

    aget-object v20, v13, v2

    goto :goto_5

    .line 1055
    :cond_f
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v26, v2

    check-cast v26, [I

    .line 1056
    .restart local v26    # "recordSize":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecNumber(IILjava/lang/String;)I

    move-result v4

    .line 1057
    .restart local v4    # "recordNumber":I
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v6, 0x3

    if-ne v2, v6, :cond_10

    const/4 v2, 0x2

    aget v2, v26, v2

    if-gt v4, v2, :cond_10

    if-gtz v4, :cond_11

    .line 1058
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1059
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1060
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1061
    monitor-exit v6

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v2

    .line 1064
    :cond_11
    const/4 v2, 0x0

    aget v2, v26, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v12, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrData(IILjava/lang/String;)[B

    move-result-object v5

    .line 1065
    .restart local v5    # "data":[B
    if-nez v5, :cond_12

    .line 1066
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1067
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1068
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1069
    monitor-exit v6

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v2

    .line 1073
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v6, 0x0

    const/16 v7, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v12, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1080
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 1083
    .end local v3    # "efid":I
    .end local v4    # "recordNumber":I
    .end local v5    # "data":[B
    .end local v12    # "adnRecIndex":I
    .end local v13    # "anr":[Ljava/lang/String;
    .end local v14    # "anrs":Ljava/lang/String;
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v26    # "recordSize":[I
    :pswitch_7
    const-string v2, "Loading UPDATE_EMAIL_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1084
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1085
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_13

    .line 1086
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1088
    :cond_13
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v5, v2

    check-cast v5, [B

    .line 1089
    .restart local v5    # "data":[B
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1090
    .restart local v4    # "recordNumber":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 1091
    .restart local v12    # "adnRecIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v24

    .line 1092
    .restart local v24    # "pbrIndex":I
    const-string v2, "EVENT_UPDATE_EMAIL_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1093
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1094
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_6
    array-length v2, v5

    move/from16 v0, v18

    if-ge v0, v2, :cond_14

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_UPDATE_EMAIL_RECORD_DONE data = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v6, v5, v18

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ",i is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1099
    aget-byte v2, v5, v18

    const/4 v6, -0x1

    if-eq v2, v6, :cond_15

    .line 1100
    const-string v2, "EVENT_UPDATE_EMAIL_RECORD_DONE data !=0xff"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v6, v4, -0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1106
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1107
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1108
    monitor-exit v6

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v2

    .line 1104
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v6, v4, -0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1097
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 1111
    .end local v4    # "recordNumber":I
    .end local v5    # "data":[B
    .end local v12    # "adnRecIndex":I
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "i":I
    .end local v24    # "pbrIndex":I
    :pswitch_8
    const-string v2, "Loading UPDATE_ANR_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1112
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1113
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v5, v2

    check-cast v5, [B

    .line 1114
    .restart local v5    # "data":[B
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1115
    .restart local v4    # "recordNumber":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 1116
    .restart local v12    # "adnRecIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v24

    .line 1117
    .restart local v24    # "pbrIndex":I
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_16

    .line 1118
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1120
    :cond_16
    const-string v2, "EVENT_UPDATE_ANR_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1121
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1122
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_7
    array-length v2, v5

    move/from16 v0, v18

    if-ge v0, v2, :cond_17

    .line 1126
    aget-byte v2, v5, v18

    const/4 v6, -0x1

    if-eq v2, v6, :cond_18

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v6, v4, -0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1132
    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1133
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1134
    monitor-exit v6

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v2

    .line 1130
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    add-int/lit8 v6, v4, -0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1125
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 1137
    .end local v4    # "recordNumber":I
    .end local v5    # "data":[B
    .end local v12    # "adnRecIndex":I
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v18    # "i":I
    .end local v24    # "pbrIndex":I
    :pswitch_9
    const-string v2, "EVENT_EF_IAP_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1138
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1139
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 1140
    .restart local v4    # "recordNumber":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v12, v2, -0x1

    .line 1141
    .restart local v12    # "adnRecIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v24

    .line 1142
    .restart local v24    # "pbrIndex":I
    const/16 v2, 0xc1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(II)I

    move-result v3

    .line 1143
    .restart local v3    # "efid":I
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .line 1144
    .local v28, "tag":I
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_19

    .line 1145
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1146
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1147
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1148
    monitor-exit v6

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v2

    .line 1151
    :cond_19
    iget-object v2, v15, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v26, v2

    check-cast v26, [I

    .line 1152
    .restart local v26    # "recordSize":[I
    const/4 v5, 0x0

    .line 1154
    .restart local v5    # "data":[B
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v2

    sub-int v25, v12, v2

    .line 1155
    .local v25, "recordIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleIAP_RECORD_SIZE_DONE adnRecIndex is: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", recordNumber is: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", recordIndex is: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1158
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v6, 0x3

    if-ne v2, v6, :cond_1a

    add-int/lit8 v2, v25, 0x1

    const/4 v6, 0x2

    aget v6, v26, v6

    if-gt v2, v6, :cond_1a

    if-nez v4, :cond_1b

    .line 1160
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1161
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1162
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1163
    monitor-exit v6

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v2

    .line 1166
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "data":[B
    check-cast v5, [B

    .line 1168
    .restart local v5    # "data":[B
    array-length v2, v5

    new-array v9, v2, [B

    .line 1169
    .local v9, "record_data":[B
    const/4 v2, 0x0

    const/4 v6, 0x0

    array-length v7, v9

    invoke-static {v5, v2, v9, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1170
    sparse-switch v28, :sswitch_data_0

    .line 1178
    :goto_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IAP  efid= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", update IAP index= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " with value= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v8, v25, 0x1

    const/4 v10, 0x0

    const/16 v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v4, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1172
    :sswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    int-to-byte v6, v4

    aput-byte v6, v9, v2

    goto :goto_8

    .line 1175
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    int-to-byte v6, v4

    aput-byte v6, v9, v2

    goto :goto_8

    .line 1191
    .end local v3    # "efid":I
    .end local v4    # "recordNumber":I
    .end local v5    # "data":[B
    .end local v9    # "record_data":[B
    .end local v12    # "adnRecIndex":I
    .end local v15    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "pbrIndex":I
    .end local v25    # "recordIndex":I
    .end local v26    # "recordSize":[I
    .end local v28    # "tag":I
    :pswitch_a
    const-string v2, "EVENT_UPDATE_IAP_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1192
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v15, v2

    check-cast v15, Landroid/os/AsyncResult;

    .line 1193
    .restart local v15    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v15, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1c

    .line 1194
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1196
    :cond_1c
    iget-object v2, v15, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, [B

    move-object v5, v2

    check-cast v5, [B

    .line 1197
    .restart local v5    # "data":[B
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1198
    .restart local v12    # "adnRecIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v24

    .line 1199
    .restart local v24    # "pbrIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v2

    sub-int v25, v12, v2

    .line 1200
    .restart local v25    # "recordIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage EVENT_UPDATE_IAP_RECORD_DONE recordIndex is: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", adnRecIndex is: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1202
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1203
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v2, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the iap email recordNumber is :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v6, v5, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1208
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1209
    monitor-exit v6

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v2

    .line 920
    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch

    .line 1170
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 210
    return-void
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 159
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 162
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    .line 195
    :goto_0
    return-object v2

    .line 167
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 171
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 172
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 175
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    monitor-exit v3

    goto :goto_0

    .line 177
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 179
    .local v1, "numRecs":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 180
    new-array v2, v1, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    .line 181
    new-array v2, v1, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 183
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v2, v0

    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v2, v0

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 189
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 190
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 191
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 194
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method parseType1AnrFile(II)V
    .locals 9
    .param p1, "numRecs"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 637
    const/4 v3, 0x0

    .line 639
    .local v3, "anrRec":[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseType1AnrFile: pbrIndex is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numRecs is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 642
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 644
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(II)Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, "anr":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 642
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 645
    .end local v2    # "anr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 646
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "UsimPhoneBookManager"

    const-string v8, "Error: Improper ICC card: No anr record for ADN, continuing"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "anr":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v7

    add-int v1, v5, v7

    .line 654
    .local v1, "adnRecIndex":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrsForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 655
    .local v6, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_4

    .line 656
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .restart local v6    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrsForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method parseType1EmailFile(II)V
    .locals 9
    .param p1, "numRecs"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 603
    const/4 v4, 0x0

    .line 605
    .local v4, "emailRec":[B
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseType1EmailFile: pbrIndex is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numRecs is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 609
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, p1, :cond_0

    .line 611
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [B

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(II)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "email":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 609
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 612
    .end local v3    # "email":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 613
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "UsimPhoneBookManager"

    const-string v8, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "email":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v7

    add-int v1, v5, v7

    .line 624
    .local v1, "adnRecIndex":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 625
    .local v6, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_4

    .line 626
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .restart local v6    # "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 153
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 155
    return-void
.end method

.method public updateAnrFile(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "adnRecNum"    # I
    .param p2, "oldAnr"    # Ljava/lang/String;
    .param p3, "newAnr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/16 v7, 0xc4

    .line 358
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    .line 359
    .local v3, "pbrIndex":I
    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(II)I

    move-result v2

    .line 360
    .local v2, "efid":I
    if-nez p2, :cond_0

    .line 361
    const-string p2, ""

    .line 362
    :cond_0
    if-nez p3, :cond_1

    .line 363
    const-string p3, ""

    .line 364
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "anrs":Ljava/lang/String;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 366
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 367
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 394
    :goto_0
    return v4

    .line 368
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v4, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 369
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyAnrNum_Pbrindex(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrFile getEmptyAnrNum_Pbrindex=0, pbrIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 371
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 372
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 375
    :cond_3
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 379
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrFile oldAnr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newAnr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " anrs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", efid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adnRecNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 381
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 382
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v6, 0x7

    invoke-virtual {p0, v6, p1, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    if-eqz v4, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 392
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 394
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto/16 :goto_0

    .line 377
    :cond_5
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_1

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "interrupted while trying to update by search"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 389
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public updateEmailFile(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "adnRecNum"    # I
    .param p2, "oldEmail"    # Ljava/lang/String;
    .param p3, "newEmail"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/16 v7, 0xca

    .line 316
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    .line 317
    .local v3, "pbrIndex":I
    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(II)I

    move-result v1

    .line 318
    .local v1, "efid":I
    if-nez p2, :cond_0

    .line 319
    const-string p2, ""

    .line 320
    :cond_0
    if-nez p3, :cond_1

    .line 321
    const-string p3, ""

    .line 322
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "emails":Ljava/lang/String;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 324
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 325
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 354
    :goto_0
    return v4

    .line 326
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v4, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 327
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyEmailNum_Pbrindex(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmailFile getEmptyEmailNum_Pbrindex=0, pbrIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 329
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 330
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 333
    :cond_3
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 337
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    if-eqz v4, :cond_4

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmailFile oldEmail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newEmail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " emails:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " efid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adnRecNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 340
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 341
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v6, 0x6

    invoke-virtual {p0, v6, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    if-eqz v4, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 352
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 354
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto/16 :goto_0

    .line 335
    :cond_6
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "interrupted while trying to update by search"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 348
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method
