.class public final Lcom/android/internal/telephony/uicc/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field private static final UPDATE_ADN_EF_NOT_KNOWN:I = 0x1

.field private static final UPDATE_ADN_NO_ADN_LIST:I = 0x2

.field private static final UPDATE_ADN_NO_ADN_RECORD:I = 0x3

.field private static final UPDATE_ADN_PENDING:I = 0x4

.field private static final UPDATE_ADN_SUCCESS:I = 0x0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFEMAIL_TAG:I = 0xca


# instance fields
.field mAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAdncountofIcc:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field mGlobalAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mLocalAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUseLocalPb:Z

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field private mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field private mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 41
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdncountofIcc:I

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mGlobalAdnLikeFiles:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocalAdnLikeFiles:Landroid/util/SparseArray;

    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mGlobalAdnLikeFiles:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 57
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUseLocalPb:Z

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 81
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 110
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 111
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 115
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 101
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 102
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 103
    .local v3, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 104
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 107
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 407
    :cond_0
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 402
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 404
    .local v2, "waiter":Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 405
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 148
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private updateAdnBySearchOnEf(ZILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I
    .locals 21
    .param p1, "useLocalPb"    # Z
    .param p2, "efid"    # I
    .param p3, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 230
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v6

    .line 232
    .local v6, "extensionEF":I
    if-gez v6, :cond_0

    const/4 v3, 0x1

    .line 305
    .end local v6    # "extensionEF":I
    :goto_0
    return v3

    .line 234
    .restart local v6    # "extensionEF":I
    :cond_0
    const/16 v18, 0x0

    .line 236
    .local v18, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v3, 0x4f30

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 237
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v18

    .line 250
    :goto_1
    if-nez v18, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    .line 240
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    goto :goto_1

    .line 242
    :catch_0
    move-exception v12

    .line 247
    .local v12, "e":Ljava/lang/NullPointerException;
    const/16 v18, 0x0

    goto :goto_1

    .line 252
    .end local v12    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const/4 v7, -0x1

    .line 253
    .local v7, "index":I
    const/4 v11, 0x1

    .line 254
    .local v11, "count":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 255
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 256
    .local v17, "nextAdnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v15, 0x0

    .line 257
    .local v15, "isEmailOrAnrIsFull":Z
    const/16 v3, 0x4f30

    move/from16 v0, p2

    if-ne v0, v3, :cond_4

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v19

    .line 262
    .local v19, "pbrIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyAnrNum_Pbrindex(I)I

    move-result v10

    .line 263
    .local v10, "anrNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyEmailNum_Pbrindex(I)I

    move-result v13

    .line 264
    .local v13, "emailNum":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v10, :cond_3

    .line 266
    const/4 v15, 0x1

    .line 268
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    if-nez v13, :cond_4

    .line 269
    const/4 v15, 0x1

    .line 273
    .end local v10    # "anrNum":I
    .end local v13    # "emailNum":I
    .end local v19    # "pbrIndex":I
    :cond_4
    if-nez v15, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 274
    move v7, v11

    .line 280
    .end local v15    # "isEmailOrAnrIsFull":Z
    .end local v17    # "nextAdnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_5
    const/4 v3, -0x1

    if-ne v7, v3, :cond_7

    const/4 v3, 0x3

    goto/16 :goto_0

    .line 277
    .restart local v15    # "isEmailOrAnrIsFull":Z
    .restart local v17    # "nextAdnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 278
    goto :goto_2

    .line 282
    .end local v15    # "isEmailOrAnrIsFull":Z
    .end local v17    # "nextAdnRecord":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_7
    const-string v3, "AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update oldADN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newAdn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",index :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/16 v3, 0x4f30

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    .line 286
    add-int/lit8 v3, v7, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 287
    .local v14, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v3, v14, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 288
    iget v3, v14, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 289
    iget v3, v14, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 292
    .end local v14    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Message;

    .line 294
    .local v20, "pendingResponse":Landroid/os/Message;
    if-eqz v20, :cond_9

    const/4 v3, 0x4

    goto/16 :goto_0

    .line 296
    :cond_9
    const/16 v3, 0x4f30

    move/from16 v0, p2

    if-ne v0, v3, :cond_a

    move-object/from16 v3, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 297
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateEmailAndAnr(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 305
    .end local v6    # "extensionEF":I
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 299
    .restart local v6    # "extensionEF":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p2

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v4, v1, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v4, p4

    move/from16 v5, p2

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_3
.end method

.method private updateEmailAndAnr(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 467
    iget v0, p3, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 468
    .local v3, "extensionEF":I
    const/4 v7, 0x0

    .line 469
    .local v7, "success":Z
    const/16 v0, 0xca

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateUsimRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;II)Z

    move-result v7

    .line 471
    if-eqz v7, :cond_0

    .line 472
    const/16 v0, 0xc4

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateUsimRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;II)Z

    move-result v7

    .line 477
    if-eqz v7, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v2, p3, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    iget v4, p3, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v1, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 486
    :goto_0
    return-void

    .line 474
    :cond_0
    const-string v0, "update email failed"

    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_1
    const-string v0, "update anr failed"

    invoke-direct {p0, p6, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUsimRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;II)Z
    .locals 14
    .param p1, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "index"    # I
    .param p4, "tag"    # I

    .prologue
    .line 489
    const/4 v8, 0x0

    .line 490
    .local v8, "oldRecords":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 491
    .local v6, "newRecords":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 492
    .local v7, "oldRecord":Ljava/lang/String;
    const/4 v5, 0x0

    .line 493
    .local v5, "newRecord":Ljava/lang/String;
    const/4 v10, 0x0

    .line 495
    .local v10, "success":Z
    sparse-switch p4, :sswitch_data_0

    move v11, v10

    .line 541
    .end local v10    # "success":Z
    .local v11, "success":I
    :goto_0
    return v11

    .line 497
    .end local v11    # "success":I
    .restart local v10    # "success":Z
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    .line 498
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .line 507
    :goto_1
    if-eqz v8, :cond_0

    .line 508
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    if-ge v3, v4, :cond_0

    aget-object v9, v1, v3

    .line 509
    .local v9, "record":Ljava/lang/String;
    move-object v7, v9

    .line 513
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v9    # "record":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 514
    move-object v1, v6

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    if-ge v3, v4, :cond_1

    aget-object v9, v1, v3

    .line 515
    .restart local v9    # "record":Ljava/lang/String;
    move-object v5, v9

    .line 519
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v9    # "record":Ljava/lang/String;
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    if-eqz v7, :cond_4

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 522
    :cond_3
    const/4 v10, 0x1

    :goto_2
    move v11, v10

    .line 541
    .restart local v11    # "success":I
    goto :goto_0

    .line 501
    .end local v11    # "success":I
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v8

    .line 502
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    .line 503
    goto :goto_1

    .line 525
    :cond_4
    sparse-switch p4, :sswitch_data_1

    .line 534
    const/4 v10, 0x0

    goto :goto_2

    .line 527
    :sswitch_2
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p3

    invoke-virtual {v12, v0, v7, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateEmailFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 529
    goto :goto_2

    .line 531
    :sswitch_3
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p3

    invoke-virtual {v12, v0, v7, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAnrFile(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 532
    goto :goto_2

    .line 536
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/RuntimeException;
    const/4 v10, 0x0

    .line 538
    const-string v12, "AdnRecordCache"

    const-string v13, "update usim record failed"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 495
    nop

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch

    .line 525
    :sswitch_data_1
    .sparse-switch
        0xc4 -> :sswitch_3
        0xca -> :sswitch_2
    .end sparse-switch
.end method

.method private useLocalPb(Z)V
    .locals 3
    .param p1, "useLocalPb"    # Z

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUseLocalPb:Z

    if-ne v0, p1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_0
    const-string v1, "AdnRecordCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "Local"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Phonebook"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUseLocalPb:Z

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->useLocalPb(Z)V

    .line 316
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocalAdnLikeFiles:Landroid/util/SparseArray;

    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    .line 317
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    :goto_3
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    goto :goto_0

    .line 313
    :cond_1
    const-string v0, "Global"

    goto :goto_1

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mGlobalAdnLikeFiles:Landroid/util/SparseArray;

    goto :goto_2

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    goto :goto_3
.end method


# virtual methods
.method public extensionEfForEf(I)I
    .locals 1
    .param p1, "efid"    # I

    .prologue
    const/16 v0, 0x6f4a

    .line 133
    sparse-switch p1, :sswitch_data_0

    .line 140
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 134
    :sswitch_1
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 136
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 137
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 139
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAdnCount()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdncountofIcc:I

    return v0
.end method

.method public getAnrCount()I
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getEmailCount()I
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSpareAnrCount()I
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSpareAnrCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSpareAnrCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSpareEmailCount()I
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSpareEmailCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSpareEmailCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUsimAdnCount()I
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAdnCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimAdnCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x6f3a

    .line 417
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 420
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 421
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 424
    .local v2, "efid":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 425
    .local v5, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 427
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_1

    .line 428
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    :cond_1
    invoke-direct {p0, v5, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 431
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 432
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->setAdnCount(I)V

    goto :goto_0

    .line 436
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "efid":I
    .end local v5    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 437
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 438
    .restart local v2    # "efid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 439
    .local v3, "index":I
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 441
    .local v0, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    .line 442
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 443
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_2
    const/16 v6, 0x4f30

    if-ne v2, v6, :cond_3

    .line 446
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 451
    .local v4, "response":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 455
    if-eqz v4, :cond_0

    .line 456
    const/4 v6, 0x0

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v6, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 457
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 7
    .param p1, "efid"    # I
    .param p2, "extensionEf"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    const/16 v3, 0x4f30

    if-ne p1, v3, :cond_4

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "combinedResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    .line 335
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    .line 336
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    .line 338
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    .line 339
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 341
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v0

    .line 347
    .end local v0    # "combinedResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 348
    if-eqz p3, :cond_3

    .line 349
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 350
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 390
    :cond_3
    :goto_1
    return-void

    .line 343
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    .line 358
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 360
    .local v2, "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v2, :cond_6

    .line 364
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .restart local v2    # "waiters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    if-gez p2, :cond_7

    .line 379
    if-eqz p3, :cond_3

    .line 380
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF is not known ADN-like EF:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 382
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 388
    :cond_7
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {p0, v6, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mGlobalAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLocalAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimGlobalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimLocalPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearWaiters()V

    .line 95
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearUserWriters()V

    .line 97
    return-void
.end method

.method public setAdnCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 624
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mAdncountofIcc:I

    .line 625
    return-void
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "efid"    # I
    .param p2, "adn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 166
    .local v3, "extensionEF":I
    if-gez v3, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF is not known ADN-like EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 172
    .local v7, "pendingResponse":Landroid/os/Message;
    if-eqz v7, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have pending update for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v1, p2

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 202
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearchOnEf(ZILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v7

    .line 204
    .local v7, "result":I
    if-eqz v7, :cond_0

    const/16 v0, 0x4f30

    if-ne p1, v0, :cond_0

    .line 206
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearchOnEf(ZILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)I

    move-result v7

    .line 209
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 211
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF is not known ADN-like EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adn list not exist for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adn record don\'t exist for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have pending update for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateUsimAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "efid"    # I
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "recordIndex"    # I
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 548
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 549
    .local v4, "extensionEF":I
    if-gez v4, :cond_0

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF is not known ADN-like EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 598
    .end local v4    # "extensionEF":I
    :goto_0
    return-void

    .line 553
    .restart local v4    # "extensionEF":I
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->useLocalPb(Z)V

    .line 555
    const/4 v10, 0x0

    .line 557
    .local v10, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_1

    .line 558
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 570
    :goto_1
    if-nez v10, :cond_2

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn list not exist for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_1

    .line 562
    :catch_0
    move-exception v8

    .line 567
    .local v8, "e":Ljava/lang/NullPointerException;
    const/4 v10, 0x0

    goto :goto_1

    .line 575
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_2
    move v5, p3

    .line 577
    .local v5, "index":I
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_3

    .line 578
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 579
    .local v9, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v1, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    iput v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 580
    iget v1, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    iput v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 581
    iget v1, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    iput v1, p2, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 584
    .end local v9    # "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Message;

    .line 586
    .local v11, "pendingResponse":Landroid/os/Message;
    if-eqz v11, :cond_4

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 591
    :cond_4
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_5

    .line 592
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateEmailAndAnr(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 594
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 595
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, v5, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object v2, p2

    move v3, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method
