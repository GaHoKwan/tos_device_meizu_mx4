.class final Landroid/bluetooth/BluetoothDevice$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 569
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v1

    .line 570
    const/4 v0, 0x0

    :try_start_0
    # setter for: Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->access$002(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 571
    monitor-exit v1

    .line 572
    return-void

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 2
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 562
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v1

    .line 563
    :try_start_0
    # setter for: Landroid/bluetooth/BluetoothDevice;->sService:Landroid/bluetooth/IBluetooth;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->access$002(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 564
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
