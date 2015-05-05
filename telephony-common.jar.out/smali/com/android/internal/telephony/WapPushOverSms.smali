.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDestPort:I

.field private mOriginatingAddress:Ljava/lang/String;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    .line 60
    iput v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDestPort:I

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 79
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 80
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getWAPPushBroadcastIntent(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/content/Intent;
    .locals 4
    .param p1, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 348
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.provider.Telephony.LESAFE_MMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/internal/telephony/InboundSmsHandler;->LESAFE_MMS_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 350
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering MMS to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/InboundSmsHandler;->LESAFE_MMS_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/InboundSmsHandler;->LESAFE_MMS_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-object v0
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I
    .locals 30
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Rx: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v14, 0x0

    .line 126
    .local v14, "index":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .local v15, "index":I
    :try_start_0
    aget-byte v27, p1, v14
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 127
    .local v24, "transactionId":I
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    :try_start_1
    aget-byte v27, p1, v15

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 129
    .local v20, "pduType":I
    const/16 v27, 0x6

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    const/16 v27, 0x7

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e0053

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    .line 133
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v14, v0, :cond_0

    .line 134
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .restart local v15    # "index":I
    :try_start_2
    aget-byte v27, p1, v14
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 135
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    :try_start_3
    aget-byte v27, p1, v15

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 137
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "index = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " PDU Type = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " transactionID = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/16 v27, 0x6

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    const/16 v27, 0x7

    move/from16 v0, v20

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 143
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v27, 0x1

    .line 339
    .end local v20    # "pduType":I
    .end local v24    # "transactionId":I
    :goto_0
    return v27

    .line 147
    .restart local v20    # "pduType":I
    .restart local v24    # "transactionId":I
    :cond_0
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/16 v27, 0x1

    goto :goto_0

    .line 152
    :cond_1
    new-instance v19, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 160
    .local v19, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v27

    if-nez v27, :cond_2

    .line 161
    const-string v27, "WAP PUSH"

    const-string v28, "Received PDU. Header Length error."

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/16 v27, 0x2

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v12, v0

    .line 165
    .local v12, "headerLength":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v27

    add-int v14, v14, v27

    .line 167
    move v13, v14

    .line 181
    .local v13, "headerStartIndex":I
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v27

    if-nez v27, :cond_3

    .line 182
    const-string v27, "WAP PUSH"

    const-string v28, "Received PDU. Header Content-Type error."

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v27, 0x2

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v18

    .line 187
    .local v18, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v6

    .line 188
    .local v6, "binaryContentType":J
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v27

    add-int v14, v14, v27

    .line 190
    new-array v11, v12, [B

    .line 191
    .local v11, "header":[B
    const/16 v27, 0x0

    array-length v0, v11

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v13, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    if-eqz v18, :cond_6

    const-string v27, "application/vnd.wap.coc"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 196
    move-object/from16 v17, p1

    .line 209
    .local v17, "intentData":[B
    :goto_1
    add-int v27, v14, v12

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 210
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v14, v0

    .line 211
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 212
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v25

    .line 213
    .local v25, "wapAppId":Ljava/lang/String;
    if-nez v25, :cond_4

    .line 214
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    .line 217
    :cond_4
    if-nez v18, :cond_7

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 219
    .local v8, "contentType":Ljava/lang/String;
    :goto_2
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "appid found: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 222
    const/16 v23, 0x1

    .line 223
    .local v23, "processFurther":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v26, v0

    .line 225
    .local v26, "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    if-nez v26, :cond_8

    .line 226
    const-string v27, "WAP PUSH"

    const-string v28, "wap push manager not found!"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 248
    :cond_5
    :goto_3
    if-nez v23, :cond_a

    .line 249
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 198
    .end local v8    # "contentType":Ljava/lang/String;
    .end local v17    # "intentData":[B
    .end local v23    # "processFurther":Z
    .end local v25    # "wapAppId":Ljava/lang/String;
    .end local v26    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_6
    add-int v9, v13, v12

    .line 199
    .local v9, "dataIndex":I
    :try_start_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v9

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 200
    .restart local v17    # "intentData":[B
    const/16 v27, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v9, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 335
    .end local v6    # "binaryContentType":J
    .end local v9    # "dataIndex":I
    .end local v11    # "header":[B
    .end local v12    # "headerLength":I
    .end local v13    # "headerStartIndex":I
    .end local v17    # "intentData":[B
    .end local v18    # "mimeType":Ljava/lang/String;
    .end local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v20    # "pduType":I
    :catch_0
    move-exception v4

    .line 338
    .end local v24    # "transactionId":I
    .local v4, "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_4
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/16 v27, 0x2

    goto/16 :goto_0

    .end local v4    # "aie":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v6    # "binaryContentType":J
    .restart local v11    # "header":[B
    .restart local v12    # "headerLength":I
    .restart local v13    # "headerStartIndex":I
    .restart local v17    # "intentData":[B
    .restart local v18    # "mimeType":Ljava/lang/String;
    .restart local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .restart local v20    # "pduType":I
    .restart local v24    # "transactionId":I
    .restart local v25    # "wapAppId":Ljava/lang/String;
    :cond_7
    move-object/from16 v8, v18

    .line 217
    goto/16 :goto_2

    .line 228
    .restart local v8    # "contentType":Ljava/lang/String;
    .restart local v23    # "processFurther":Z
    .restart local v26    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :cond_8
    :try_start_6
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v16, "intent":Landroid/content/Intent;
    const-string v27, "transactionId"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v27, "pduType"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v27, "header"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 232
    const-string v27, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 233
    const-string v27, "contentTypeParameters"

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 235
    const-string v27, "sub_id"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 238
    const-string v27, "address"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    :cond_9
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v8, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v22

    .line 242
    .local v22, "procRet":I
    const-string v27, "WAP PUSH"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "procRet:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 243
    and-int/lit8 v27, v22, 0x1

    if-lez v27, :cond_5

    const v27, 0x8000

    and-int v27, v27, v22

    if-nez v27, :cond_5

    .line 245
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 251
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v22    # "procRet":I
    .end local v26    # "wapPushMan":Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v10

    .line 252
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v27, "WAP PUSH"

    const-string v28, "remote func failed..."

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v8    # "contentType":Ljava/lang/String;
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v23    # "processFurther":Z
    .end local v25    # "wapAppId":Ljava/lang/String;
    :cond_a
    const-string v27, "WAP PUSH"

    const-string v28, "fall back to existing handler"

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-nez v18, :cond_b

    .line 258
    const-string v27, "WAP PUSH"

    const-string v28, "Header Content-Type error."

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 v27, 0x2

    goto/16 :goto_0

    .line 265
    :cond_b
    const-string v27, "application/vnd.wap.mms-message"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 266
    const-string v21, "android.permission.RECEIVE_MMS"

    .line 267
    .local v21, "permission":Ljava/lang/String;
    const/16 v5, 0x12

    .line 288
    .local v5, "appOp":I
    :goto_5
    const/16 v16, 0x0

    .line 290
    .restart local v16    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->getWAPPushBroadcastIntent(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/content/Intent;

    move-result-object v16

    .line 294
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v27, "transactionId"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const-string v27, "pduType"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v27, "header"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 298
    const-string v27, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 300
    const-string v27, "sub_id"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v27, "contentTypeParameters"

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 303
    const-string v27, "sub_id"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v27, "destination_port"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mDestPort:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string v27, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 334
    const/16 v27, -0x1

    goto/16 :goto_0

    .line 269
    .end local v5    # "appOp":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v21    # "permission":Ljava/lang/String;
    :cond_c
    const-string v21, "android.permission.RECEIVE_WAP_PUSH"

    .line 270
    .restart local v21    # "permission":Ljava/lang/String;
    const/16 v5, 0x13

    .line 272
    .restart local v5    # "appOp":I
    const-string v27, "WAP PUSH"

    const-string v28, "dispatchWapPdu    receive WAP PUSH - non MMS "

    invoke-static/range {v27 .. v28}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5

    .line 335
    .end local v5    # "appOp":I
    .end local v6    # "binaryContentType":J
    .end local v11    # "header":[B
    .end local v12    # "headerLength":I
    .end local v13    # "headerStartIndex":I
    .end local v14    # "index":I
    .end local v17    # "intentData":[B
    .end local v18    # "mimeType":Ljava/lang/String;
    .end local v19    # "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v20    # "pduType":I
    .end local v21    # "permission":Ljava/lang/String;
    .end local v24    # "transactionId":I
    .restart local v15    # "index":I
    :catch_2
    move-exception v4

    move v14, v15

    .end local v15    # "index":I
    .restart local v14    # "index":I
    goto/16 :goto_4
.end method

.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;I)I
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p4, "address"    # Ljava/lang/String;
    .param p5, "destPort"    # I

    .prologue
    .line 98
    iput-object p4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    .line 99
    iput p5, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDestPort:I

    .line 102
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchWapPdu mOriginatingAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    mDestPort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mDestPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 65
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 66
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 72
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method
