.class public Landroid/database/CursorWindow;
.super Landroid/database/sqlite/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/database/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static sCursorWindowSize:I

.field private static final sWindowToPidMap:Landroid/util/SparseIntArray;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 681
    new-instance v0, Landroid/database/CursorWindow$1;

    invoke-direct {v0}, Landroid/database/CursorWindow$1;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 719
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 56
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 134
    invoke-static {p1}, Landroid/database/CursorWindow;->nativeCreateFromParcel(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 135
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    const-string v1, "Cursor window could not be created from binder."

    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeGetName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/database/CursorWindow$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/database/CursorWindow$1;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 56
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 97
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    .line 98
    sget v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    if-gez v0, :cond_0

    .line 102
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Landroid/database/CursorWindow;->sCursorWindowSize:I

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    sget v1, Landroid/database/CursorWindow;->sCursorWindowSize:I

    invoke-static {v0, v1}, Landroid/database/CursorWindow;->nativeCreate(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 106
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-nez v0, :cond_2

    .line 107
    new-instance v0, Landroid/database/CursorWindowAllocationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor window allocation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/database/CursorWindow;->sCursorWindowSize:I

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kb failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    const-string p1, "<unnamed>"

    goto :goto_0

    .line 110
    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget v1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-direct {p0, v0, v1}, Landroid/database/CursorWindow;->recordNewWindow(II)V

    .line 112
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "localWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private dispose()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 159
    :cond_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    if-eqz v0, :cond_1

    .line 160
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-direct {p0, v0}, Landroid/database/CursorWindow;->recordClosingOfWindow(I)V

    .line 161
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeDispose(I)V

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    .line 164
    :cond_1
    return-void
.end method

.method private static native nativeAllocRow(I)Z
.end method

.method private static native nativeClear(I)V
.end method

.method private static native nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)I
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFreeLastRow(I)V
.end method

.method private static native nativeGetBlob(III)[B
.end method

.method private static native nativeGetDouble(III)D
.end method

.method private static native nativeGetLong(III)J
.end method

.method private static native nativeGetName(I)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(I)I
.end method

.method private static native nativeGetString(III)Ljava/lang/String;
.end method

.method private static native nativeGetType(III)I
.end method

.method private static native nativePutBlob(I[BII)Z
.end method

.method private static native nativePutDouble(IDII)Z
.end method

.method private static native nativePutLong(IJII)Z
.end method

.method private static native nativePutNull(III)Z
.end method

.method private static native nativePutString(ILjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(II)Z
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/database/CursorWindow;
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 693
    sget-object v0, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    return-object v0
.end method

.method private printStats()Ljava/lang/String;
    .locals 15

    .prologue
    const/16 v14, 0x3d4

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 743
    .local v3, "myPid":I
    const/4 v10, 0x0

    .line 744
    .local v10, "total":I
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 745
    .local v7, "pidCounts":Landroid/util/SparseIntArray;
    sget-object v13, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v13

    .line 746
    :try_start_0
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 747
    .local v9, "size":I
    if-nez v9, :cond_0

    .line 749
    const-string v12, ""

    monitor-exit v13

    .line 772
    :goto_0
    return-object v12

    .line 751
    :cond_0
    const/4 v2, 0x0

    .local v2, "indx":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 752
    sget-object v12, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 753
    .local v6, "pid":I
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 754
    .local v11, "value":I
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v7, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 756
    .end local v6    # "pid":I
    .end local v11    # "value":I
    :cond_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 758
    .local v5, "numPids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_3

    .line 759
    const-string v12, " (# cursors opened by "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 761
    .restart local v6    # "pid":I
    if-ne v6, v3, :cond_2

    .line 762
    const-string/jumbo v12, "this proc="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :goto_3
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 767
    .local v4, "num":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    add-int/2addr v10, v4

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 756
    .end local v1    # "i":I
    .end local v2    # "indx":I
    .end local v4    # "num":I
    .end local v5    # "numPids":I
    .end local v6    # "pid":I
    .end local v9    # "size":I
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 764
    .restart local v1    # "i":I
    .restart local v2    # "indx":I
    .restart local v5    # "numPids":I
    .restart local v6    # "pid":I
    .restart local v9    # "size":I
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 771
    .end local v6    # "pid":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-le v12, v14, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 772
    .local v8, "s":Ljava/lang/String;
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# Open Cursors="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 771
    .end local v8    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4
.end method

.method private recordClosingOfWindow(I)V
    .locals 2
    .param p1, "window"    # I

    .prologue
    .line 731
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 732
    :try_start_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 734
    monitor-exit v1

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 737
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recordNewWindow(II)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "window"    # I

    .prologue
    .line 722
    sget-object v1, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 723
    :try_start_0
    sget-object v0, Landroid/database/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 724
    const-string v0, "CursorWindowStats"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const-string v0, "CursorWindowStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created a new Cursor. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/database/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    monitor-exit v1

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 260
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeAllocRow(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 262
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 185
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 186
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeClear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 474
    if-nez p3, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 479
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2, p3}, Landroid/database/CursorWindow;->nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 483
    return-void

    .line 481
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/database/CursorWindow;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 149
    :cond_0
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeLastRow()V
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 272
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeFreeLastRow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 276
    return-void

    .line 274
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 402
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetBlob(III)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 404
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 542
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetDouble(III)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 544
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 593
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 577
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(II)J
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 510
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetLong(III)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 512
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/database/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 226
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Landroid/database/CursorWindow;->nativeGetNumRows(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 228
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 561
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 435
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 437
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetString(III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 439
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public getType(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 372
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativeGetType(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 374
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 305
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFloat(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLong(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 319
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0, p1, p2}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    .line 349
    .local v0, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Landroid/database/CursorWindow;->dispose()V

    .line 717
    return-void
.end method

.method public putBlob([BII)Z
    .locals 2
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 605
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 607
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p2, v1

    invoke-static {v0, p1, v1, p3}, Landroid/database/CursorWindow;->nativePutBlob(I[BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 609
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .locals 2
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "column"    # I

    .prologue
    .line 657
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 659
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p3, v1

    invoke-static {v0, p1, p2, v1, p4}, Landroid/database/CursorWindow;->nativePutDouble(IDII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 661
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .locals 2
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "column"    # I

    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 641
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p3, v1

    invoke-static {v0, p1, p2, v1, p4}, Landroid/database/CursorWindow;->nativePutLong(IJII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 643
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 673
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 675
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Landroid/database/CursorWindow;->nativePutNull(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 677
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 624
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    iget v1, p0, Landroid/database/CursorWindow;->mStartPos:I

    sub-int v1, p2, v1

    invoke-static {v0, p1, v1, p3}, Landroid/database/CursorWindow;->nativePutString(ILjava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 626
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 1
    .param p1, "columnNum"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 246
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Landroid/database/CursorWindow;->nativeSetNumColumns(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 248
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 215
    iput p1, p0, Landroid/database/CursorWindow;->mStartPos:I

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 701
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 703
    :try_start_0
    iget v0, p0, Landroid/database/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    iget v0, p0, Landroid/database/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Landroid/database/CursorWindow;->nativeWriteToParcel(ILandroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 709
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 712
    :cond_0
    return-void

    .line 706
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method
