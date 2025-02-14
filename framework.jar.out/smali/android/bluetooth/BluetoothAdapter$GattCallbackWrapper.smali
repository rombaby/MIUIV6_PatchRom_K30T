.class Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
.super Landroid/bluetooth/IBluetoothGattCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GattCallbackWrapper"
.end annotation


# static fields
.field private static final LE_CALLBACK_REG_TIMEOUT:I = 0x7d0

.field private static final LE_CALLBACK_REG_WAIT_COUNT:I = 0x5


# instance fields
.field private final mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

.field private mBluetoothAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/bluetooth/BluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mLeHandle:I

.field private final mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mScanFilter:[Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;)V
    .locals 1
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "leScanCb"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .param p3, "uuid"    # [Ljava/util/UUID;

    .prologue
    .line 1775
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    .line 1776
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    .line 1777
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 1778
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    .line 1779
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 1780
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    .line 1781
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;)V
    .locals 1
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "leScanCb"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .param p3, "uuid"    # [Ljava/util/UUID;
    .param p4, "callback"    # Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    .prologue
    .line 1784
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    .line 1785
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    .line 1786
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 1787
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    .line 1788
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 1789
    iput-object p4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    .line 1790
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)I
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    .prologue
    .line 1760
    iget v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;

    .prologue
    .line 1760
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    return-object v0
.end method

.method private waitForRegisteration(I)Z
    .locals 7
    .param p1, "maxWaitCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 1802
    const/4 v2, 0x0

    .line 1803
    .local v2, "started":Z
    monitor-enter p0

    .line 1804
    :try_start_0
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    monitor-exit p0

    .line 1817
    :goto_0
    return v3

    .line 1805
    :cond_0
    const/4 v0, 0x0

    .line 1807
    .local v0, "count":I
    :goto_1
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    if-ge v0, p1, :cond_1

    .line 1809
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1813
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1810
    :catch_0
    move-exception v1

    .line 1811
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "BluetoothAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback reg wait interrupted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1816
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1815
    .restart local v0    # "count":I
    :cond_1
    :try_start_3
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-lez v4, :cond_2

    const/4 v2, 0x1

    .line 1816
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v2

    .line 1817
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1815
    goto :goto_3
.end method


# virtual methods
.method public advertiseStarted()Z
    .locals 1

    .prologue
    .line 1798
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->waitForRegisteration(I)Z

    move-result v0

    return v0
.end method

.method public onAdvertiseStateChange(II)V
    .locals 6
    .param p1, "advertiseState"    # I
    .param p2, "status"    # I

    .prologue
    .line 2022
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "on advertise call back, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 2024
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    invoke-interface {v3, p2}, Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;->onAdvertiseStart(I)V

    .line 2048
    :goto_0
    return-void

    .line 2026
    :cond_0
    monitor-enter p0

    .line 2027
    if-nez p2, :cond_1

    .line 2028
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 2031
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 2033
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregistering client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    .line 2036
    const/4 v3, -0x1

    iput v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 2037
    const/4 v3, 0x0

    # setter for: Landroid/bluetooth/BluetoothAdapter;->mAdvertisingGattCallback:Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    invoke-static {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->access$602(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;)Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2045
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2046
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    invoke-interface {v3, p2}, Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;->onAdvertiseStop(I)V

    goto :goto_0

    .line 2038
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    .line 2039
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unregister client"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2045
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2042
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    :try_start_4
    const-string v3, "BluetoothAdapter"

    const-string v4, "cannot unregister client, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "value"    # [B

    .prologue
    .line 1984
    return-void
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1990
    return-void
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "clientIf"    # I
    .param p3, "connected"    # Z
    .param p4, "address"    # Ljava/lang/String;

    .prologue
    .line 1925
    return-void
.end method

