.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field final mInfos:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x9

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    return-void
.end method


# virtual methods
.method public getBuffersSizeKb()J
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getCachedSize()J
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeKb()J
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getDataText(JZ)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # J
    .param p3, "showByte"    # Z

    .prologue
    .line 100
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 101
    if-eqz p3, :cond_0

    const-string v0, "B"

    .line 102
    .local v0, "rate":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v1, "rateRsult":Ljava/lang/StringBuffer;
    const-wide/16 v2, 0x3e7

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 104
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    :goto_1
    return-object v2

    .line 101
    .end local v0    # "rate":Ljava/lang/String;
    .end local v1    # "rateRsult":Ljava/lang/StringBuffer;
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 105
    .restart local v0    # "rate":Ljava/lang/String;
    .restart local v1    # "rateRsult":Ljava/lang/StringBuffer;
    :cond_1
    const-wide/32 v2, 0xf9c00

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 106
    long-to-float v2, p1

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/internal/util/MemInfoReader;->getSpeedDigitalStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 107
    :cond_2
    const-wide/32 v2, 0x3e700000

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    .line 108
    long-to-float v2, p1

    const/high16 v3, 0x49800000    # 1048576.0f

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/internal/util/MemInfoReader;->getSpeedDigitalStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 110
    :cond_3
    long-to-float v2, p1

    const/high16 v3, 0x4e800000

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/internal/util/MemInfoReader;->getSpeedDigitalStr(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public getFreeSize()J
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeSizeKb()J
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getShmemSizeKb()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSlabSizeKb()J
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSpeedDigitalStr(F)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # F

    .prologue
    .line 115
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 116
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 117
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "sf":Ljava/text/DecimalFormat;
    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    .line 119
    .end local v0    # "sf":Ljava/text/DecimalFormat;
    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 120
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v0    # "sf":Ljava/text/DecimalFormat;
    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 123
    .end local v0    # "sf":Ljava/text/DecimalFormat;
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .restart local v0    # "sf":Ljava/text/DecimalFormat;
    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSwapFreeSizeKb()J
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getSwapTotalSizeKb()J
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSizeKb()J
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getVirtualSize(J)J
    .locals 7
    .param p1, "data"    # J

    .prologue
    const-wide v4, 0x80000000L

    const-wide/32 v2, 0x40000000

    const-wide/32 v0, 0x20000000

    .line 89
    cmp-long v6, p1, v0

    if-gtz v6, :cond_1

    move-wide p1, v0

    .line 96
    .end local p1    # "data":J
    :cond_0
    :goto_0
    return-wide p1

    .line 91
    .restart local p1    # "data":J
    :cond_1
    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    move-wide p1, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    cmp-long v0, p1, v4

    if-gtz v0, :cond_0

    move-wide p1, v4

    .line 94
    goto :goto_0
.end method

.method public getZramTotalSizeKb()J
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 33
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 37
    return-void

    .line 35
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method
