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
    .parameter "bluetoothAdapter"
    .parameter "leScanCb"
    .parameter "uuid"

    .prologue
    .line 1544
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;-><init>()V

    .line 1545
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    .line 1546
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeScanCb:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 1547
    iput-object p3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    .line 1548
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 1549
    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "value"

    .prologue
    .line 1710
    return-void
.end method

.method public onCharacteristicWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V
    .locals 0
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"

    .prologue
    .line 1716
    return-void
.end method

.method public onClientConnectionState(IIZLjava/lang/String;)V
    .locals 0
    .parameter "status"
    .parameter "clientIf"
    .parameter "connected"
    .parameter "address"

    .prologue
    .line 1651
    return-void
.end method

.method public onClientRegistered(II)V
    .locals 9
    .parameter "status"
    .parameter "clientIf"

    .prologue
    const/4 v8, -0x1

    .line 1598
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

    .line 1600
    monitor-enter p0

    .line 1601
    :try_start_0
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-ne v5, v8, :cond_0

    .line 1602
    const-string v5, "BluetoothAdapter"

    const-string/jumbo v6, "onClientRegistered LE scan canceled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_0
    if-nez p1, :cond_5

    .line 1606
    iput p2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    const/4 v3, 0x0

    .line 1609
    .local v3, iGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_start_1
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    .line 1610
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4

    .line 1611
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 1612
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    if-nez v5, :cond_2

    .line 1613
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->startScan(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1629
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    :try_start_2
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v5, v8, :cond_1

    .line 1631
    if-eqz v3, :cond_1

    .line 1633
    :try_start_3
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v3, v5}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1644
    .end local v3           #iGatt:Landroid/bluetooth/IBluetoothGatt;
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1645
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1646
    return-void

    .line 1615
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v3       #iGatt:Landroid/bluetooth/IBluetoothGatt;
    :cond_2
    :try_start_5
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    array-length v5, v5

    new-array v4, v5, [Landroid/os/ParcelUuid;

    .line 1616
    .local v4, uuids:[Landroid/os/ParcelUuid;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v5, v4

    if-eq v2, v5, :cond_3

    .line 1617
    new-instance v5, Landroid/os/ParcelUuid;

    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mScanFilter:[Ljava/util/UUID;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    aput-object v5, v4, v2

    .line 1616
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1619
    :cond_3
    iget v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6, v4}, Landroid/bluetooth/IBluetoothGatt;->startScanWithUuids(IZ[Landroid/os/ParcelUuid;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1625
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v2           #i:I
    .end local v4           #uuids:[Landroid/os/ParcelUuid;
    :catch_0
    move-exception v1

    .line 1626
    .local v1, e:Landroid/os/RemoteException;
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

    .line 1627
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    goto :goto_0

    .line 1645
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #iGatt:Landroid/bluetooth/IBluetoothGatt;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 1622
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v3       #iGatt:Landroid/bluetooth/IBluetoothGatt;
    :cond_4
    :try_start_7
    const-string v5, "BluetoothAdapter"

    const-string/jumbo v6, "onClientRegistered, BluetoothAdapter null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 1634
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :catch_1
    move-exception v1

    .line 1635
    .restart local v1       #e:Landroid/os/RemoteException;
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

    .line 1642
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #iGatt:Landroid/bluetooth/IBluetoothGatt;
    :cond_5
    const/4 v5, -0x1

    iput v5, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public onDescriptorRead(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V
    .locals 0
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "descrUuid"
    .parameter "value"

    .prologue
    .line 1730
    return-void
.end method

.method public onDescriptorWrite(Ljava/lang/String;IIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 0
    .parameter "address"
    .parameter "status"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "descrUuid"

    .prologue
    .line 1737
    return-void
.end method

.method public onExecuteWrite(Ljava/lang/String;I)V
    .locals 0
    .parameter "address"
    .parameter "status"

    .prologue
    .line 1741
    return-void
.end method

.method public onGetCharacteristic(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;I)V
    .locals 0
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "charProps"

    .prologue
    .line 1693
    return-void
.end method

.method public onGetDescriptor(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V
    .locals 0
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "descUuid"

    .prologue
    .line 1700
    return-void
.end method

.method public onGetIncludedService(Ljava/lang/String;IILandroid/os/ParcelUuid;IILandroid/os/ParcelUuid;)V
    .locals 0
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "inclSrvcType"
    .parameter "inclSrvcInstId"
    .parameter "inclSrvcUuid"

    .prologue
    .line 1686
    return-void
.end method

.method public onGetService(Ljava/lang/String;IILandroid/os/ParcelUuid;)V
    .locals 0
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"

    .prologue
    .line 1679
    return-void
.end method

.method public onNotify(Ljava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V
    .locals 0
    .parameter "address"
    .parameter "srvcType"
    .parameter "srvcInstId"
    .parameter "srvcUuid"
    .parameter "charInstId"
    .parameter "charUuid"
    .parameter "value"

    .prologue
    .line 1723
    return-void
.end method

.method public onReadRemoteRssi(Ljava/lang/String;II)V
    .locals 0
    .parameter "address"
    .parameter "rssi"
    .parameter "status"

    .prologue
    .line 1745
    return-void
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 5
    .parameter "address"
    .parameter "rssi"
    .parameter "advData"

    .prologue
    .line 1658
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onScanResult() - Device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RSSI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    monitor-enter p0

    .line 1662
    :try_start_0
    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v2, :cond_0

    monitor-exit p0

    .line 1674
    :goto_0
    return-void

    .line 1663
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    .line 1666
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_1

    .line 1667
    const-string v2, "BluetoothAdapter"

    const-string/jumbo v3, "onScanResult, BluetoothAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1671
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    .line 1672
    .local v1, ex:Ljava/lang/Exception;
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

    .line 1663
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1670
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
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
    .parameter "address"
    .parameter "status"

    .prologue
    .line 1704
    return-void
.end method

.method public scanStarted()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1552
    const/4 v2, 0x0

    .line 1553
    .local v2, started:Z
    monitor-enter p0

    .line 1554
    :try_start_0
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    monitor-exit p0

    .line 1568
    :goto_0
    return v3

    .line 1556
    :cond_0
    const/4 v0, 0x0

    .line 1558
    .local v0, count:I
    :goto_1
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    .line 1560
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1564
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1561
    :catch_0
    move-exception v1

    .line 1562
    .local v1, e:Ljava/lang/InterruptedException;
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

    .line 1567
    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1566
    .restart local v0       #count:I
    :cond_1
    :try_start_3
    iget v4, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-lez v4, :cond_2

    const/4 v2, 0x1

    .line 1567
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v2

    .line 1568
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1566
    goto :goto_3
.end method

.method public stopLeScan()V
    .locals 6

    .prologue
    .line 1572
    monitor-enter p0

    .line 1573
    :try_start_0
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    if-gtz v3, :cond_0

    .line 1574
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

    .line 1575
    monitor-exit p0

    .line 1592
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mBluetoothAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1578
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 1580
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 1581
    .local v2, iGatt:Landroid/bluetooth/IBluetoothGatt;
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->stopScan(IZ)V

    .line 1582
    iget v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1589
    .end local v2           #iGatt:Landroid/bluetooth/IBluetoothGatt;
    :goto_1
    const/4 v3, -0x1

    :try_start_2
    iput v3, p0, Landroid/bluetooth/BluetoothAdapter$GattCallbackWrapper;->mLeHandle:I

    .line 1590
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1591
    monitor-exit p0

    goto :goto_0

    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1583
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v1

    .line 1584
    .local v1, e:Landroid/os/RemoteException;
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

    .line 1587
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "stopLeScan, BluetoothAdapter is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
