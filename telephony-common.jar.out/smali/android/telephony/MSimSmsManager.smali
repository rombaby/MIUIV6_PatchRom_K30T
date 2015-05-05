.class public Landroid/telephony/MSimSmsManager;
.super Ljava/lang/Object;
.source "MSimSmsManager.java"


# static fields
.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "MSimSmsManager"

.field private static final TIMESTAMP_LENGTH:I = 0x7

.field protected static isMultiSimEnabled:Z

.field private static final sInstance:Landroid/telephony/MSimSmsManager;


# instance fields
.field private final DEFAULT_SUB:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Landroid/telephony/MSimSmsManager;

    invoke-direct {v0}, Landroid/telephony/MSimSmsManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimSmsManager;->sInstance:Landroid/telephony/MSimSmsManager;

    .line 90
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/telephony/MSimSmsManager;->isMultiSimEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/MSimSmsManager;->DEFAULT_SUB:I

    .line 503
    return-void
.end method

.method private static charToBCD(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 935
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 936
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 938
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .local v3, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 777
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 778
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 779
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 781
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 782
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6, p1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 784
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 785
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 790
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 972
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 974
    .local v1, "textPart":[B
    if-eqz p1, :cond_0

    .line 976
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 978
    .local v2, "userData":[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 979
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 980
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 985
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 986
    .local v0, "ret":[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 987
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    return-object v0

    .line 983
    .end local v0    # "ret":[B
    .end local v2    # "userData":[B
    :cond_0
    move-object v2, v1

    .restart local v2    # "userData":[B
    goto :goto_0
.end method

.method public static getCDMADeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[B
    .locals 20
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "date"    # J

    .prologue
    .line 1044
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 1045
    :cond_0
    const-string v17, "MSimSmsManager"

    const-string v18, "getCDMADeliveryPdu,message =null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/16 v17, 0x0

    .line 1154
    :cond_1
    :goto_0
    return-object v17

    .line 1052
    :cond_2
    const/4 v10, 0x0

    .line 1053
    .local v10, "header":[B
    if-eqz v10, :cond_5

    const/16 v17, 0x40

    :goto_1
    or-int/lit8 v17, v17, 0x0

    move/from16 v0, v17

    int-to-byte v12, v0

    .line 1054
    .local v12, "mtiByte":B
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/telephony/MSimSmsManager;->getDeliveryPduHeader(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;

    move-result-object v11

    .line 1056
    .local v11, "headerStream":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v17, 0xb4

    move/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1058
    .local v5, "byteStream":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1068
    .local v7, "dos":Ljava/io/DataOutputStream;
    const v16, 0xfdea

    .line 1069
    .local v16, "uTeleserviceID":I
    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1072
    const/4 v3, 0x0

    .line 1073
    .local v3, "bIsServicePresent":B
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1076
    const/4 v15, 0x0

    .line 1077
    .local v15, "uServicecategory":I
    invoke-virtual {v7, v15}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1086
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 1088
    .local v6, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v6, :cond_6

    .line 1089
    const/16 v17, 0x0

    .line 1138
    if-eqz v5, :cond_3

    .line 1139
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1142
    :cond_3
    if-eqz v7, :cond_4

    .line 1143
    invoke-virtual {v7}, Ljava/io/FilterOutputStream;->close()V

    .line 1146
    :cond_4
    if-eqz v11, :cond_1

    .line 1147
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1149
    :catch_0
    move-exception v8

    .line 1150
    .local v8, "e":Ljava/io/IOException;
    const-string v18, "MSimSmsManager"

    const-string v19, "Error close dos"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1053
    .end local v3    # "bIsServicePresent":B
    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v7    # "dos":Ljava/io/DataOutputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "headerStream":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "mtiByte":B
    .end local v15    # "uServicecategory":I
    .end local v16    # "uTeleserviceID":I
    :cond_5
    const/16 v17, 0x0

    goto :goto_1

    .line 1090
    .restart local v3    # "bIsServicePresent":B
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v7    # "dos":Ljava/io/DataOutputStream;
    .restart local v11    # "headerStream":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "mtiByte":B
    .restart local v15    # "uServicecategory":I
    .restart local v16    # "uTeleserviceID":I
    :cond_6
    :try_start_2
    iget v0, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1091
    iget v0, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1092
    iget v0, v6, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1093
    const-string v17, "MSimSmsManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "message type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "destination add="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "message="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget v0, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1096
    iget v0, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1097
    iget-object v0, v6, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v6, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1101
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1102
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1103
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1105
    new-instance v17, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v13

    .line 1106
    .local v13, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    new-instance v14, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v14}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1107
    .local v14, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p2

    iput-object v0, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1109
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1110
    const/16 v17, 0x4

    move/from16 v0, v17

    iput v0, v14, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1112
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1113
    .local v4, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1115
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1116
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1117
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1118
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1120
    iput-object v14, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1122
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v9

    .line 1123
    .local v9, "encodedBearerData":[B
    if-eqz v9, :cond_a

    .line 1125
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1126
    const-string v17, "MSimSmsManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "encodedBearerData length="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v9

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/16 v17, 0x0

    array-length v0, v9

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v9, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1138
    :goto_2
    if-eqz v5, :cond_7

    .line 1139
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1142
    :cond_7
    if-eqz v7, :cond_8

    .line 1143
    invoke-virtual {v7}, Ljava/io/FilterOutputStream;->close()V

    .line 1146
    :cond_8
    if-eqz v11, :cond_9

    .line 1147
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1154
    .end local v3    # "bIsServicePresent":B
    .end local v4    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v6    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v9    # "encodedBearerData":[B
    .end local v13    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v14    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v15    # "uServicecategory":I
    :cond_9
    :goto_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    goto/16 :goto_0

    .line 1131
    .restart local v3    # "bIsServicePresent":B
    .restart local v4    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v6    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v9    # "encodedBearerData":[B
    .restart local v13    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .restart local v14    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v15    # "uServicecategory":I
    :cond_a
    const/16 v17, 0x0

    :try_start_4
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1134
    .end local v3    # "bIsServicePresent":B
    .end local v4    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v6    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v9    # "encodedBearerData":[B
    .end local v13    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v14    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v15    # "uServicecategory":I
    :catch_1
    move-exception v8

    .line 1135
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v17, "MSimSmsManager"

    const-string v18, "Error writing dos"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1138
    if-eqz v5, :cond_b

    .line 1139
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1142
    :cond_b
    if-eqz v7, :cond_c

    .line 1143
    invoke-virtual {v7}, Ljava/io/FilterOutputStream;->close()V

    .line 1146
    :cond_c
    if-eqz v11, :cond_9

    .line 1147
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 1149
    :catch_2
    move-exception v8

    .line 1150
    const-string v17, "MSimSmsManager"

    const-string v18, "Error close dos"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1149
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v3    # "bIsServicePresent":B
    .restart local v4    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v6    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v9    # "encodedBearerData":[B
    .restart local v13    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .restart local v14    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v15    # "uServicecategory":I
    :catch_3
    move-exception v8

    .line 1150
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v17, "MSimSmsManager"

    const-string v18, "Error close dos"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1137
    .end local v3    # "bIsServicePresent":B
    .end local v4    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v6    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "encodedBearerData":[B
    .end local v13    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v14    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v15    # "uServicecategory":I
    :catchall_0
    move-exception v17

    .line 1138
    if-eqz v5, :cond_d

    .line 1139
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1142
    :cond_d
    if-eqz v7, :cond_e

    .line 1143
    invoke-virtual {v7}, Ljava/io/FilterOutputStream;->close()V

    .line 1146
    :cond_e
    if-eqz v11, :cond_f

    .line 1147
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1151
    :cond_f
    :goto_4
    throw v17

    .line 1149
    :catch_4
    move-exception v8

    .line 1150
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v18, "MSimSmsManager"

    const-string v19, "Error close dos"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static getDefault()Landroid/telephony/MSimSmsManager;
    .locals 1

    .prologue
    .line 498
    sget-object v0, Landroid/telephony/MSimSmsManager;->sInstance:Landroid/telephony/MSimSmsManager;

    return-object v0
.end method

.method private static getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)[B
    .locals 7
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "subscription"    # I

    .prologue
    .line 1033
    invoke-static {p5}, Landroid/telephony/MSimSmsManager;->isCDMAPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    invoke-static {p0, p1, p2, p3, p4}, Landroid/telephony/MSimSmsManager;->getCDMADeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[B

    move-result-object v0

    .line 1036
    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Landroid/telephony/MSimSmsManager;->getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)[B
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "header"    # [B
    .param p6, "encoding"    # I

    .prologue
    .line 1163
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1164
    :cond_0
    const/4 v6, 0x0

    .line 1220
    :goto_0
    return-object v6

    .line 1168
    :cond_1
    if-eqz p5, :cond_3

    const/16 v6, 0x40

    :goto_1
    or-int/lit8 v6, v6, 0x0

    int-to-byte v2, v6

    .line 1169
    .local v2, "mtiByte":B
    invoke-static {p1, v2}, Landroid/telephony/MSimSmsManager;->getDeliveryPduHeader(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1172
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p6, :cond_2

    .line 1174
    const/4 p6, 0x1

    .line 1177
    :cond_2
    const/4 v6, 0x1

    if-ne p6, v6, :cond_4

    .line 1178
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p2, p5, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1201
    .local v5, "userData":[B
    :goto_2
    const/4 v6, 0x1

    if-ne p6, v6, :cond_6

    .line 1202
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xa0

    if-le v6, v7, :cond_5

    .line 1204
    const/4 v6, 0x0

    goto :goto_0

    .line 1168
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "mtiByte":B
    .end local v5    # "userData":[B
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1181
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "mtiByte":B
    :cond_4
    :try_start_1
    invoke-static {p2, p5}, Landroid/telephony/MSimSmsManager;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .restart local v5    # "userData":[B
    goto :goto_2

    .line 1182
    .end local v5    # "userData":[B
    :catch_0
    move-exception v4

    .line 1183
    .local v4, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v6, "GSM"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1185
    const/4 v6, 0x0

    goto :goto_0

    .line 1188
    .end local v4    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 1192
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {p2, p5}, Landroid/telephony/MSimSmsManager;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 1193
    .restart local v5    # "userData":[B
    const/4 p6, 0x3

    goto :goto_2

    .line 1194
    .end local v5    # "userData":[B
    :catch_2
    move-exception v4

    .line 1195
    .restart local v4    # "uex":Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1197
    const/4 v6, 0x0

    goto :goto_0

    .line 1206
    .end local v1    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v4    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v5    # "userData":[B
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1216
    :goto_3
    invoke-static {p3, p4}, Landroid/telephony/MSimSmsManager;->getTimestamp(J)[B

    move-result-object v3

    .line 1217
    .local v3, "timestamp":[B
    const/4 v6, 0x0

    array-length v7, v3

    invoke-virtual {v0, v3, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1219
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1220
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    .line 1208
    .end local v3    # "timestamp":[B
    :cond_6
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8c

    if-le v6, v7, :cond_7

    .line 1210
    const/4 v6, 0x0

    goto :goto_0

    .line 1214
    :cond_7
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3
.end method

.method private static getDeliveryPduHeader(Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "mtiByte"    # B

    .prologue
    const/4 v3, 0x0

    .line 1009
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1011
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1014
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1018
    .local v1, "daBytes":[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1022
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1025
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1026
    return-object v0

    :cond_0
    move v2, v3

    .line 1018
    goto :goto_0
.end method

.method public static getSmsCapacityOnIcc(I)I
    .locals 3
    .param p0, "subscription"    # I

    .prologue
    .line 883
    const/4 v1, -0x1

    .line 885
    .local v1, "ret":I
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 886
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 887
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/msim/ISmsMSim;->getSmsCapacityOnIcc(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 892
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v1

    .line 889
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getTimestamp(J)[B
    .locals 16
    .param p0, "time"    # J

    .prologue
    .line 943
    const/4 v13, 0x7

    new-array v9, v13, [B

    .line 944
    .local v9, "timestamp":[B
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v13, "yyMMddkkmmss:Z"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 945
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "date":[Ljava/lang/String;
    array-length v13, v1

    add-int/lit8 v13, v13, -0x1

    aget-object v11, v1, v13

    .line 948
    .local v11, "timezone":Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 949
    .local v8, "signMark":Ljava/lang/String;
    const/4 v13, 0x1

    const/4 v14, 0x3

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 950
    .local v3, "hour":I
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 951
    .local v5, "min":I
    mul-int/lit8 v13, v3, 0x4

    div-int/lit8 v14, v5, 0xf

    add-int v12, v13, v14

    .line 953
    .local v12, "timezoneValue":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v1, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 955
    .local v10, "timestampStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 956
    .local v2, "digitCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_1

    .line 957
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 958
    .local v0, "c":C
    and-int/lit8 v13, v2, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    const/4 v7, 0x4

    .line 959
    .local v7, "shift":I
    :goto_1
    shr-int/lit8 v13, v2, 0x1

    aget-byte v14, v9, v13

    invoke-static {v0}, Landroid/telephony/MSimSmsManager;->charToBCD(C)I

    move-result v15

    and-int/lit8 v15, v15, 0xf

    shl-int/2addr v15, v7

    int-to-byte v15, v15

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v9, v13

    .line 960
    add-int/lit8 v2, v2, 0x1

    .line 956
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 958
    .end local v7    # "shift":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 963
    .end local v0    # "c":C
    :cond_1
    const-string v13, "-"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 964
    array-length v13, v9

    add-int/lit8 v13, v13, -0x1

    array-length v14, v9

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, v9, v14

    or-int/lit8 v14, v14, 0x8

    int-to-byte v14, v14

    aput-byte v14, v9, v13

    .line 967
    :cond_2
    return-object v9
.end method

.method private static isCDMAPhone(I)Z
    .locals 3
    .param p0, "subscription"    # I

    .prologue
    .line 998
    const/4 v1, 0x0

    .line 999
    .local v1, "isCDMA":Z
    invoke-static {}, Landroid/telephony/MSimSmsManager;->isMultiSimEnabledMms()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/MSimTelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1002
    .local v0, "activePhone":I
    :goto_0
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 1003
    const/4 v1, 0x1

    .line 1005
    :cond_0
    return v1

    .line 999
    .end local v0    # "activePhone":I
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public static isMultiSimEnabledMms()Z
    .locals 1

    .prologue
    .line 994
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public copyMessageToIcc([B[BII)Z
    .locals 7
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "subscription"    # I

    .prologue
    .line 521
    const/4 v6, 0x0

    .line 523
    .local v6, "success":Z
    if-nez p2, :cond_0

    .line 524
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pdu is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 527
    :cond_0
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 528
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 529
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/msim/ISmsMSim;->copyMessageToIccEf(Ljava/lang/String;I[B[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 536
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return v6

    .line 532
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public copySmsToIcc(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)Z
    .locals 13
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p6, "status"    # I
    .param p7, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 1224
    .local p5, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 1225
    .local v11, "ret":Z
    move/from16 v6, p6

    .line 1226
    .local v6, "boxId":I
    move/from16 v5, p7

    .line 1227
    .local v5, "subscription":I
    move-object v1, p2

    .line 1228
    .local v1, "mAddress":Ljava/lang/String;
    move-wide/from16 v3, p3

    .line 1230
    .local v3, "mTimeStamp":J
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v12

    .line 1231
    .local v12, "sm":Landroid/telephony/SmsManager;
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v9

    .line 1234
    .local v9, "msm":Landroid/telephony/MSimSmsManager;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1235
    .local v2, "message":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1237
    .local v10, "pdu":[B
    invoke-static {v6}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1238
    const/4 v0, 0x0

    invoke-static {p1, v1, v2, v0, v5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    iget-object v10, v0, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1240
    const/4 v8, 0x5

    .line 1246
    .local v8, "iccstatus":I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v9, v0, v10, v8, v5}, Landroid/telephony/MSimSmsManager;->copyMessageToIcc([B[BII)Z

    move-result v0

    :goto_1
    and-int/2addr v11, v0

    .line 1249
    if-nez v11, :cond_0

    .line 1253
    .end local v2    # "message":Ljava/lang/String;
    .end local v8    # "iccstatus":I
    .end local v10    # "pdu":[B
    :cond_1
    return v11

    .restart local v2    # "message":Ljava/lang/String;
    .restart local v10    # "pdu":[B
    :cond_2
    move-object v0, p1

    .line 1242
    invoke-static/range {v0 .. v5}, Landroid/telephony/MSimSmsManager;->getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)[B

    move-result-object v10

    .line 1244
    const/4 v8, 0x1

    .restart local v8    # "iccstatus":I
    goto :goto_0

    .line 1246
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v12, v0, v10, v8}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v0

    goto :goto_1
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 7
    .param p1, "messageIndex"    # I
    .param p2, "subscription"    # I

    .prologue
    .line 551
    const/4 v6, 0x0

    .line 552
    .local v6, "success":Z
    const/16 v1, 0xaf

    new-array v4, v1, [B

    .line 553
    .local v4, "pdu":[B
    const/4 v1, -0x1

    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 556
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 557
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 558
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move v2, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/msim/ISmsMSim;->updateMessageOnIccEf(Ljava/lang/String;II[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 565
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v6

    .line 561
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public disableCellBroadcast(II)Z
    .locals 3
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    .line 674
    const/4 v1, 0x0

    .line 677
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 678
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 679
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/msim/ISmsMSim;->disableCellBroadcast(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 686
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v1

    .line 682
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "subscription"    # I

    .prologue
    .line 747
    const/4 v1, 0x0

    .line 749
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 750
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 753
    :cond_0
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 754
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 755
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/ISmsMSim;->disableCellBroadcastRange(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 762
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return v1

    .line 758
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 3
    .param p1, "messageIdentifier"    # I
    .param p2, "subscription"    # I

    .prologue
    .line 642
    const/4 v1, 0x0

    .line 645
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 646
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 647
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/msim/ISmsMSim;->enableCellBroadcast(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 654
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v1

    .line 650
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "subscription"    # I

    .prologue
    .line 709
    const/4 v1, 0x0

    .line 711
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 712
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 715
    :cond_0
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 716
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 717
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/ISmsMSim;->enableCellBroadcastRange(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 724
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return v1

    .line 720
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    const/4 v1, 0x0

    .line 612
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 613
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 614
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/android/internal/telephony/msim/ISmsMSim;->getAllMessagesFromIccEf(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 621
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    invoke-static {v1, p1}, Landroid/telephony/MSimSmsManager;->createMessageListFromRawRecords(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 617
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method getImsSmsFormat(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 829
    const-string v0, "unknown"

    .line 831
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 832
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v1, :cond_0

    .line 833
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ISmsMSim;->getImsSmsFormat(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 838
    .end local v1    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return-object v0

    .line 835
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getPreferredSmsSubscription()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 847
    const/4 v1, 0x0

    .line 849
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :try_start_0
    const-string v3, "isms_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 850
    invoke-interface {v1}, Lcom/android/internal/telephony/msim/ISmsMSim;->getPreferredSmsSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 854
    :goto_0
    return v2

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 853
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 854
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method isImsSmsSupported(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 804
    const/4 v0, 0x0

    .line 806
    .local v0, "boSupported":Z
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 807
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v1, :cond_0

    .line 808
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ISmsMSim;->isImsSmsSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 813
    .end local v1    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v0

    .line 810
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 865
    const/4 v1, 0x0

    .line 867
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :try_start_0
    const-string v3, "isms_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 868
    invoke-interface {v1}, Lcom/android/internal/telephony/msim/ISmsMSim;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 872
    :goto_0
    return v2

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 871
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 872
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "originatorPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "subscription"    # I

    .prologue
    .line 468
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_0
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 482
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 483
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff

    and-int v4, p3, v2

    const v2, 0xffff

    and-int v5, p4, v2

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendDataWithOrigPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 9
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "subscription"    # I

    .prologue
    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    :cond_0
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 425
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 426
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff

    and-int v4, p3, v2

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 8
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
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v3, 0x0

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 276
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 278
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 279
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    const/4 v5, 0x0

    .line 288
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 289
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 290
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 292
    .restart local v5    # "sentIntent":Landroid/app/PendingIntent;
    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 293
    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 295
    .restart local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_4
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/MSimSmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 283
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZII)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
    .param p9, "subscription"    # I
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
            ">;IZII)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 355
    :try_start_0
    const-string v2, "isms_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v1

    .line 357
    .local v1, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v1, :cond_1

    .line 358
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendMultipartTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v1    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    const/4 v6, 0x0

    .line 367
    .local v6, "sentIntent":Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 368
    .local v7, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 369
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 371
    .restart local v6    # "sentIntent":Landroid/app/PendingIntent;
    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 372
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 374
    .restart local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/telephony/MSimSmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZII)V

    goto :goto_0

    .line 362
    .end local v6    # "sentIntent":Landroid/app/PendingIntent;
    .end local v7    # "deliveryIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 8
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "subscription"    # I

    .prologue
    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 141
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 142
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZII)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I
    .param p7, "isExpectMore"    # Z
    .param p8, "validityPeriod"    # I
    .param p9, "subscription"    # I

    .prologue
    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 199
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_1

    .line 200
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/msim/ISmsMSim;->sendTextWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_1
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[BI)Z
    .locals 7
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B
    .param p4, "subscription"    # I

    .prologue
    .line 584
    const/4 v6, 0x0

    .line 587
    .local v6, "success":Z
    :try_start_0
    const-string v1, "isms_msim"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/msim/ISmsMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ISmsMSim;

    move-result-object v0

    .line 588
    .local v0, "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    if-eqz v0, :cond_0

    .line 589
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/msim/ISmsMSim;->updateMessageOnIccEf(Ljava/lang/String;II[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 596
    .end local v0    # "iccISms":Lcom/android/internal/telephony/msim/ISmsMSim;
    :cond_0
    :goto_0
    return v6

    .line 592
    :catch_0
    move-exception v1

    goto :goto_0
.end method