.method public onClientRegistered(II)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "clientIf"    # I

    .prologue
    const/4 v8, -0x1

    .line 1868
    const-string v5, "BluetoothAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onClientRegistered() - status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " clientIf="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    monitor-enter p0

    .line 1871
    :try_start_0
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-ne v5, v8, :cond_0

    .line 1872
    const-string v5, "BluetoothAdapter"

    const-string/jumbo v6, "onClientRegistered LE scan canceled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_0
    if-nez p1, :cond_6

    .line 1876
    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    const/4 v3, 0x0

    .line 1879
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :try_start_1
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    .line 1880
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_5

    .line 1881
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 1882
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mAdvertiseCallback:Landroid/bluetooth/BluetoothAdapter$AdvertiseCallback;

    if-eqz v5, :cond_2

    .line 1883
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v3, v5}, Landroid/bluetooth/IBluetoothGatt;->startAdvertising(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    :try_start_2
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v5, v8, :cond_1

    .line 1905
    if-eqz v3, :cond_1

    .line 1907
    :try_start_3
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v3, v5}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1918
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1919
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1920
    return-void

    .line 1885
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_2
    :try_start_5
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    if-nez v5, :cond_3

    .line 1886
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->startScan(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1899
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    .line 1900
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v5, "BluetoothAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to start le scan: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    goto :goto_0

    .line 1919
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 1888
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_3
    :try_start_7
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    array-length v5, v5

    new-array v4, v5, [Landroid/os/ParcelUuid;

    .line 1889
    .local v4, "uuids":[Landroid/os/ParcelUuid;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v4

    if-eq v2, v5, :cond_4

    .line 1890
    new-instance v5, Landroid/os/ParcelUuid;

    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v5, v4, v2

    .line 1889
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1892
    :cond_4
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6, v4}, Landroid/bluetooth/IBluetoothGatt;->startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V

    goto :goto_0

    .line 1896
    .end local v2    # "i":I
    .end local v4    # "uuids":[Landroid/os/ParcelUuid;
    :cond_5
    const-string v5, "BluetoothAdapter"

    const-string/jumbo v6, "onClientRegistered, BluetoothAdapter null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1908
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_1
    move-exception v1

    .line 1909
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_8
    const-string v5, "BluetoothAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to unregister callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1916
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :cond_6
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;
    .param p10, "value"    # [B

    .prologue
    .line 2004
    return-void
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "srvcType"    # I
    .param p4, "srvcInstId"    # I
    .param p5, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p6, "charInstId"    # I
    .param p7, "charUuid"    # Landroid/os/ParcelUuid;
    .param p8, "descInstId"    # I
    .param p9, "descrUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 2011
    return-void
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 2015
    return-void
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "charProps"    # I

    .prologue
    .line 1967
    return-void
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "descInstId"    # I
    .param p8, "descUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1974
    return-void
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "inclSrvcType"    # I
    .param p6, "inclSrvcInstId"    # I
    .param p7, "inclSrvcUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1960
    return-void
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 1953
    return-void
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "srvcType"    # I
    .param p3, "srvcInstId"    # I
    .param p4, "srvcUuid"    # Landroid/os/ParcelUuid;
    .param p5, "charInstId"    # I
    .param p6, "charUuid"    # Landroid/os/ParcelUuid;
    .param p7, "value"    # [B

    .prologue
    .line 1997
    return-void
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 2019
    return-void
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "advData"    # [B

    .prologue
    .line 1935
    monitor-enter p0

    .line 1936
    :try_start_0
    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v2, :cond_0

    monitor-exit p0

    .line 1948
    :goto_0
    return-void

    .line 1937
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1939
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    .line 1940
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_1

    .line 1941
    const-string v2, "BluetoothAdapter"

    const-string/jumbo v3, "onScanResult, BluetoothAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1945
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    .line 1946
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1937
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1944
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public onSearchComplete(Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1978
    return-void
.end method

.method public scanStarted()Z
    .locals 1

    .prologue
    .line 1793
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->waitForRegisteration(I)Z

    move-result v0

    return v0
.end method

.method public stopAdvertising()V
    .locals 6

    .prologue
    .line 1821
    monitor-enter p0

    .line 1822
    :try_start_0
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v3, :cond_0

    .line 1823
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error state, mLeHandle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    monitor-exit p0

    .line 1839
    :goto_0
    return-void

    .line 1826
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 1829
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 1830
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertising()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1837
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1838
    monitor-exit p0

    goto :goto_0

    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1831
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    .line 1832
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stop advertising"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1835
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "stopAdvertising, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public stopLeScan()V
    .locals 6

    .prologue
    .line 1842
    monitor-enter p0

    .line 1843
    :try_start_0
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v3, :cond_0

    .line 1844
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error state, mLeHandle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    monitor-exit p0

    .line 1862
    :goto_0
    return-void

    .line 1847
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1848
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 1850
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 1851
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->stopScan(IZ)V

    .line 1852
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1859
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    :goto_1
    const/4 v3, -0x1

    :try_start_2
    iput v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 1860
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1861
    monitor-exit p0

    goto :goto_0

    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1853
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    .line 1854
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stop scan and unregister"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1857
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "stopLeScan, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
