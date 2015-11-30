.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x1d

.field static final TRANSACTION_acquireWifiLock:I = 0x18

.field static final TRANSACTION_addHsCredential:I = 0x48

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_addToBlacklist:I = 0x25

.field static final TRANSACTION_blockClient:I = 0x3b

.field static final TRANSACTION_captivePortalCheckComplete:I = 0x2a

.field static final TRANSACTION_clearBlacklist:I = 0x26

.field static final TRANSACTION_copyConfigFile:I = 0x4

.field static final TRANSACTION_delHsCredential:I = 0x4b

.field static final TRANSACTION_delHsNetwork:I = 0x4f

.field static final TRANSACTION_disableAllNetworkAtOnce:I = 0x5f

.field static final TRANSACTION_disableNetwork:I = 0x7

.field static final TRANSACTION_disconnect:I = 0xb

.field static final TRANSACTION_doCtiaTestOff:I = 0x34

.field static final TRANSACTION_doCtiaTestOn:I = 0x33

.field static final TRANSACTION_doCtiaTestRate:I = 0x35

.field static final TRANSACTION_enableAllNetworkAtOnce:I = 0x5e

.field static final TRANSACTION_enableHS:I = 0x50

.field static final TRANSACTION_enableNetwork:I = 0x6

.field static final TRANSACTION_enableTdls:I = 0x2b

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x2c

.field static final TRANSACTION_getAccessPointPreferredChannels:I = 0x32

.field static final TRANSACTION_getBatchedScanResults:I = 0x2f

.field static final TRANSACTION_getClientIp:I = 0x3a

.field static final TRANSACTION_getConfigFile:I = 0x29

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xe

.field static final TRANSACTION_getDhcpInfo:I = 0x16

.field static final TRANSACTION_getFrequencyBand:I = 0x13

.field static final TRANSACTION_getHotspotClients:I = 0x39

.field static final TRANSACTION_getHsBssload:I = 0x5c

.field static final TRANSACTION_getHsCredential:I = 0x4a

.field static final TRANSACTION_getHsMatchFqdn:I = 0x54

.field static final TRANSACTION_getHsMatchHomeOi:I = 0x53

.field static final TRANSACTION_getHsMatchNai:I = 0x56

.field static final TRANSACTION_getHsMatchPlmn:I = 0x55

.field static final TRANSACTION_getHsMinBackhaul:I = 0x5a

.field static final TRANSACTION_getHsNetwork:I = 0x4d

.field static final TRANSACTION_getHsProtoPort:I = 0x5b

.field static final TRANSACTION_getHsServiceProviderList:I = 0x58

.field static final TRANSACTION_getHsStatus:I = 0x4c

.field static final TRANSACTION_getPPPOEInfo:I = 0x47

.field static final TRANSACTION_getPoorLinkThreshold:I = 0x42

.field static final TRANSACTION_getScanResults:I = 0xa

.field static final TRANSACTION_getWifiApConfiguration:I = 0x21

.field static final TRANSACTION_getWifiApEnabledState:I = 0x20

.field static final TRANSACTION_getWifiEnabledState:I = 0x10

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x27

.field static final TRANSACTION_getWifiStateMachineMessenger:I = 0x28

.field static final TRANSACTION_getWifiStatus:I = 0x45

.field static final TRANSACTION_hasConnectableAp:I = 0x40

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x1b

.field static final TRANSACTION_isBatchedScanSupported:I = 0x30

.field static final TRANSACTION_isDualBandSupported:I = 0x14

.field static final TRANSACTION_isMulticastEnabled:I = 0x1c

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x17

.field static final TRANSACTION_pingSupplicant:I = 0x8

.field static final TRANSACTION_pollBatchedScan:I = 0x31

.field static final TRANSACTION_reassociate:I = 0xd

.field static final TRANSACTION_reconnect:I = 0xc

.field static final TRANSACTION_releaseMulticastLock:I = 0x1e

.field static final TRANSACTION_releaseWifiLock:I = 0x1a

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_requestBatchedScan:I = 0x2d

.field static final TRANSACTION_restoreConfigFile:I = 0x5

.field static final TRANSACTION_saveConfiguration:I = 0x15

.field static final TRANSACTION_setApProbeRequestEnabled:I = 0x3d

.field static final TRANSACTION_setCountryCode:I = 0x11

.field static final TRANSACTION_setFrequencyBand:I = 0x12

.field static final TRANSACTION_setHsBssidPool:I = 0x57

.field static final TRANSACTION_setHsCredential:I = 0x49

.field static final TRANSACTION_setHsLanguageFilter:I = 0x59

.field static final TRANSACTION_setHsNetwork:I = 0x4e

.field static final TRANSACTION_setHsOsuCompleted:I = 0x52

.field static final TRANSACTION_setHsUpdateIdentifier:I = 0x51

.field static final TRANSACTION_setNetworkPriority:I = 0x60

.field static final TRANSACTION_setPolicyUpdateResult:I = 0x5d

.field static final TRANSACTION_setPoorLinkProfilingOn:I = 0x44

.field static final TRANSACTION_setPoorLinkThreshold:I = 0x43

.field static final TRANSACTION_setPowerSavingMode:I = 0x46

.field static final TRANSACTION_setTxPower:I = 0x37

.field static final TRANSACTION_setTxPowerEnabled:I = 0x36

.field static final TRANSACTION_setWifiApConfiguration:I = 0x22

.field static final TRANSACTION_setWifiApEnabled:I = 0x1f

.field static final TRANSACTION_setWifiEnabled:I = 0xf

.field static final TRANSACTION_setWifiEnabledForIPO:I = 0x3e

.field static final TRANSACTION_setWoWlanMagicMode:I = 0x62

.field static final TRANSACTION_setWoWlanNormalMode:I = 0x61

.field static final TRANSACTION_startApWps:I = 0x38

.field static final TRANSACTION_startScan:I = 0x9

.field static final TRANSACTION_startWifi:I = 0x23

.field static final TRANSACTION_stopBatchedScan:I = 0x2e

.field static final TRANSACTION_stopWifi:I = 0x24

.field static final TRANSACTION_suspendNotification:I = 0x3f

.field static final TRANSACTION_syncGetConnectingNetworkId:I = 0x41

.field static final TRANSACTION_unblockClient:I = 0x3c

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 1084
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 48
    :sswitch_0
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v3, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v24

    .line 55
    .local v24, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 57
    const/4 v3, 0x1

    goto :goto_0

    .line 61
    .end local v24    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_2
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    sget-object v3, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 69
    .local v4, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v19

    .line 70
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v3, 0x1

    goto :goto_0

    .line 67
    .end local v4    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v19    # "_result":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1

    .line 76
    .end local v4    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_3
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v19

    .line 80
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v19, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v3, 0x1

    goto :goto_0

    .line 81
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 86
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_4
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->copyConfigFile()Z

    move-result v19

    .line 88
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v19, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 89
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 94
    .end local v19    # "_result":Z
    :sswitch_5
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->restoreConfigFile()Z

    move-result v19

    .line 96
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v19, :cond_3

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 97
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 102
    .end local v19    # "_result":Z
    :sswitch_6
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    .line 107
    .local v5, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v19

    .line 108
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v19, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 106
    .end local v5    # "_arg1":Z
    .end local v19    # "_result":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 109
    .restart local v5    # "_arg1":Z
    .restart local v19    # "_result":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 114
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Z
    .end local v19    # "_result":Z
    :sswitch_7
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 117
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v19

    .line 118
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v19, :cond_6

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 119
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 124
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_8
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v19

    .line 126
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v19, :cond_7

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 127
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 132
    .end local v19    # "_result":Z
    :sswitch_9
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 135
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource;

    .line 140
    .local v4, "_arg0":Landroid/os/WorkSource;
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/os/WorkSource;)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 138
    .end local v4    # "_arg0":Landroid/os/WorkSource;
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/os/WorkSource;
    goto :goto_9

    .line 146
    .end local v4    # "_arg0":Landroid/os/WorkSource;
    :sswitch_a
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 150
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 152
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 156
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_b
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 163
    :sswitch_c
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 170
    :sswitch_d
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 177
    :sswitch_e
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    .line 179
    .local v19, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v19, :cond_9

    .line 181
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 187
    :goto_a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 185
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 191
    .end local v19    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_f
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    .line 194
    .local v4, "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v19

    .line 195
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v19, :cond_b

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 193
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 196
    .restart local v4    # "_arg0":Z
    .restart local v19    # "_result":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    .line 201
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :sswitch_10
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v19

    .line 203
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 209
    .end local v19    # "_result":I
    :sswitch_11
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v5, 0x1

    .line 214
    .restart local v5    # "_arg1":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 213
    .end local v5    # "_arg1":Z
    :cond_c
    const/4 v5, 0x0

    goto :goto_d

    .line 220
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v5, 0x1

    .line 225
    .restart local v5    # "_arg1":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 224
    .end local v5    # "_arg1":Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_e

    .line 231
    .end local v4    # "_arg0":I
    :sswitch_13
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v19

    .line 233
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 239
    .end local v19    # "_result":I
    :sswitch_14
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v19

    .line 241
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v19, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 242
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 247
    .end local v19    # "_result":Z
    :sswitch_15
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v19

    .line 249
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v19, :cond_f

    const/4 v3, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 250
    :cond_f
    const/4 v3, 0x0

    goto :goto_10

    .line 255
    .end local v19    # "_result":Z
    :sswitch_16
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v19

    .line 257
    .local v19, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v19, :cond_10

    .line 259
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 265
    :goto_11
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 263
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 269
    .end local v19    # "_result":Landroid/net/DhcpInfo;
    :sswitch_17
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v19

    .line 271
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v19, :cond_11

    const/4 v3, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 272
    :cond_11
    const/4 v3, 0x0

    goto :goto_12

    .line 277
    .end local v19    # "_result":Z
    :sswitch_18
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 281
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 283
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    .line 286
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource;

    .line 291
    .local v7, "_arg3":Landroid/os/WorkSource;
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v19

    .line 292
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v19, :cond_13

    const/4 v3, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 289
    .end local v7    # "_arg3":Landroid/os/WorkSource;
    .end local v19    # "_result":Z
    :cond_12
    const/4 v7, 0x0

    .restart local v7    # "_arg3":Landroid/os/WorkSource;
    goto :goto_13

    .line 293
    .restart local v19    # "_result":Z
    :cond_13
    const/4 v3, 0x0

    goto :goto_14

    .line 298
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Landroid/os/WorkSource;
    .end local v19    # "_result":Z
    :sswitch_19
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 302
    .restart local v4    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 303
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 308
    .local v5, "_arg1":Landroid/os/WorkSource;
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 306
    .end local v5    # "_arg1":Landroid/os/WorkSource;
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg1":Landroid/os/WorkSource;
    goto :goto_15

    .line 314
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Landroid/os/WorkSource;
    :sswitch_1a
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 317
    .restart local v4    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v19

    .line 318
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v19, :cond_15

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 319
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 324
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_result":Z
    :sswitch_1b
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 331
    :sswitch_1c
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v19

    .line 333
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v19, :cond_16

    const/4 v3, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 334
    :cond_16
    const/4 v3, 0x0

    goto :goto_17

    .line 339
    .end local v19    # "_result":Z
    :sswitch_1d
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 343
    .restart local v4    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 350
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 357
    :sswitch_1f
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    .line 360
    sget-object v3, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 366
    .local v4, "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_18

    const/4 v5, 0x1

    .line 367
    .local v5, "_arg1":Z
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 363
    .end local v4    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "_arg1":Z
    :cond_17
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_18

    .line 366
    :cond_18
    const/4 v5, 0x0

    goto :goto_19

    .line 373
    .end local v4    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_20
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v19

    .line 375
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 381
    .end local v19    # "_result":I
    :sswitch_21
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v19

    .line 383
    .local v19, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v19, :cond_19

    .line 385
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 391
    :goto_1a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 389
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 395
    .end local v19    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_22
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 398
    sget-object v3, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 403
    .restart local v4    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 401
    .end local v4    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1b

    .line 409
    .end local v4    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_23
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 416
    :sswitch_24
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 423
    :sswitch_25
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 426
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 432
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 439
    :sswitch_27
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v19

    .line 441
    .local v19, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v19, :cond_1b

    .line 443
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 449
    :goto_1c
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 447
    :cond_1b
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 453
    .end local v19    # "_result":Landroid/os/Messenger;
    :sswitch_28
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v19

    .line 455
    .restart local v19    # "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v19, :cond_1c

    .line 457
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    :goto_1d
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 461
    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 467
    .end local v19    # "_result":Landroid/os/Messenger;
    :sswitch_29
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v19

    .line 469
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 475
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_2a
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->captivePortalCheckComplete()V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 482
    :sswitch_2b
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 486
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v5, 0x1

    .line 487
    .restart local v5    # "_arg1":Z
    :goto_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 486
    .end local v5    # "_arg1":Z
    :cond_1d
    const/4 v5, 0x0

    goto :goto_1e

    .line 493
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_2c
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 497
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v5, 0x1

    .line 498
    .restart local v5    # "_arg1":Z
    :goto_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 497
    .end local v5    # "_arg1":Z
    :cond_1e
    const/4 v5, 0x0

    goto :goto_1f

    .line 504
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 507
    sget-object v3, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/BatchedScanSettings;

    .line 513
    .local v4, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 515
    .local v5, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_20

    .line 516
    sget-object v3, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource;

    .line 521
    .local v6, "_arg2":Landroid/os/WorkSource;
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v19

    .line 522
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    if-eqz v19, :cond_21

    const/4 v3, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 510
    .end local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Landroid/os/WorkSource;
    .end local v19    # "_result":Z
    :cond_1f
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_20

    .line 519
    .restart local v5    # "_arg1":Landroid/os/IBinder;
    :cond_20
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/os/WorkSource;
    goto :goto_21

    .line 523
    .restart local v19    # "_result":Z
    :cond_21
    const/4 v3, 0x0

    goto :goto_22

    .line 528
    .end local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    .end local v6    # "_arg2":Landroid/os/WorkSource;
    .end local v19    # "_result":Z
    :sswitch_2e
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    .line 531
    sget-object v3, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/BatchedScanSettings;

    .line 536
    .restart local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :goto_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 534
    .end local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :cond_22
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_23

    .line 542
    .end local v4    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_2f
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 545
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 546
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 548
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 552
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_30
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v19

    .line 554
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v19, :cond_23

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 555
    :cond_23
    const/4 v3, 0x0

    goto :goto_24

    .line 560
    .end local v19    # "_result":Z
    :sswitch_31
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 567
    :sswitch_32
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAccessPointPreferredChannels()[Ljava/lang/String;

    move-result-object v19

    .line 569
    .local v19, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 571
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 575
    .end local v19    # "_result":[Ljava/lang/String;
    :sswitch_33
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestOn()Z

    move-result v19

    .line 577
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v19, :cond_24

    const/4 v3, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 578
    :cond_24
    const/4 v3, 0x0

    goto :goto_25

    .line 583
    .end local v19    # "_result":Z
    :sswitch_34
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestOff()Z

    move-result v19

    .line 585
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    if-eqz v19, :cond_25

    const/4 v3, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 586
    :cond_25
    const/4 v3, 0x0

    goto :goto_26

    .line 591
    .end local v19    # "_result":Z
    :sswitch_35
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 594
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestRate(I)Z

    move-result v19

    .line 595
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    if-eqz v19, :cond_26

    const/4 v3, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 596
    :cond_26
    const/4 v3, 0x0

    goto :goto_27

    .line 601
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_36
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    const/4 v4, 0x1

    .line 604
    .local v4, "_arg0":Z
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setTxPowerEnabled(Z)Z

    move-result v19

    .line 605
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    if-eqz v19, :cond_28

    const/4 v3, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 603
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :cond_27
    const/4 v4, 0x0

    goto :goto_28

    .line 606
    .restart local v4    # "_arg0":Z
    .restart local v19    # "_result":Z
    :cond_28
    const/4 v3, 0x0

    goto :goto_29

    .line 611
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :sswitch_37
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 614
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setTxPower(I)Z

    move-result v19

    .line 615
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    if-eqz v19, :cond_29

    const/4 v3, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 616
    :cond_29
    const/4 v3, 0x0

    goto :goto_2a

    .line 621
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_38
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    .line 624
    sget-object v3, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WpsInfo;

    .line 629
    .local v4, "_arg0":Landroid/net/wifi/WpsInfo;
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->startApWps(Landroid/net/wifi/WpsInfo;)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 627
    .end local v4    # "_arg0":Landroid/net/wifi/WpsInfo;
    :cond_2a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/net/wifi/WpsInfo;
    goto :goto_2b

    .line 635
    .end local v4    # "_arg0":Landroid/net/wifi/WpsInfo;
    :sswitch_39
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotClients()Ljava/util/List;

    move-result-object v22

    .line 637
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 639
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 643
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    :sswitch_3a
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 646
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 647
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 649
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 653
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_3b
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    .line 656
    sget-object v3, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/HotspotClient;

    .line 661
    .local v4, "_arg0":Landroid/net/wifi/HotspotClient;
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->blockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v19

    .line 662
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    if-eqz v19, :cond_2c

    const/4 v3, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 659
    .end local v4    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v19    # "_result":Z
    :cond_2b
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/net/wifi/HotspotClient;
    goto :goto_2c

    .line 663
    .restart local v19    # "_result":Z
    :cond_2c
    const/4 v3, 0x0

    goto :goto_2d

    .line 668
    .end local v4    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v19    # "_result":Z
    :sswitch_3c
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 671
    sget-object v3, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/HotspotClient;

    .line 676
    .restart local v4    # "_arg0":Landroid/net/wifi/HotspotClient;
    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->unblockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v19

    .line 677
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    if-eqz v19, :cond_2e

    const/4 v3, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 674
    .end local v4    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v19    # "_result":Z
    :cond_2d
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/net/wifi/HotspotClient;
    goto :goto_2e

    .line 678
    .restart local v19    # "_result":Z
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2f

    .line 683
    .end local v4    # "_arg0":Landroid/net/wifi/HotspotClient;
    .end local v19    # "_result":Z
    :sswitch_3d
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v4, 0x1

    .line 686
    .local v4, "_arg0":Z
    :goto_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setApProbeRequestEnabled(Z)Z

    move-result v19

    .line 687
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    if-eqz v19, :cond_30

    const/4 v3, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 685
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :cond_2f
    const/4 v4, 0x0

    goto :goto_30

    .line 688
    .restart local v4    # "_arg0":Z
    .restart local v19    # "_result":Z
    :cond_30
    const/4 v3, 0x0

    goto :goto_31

    .line 693
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :sswitch_3e
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    const/4 v4, 0x1

    .line 696
    .restart local v4    # "_arg0":Z
    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledForIPO(Z)Z

    move-result v19

    .line 697
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    if-eqz v19, :cond_32

    const/4 v3, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 695
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :cond_31
    const/4 v4, 0x0

    goto :goto_32

    .line 698
    .restart local v4    # "_arg0":Z
    .restart local v19    # "_result":Z
    :cond_32
    const/4 v3, 0x0

    goto :goto_33

    .line 703
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :sswitch_3f
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 706
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->suspendNotification(I)V

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 712
    .end local v4    # "_arg0":I
    :sswitch_40
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->hasConnectableAp()Z

    move-result v19

    .line 714
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    if-eqz v19, :cond_33

    const/4 v3, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 715
    :cond_33
    const/4 v3, 0x0

    goto :goto_34

    .line 720
    .end local v19    # "_result":Z
    :sswitch_41
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->syncGetConnectingNetworkId()I

    move-result v19

    .line 722
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 728
    .end local v19    # "_result":I
    :sswitch_42
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_34

    const/4 v4, 0x1

    .line 731
    .local v4, "_arg0":Z
    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getPoorLinkThreshold(Z)D

    move-result-wide v19

    .line 732
    .local v19, "_result":D
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    move-object/from16 v0, p3

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 734
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 730
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":D
    :cond_34
    const/4 v4, 0x0

    goto :goto_35

    .line 738
    :sswitch_43
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_35

    const/4 v4, 0x1

    .line 742
    .restart local v4    # "_arg0":Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 743
    .local v17, "_arg1":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v4, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setPoorLinkThreshold(ZD)Z

    move-result v19

    .line 744
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v19, :cond_36

    const/4 v3, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 740
    .end local v4    # "_arg0":Z
    .end local v17    # "_arg1":D
    .end local v19    # "_result":Z
    :cond_35
    const/4 v4, 0x0

    goto :goto_36

    .line 745
    .restart local v4    # "_arg0":Z
    .restart local v17    # "_arg1":D
    .restart local v19    # "_result":Z
    :cond_36
    const/4 v3, 0x0

    goto :goto_37

    .line 750
    .end local v4    # "_arg0":Z
    .end local v17    # "_arg1":D
    .end local v19    # "_result":Z
    :sswitch_44
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_37

    const/4 v4, 0x1

    .line 753
    .restart local v4    # "_arg0":Z
    :goto_38
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setPoorLinkProfilingOn(Z)V

    .line 754
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 752
    .end local v4    # "_arg0":Z
    :cond_37
    const/4 v4, 0x0

    goto :goto_38

    .line 759
    :sswitch_45
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStatus()Ljava/lang/String;

    move-result-object v19

    .line 761
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 767
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_46
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_38

    const/4 v4, 0x1

    .line 770
    .restart local v4    # "_arg0":Z
    :goto_39
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setPowerSavingMode(Z)V

    .line 771
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 769
    .end local v4    # "_arg0":Z
    :cond_38
    const/4 v4, 0x0

    goto :goto_39

    .line 776
    :sswitch_47
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v19

    .line 778
    .local v19, "_result":Landroid/net/wifi/PPPOEInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    if-eqz v19, :cond_39

    .line 780
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/PPPOEInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 786
    :goto_3a
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 784
    :cond_39
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 790
    .end local v19    # "_result":Landroid/net/wifi/PPPOEInfo;
    :sswitch_48
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 794
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 796
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 798
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 800
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 802
    .local v8, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 804
    .local v9, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 806
    .local v10, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 808
    .local v11, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 810
    .local v12, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 812
    .local v13, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 814
    .local v14, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 816
    .local v15, "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg12":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 817
    invoke-virtual/range {v3 .. v16}, Landroid/net/wifi/IWifiManager$Stub;->addHsCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 818
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 824
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v9    # "_arg5":Ljava/lang/String;
    .end local v10    # "_arg6":Ljava/lang/String;
    .end local v11    # "_arg7":Ljava/lang/String;
    .end local v12    # "_arg8":Ljava/lang/String;
    .end local v13    # "_arg9":Ljava/lang/String;
    .end local v14    # "_arg10":Ljava/lang/String;
    .end local v15    # "_arg11":Ljava/lang/String;
    .end local v16    # "_arg12":Ljava/lang/String;
    .end local v19    # "_result":I
    :sswitch_49
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 828
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 830
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 831
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/wifi/IWifiManager$Stub;->setHsCredential(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 832
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    if-eqz v19, :cond_3a

    const/4 v3, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 833
    :cond_3a
    const/4 v3, 0x0

    goto :goto_3b

    .line 838
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_4a
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHsCredential()Ljava/lang/String;

    move-result-object v19

    .line 840
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 842
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 846
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_4b
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 849
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->delHsCredential(I)Z

    move-result v19

    .line 850
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    if-eqz v19, :cond_3b

    const/4 v3, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 851
    :cond_3b
    const/4 v3, 0x0

    goto :goto_3c

    .line 856
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_4c
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHsStatus()Ljava/lang/String;

    move-result-object v19

    .line 858
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 860
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 864
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_4d
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHsNetwork()Ljava/lang/String;

    move-result-object v19

    .line 866
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 868
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 872
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 876
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 878
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 879
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/wifi/IWifiManager$Stub;->setHsNetwork(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 880
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    if-eqz v19, :cond_3c

    const/4 v3, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 881
    :cond_3c
    const/4 v3, 0x0

    goto :goto_3d

    .line 886
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_4f
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 889
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->delHsNetwork(I)Z

    move-result v19

    .line 890
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    if-eqz v19, :cond_3d

    const/4 v3, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 891
    :cond_3d
    const/4 v3, 0x0

    goto :goto_3e

    .line 896
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_50
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v4, 0x1

    .line 899
    .local v4, "_arg0":Z
    :goto_3f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableHS(Z)Z

    move-result v19

    .line 900
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    if-eqz v19, :cond_3f

    const/4 v3, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 898
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :cond_3e
    const/4 v4, 0x0

    goto :goto_3f

    .line 901
    .restart local v4    # "_arg0":Z
    .restart local v19    # "_result":Z
    :cond_3f
    const/4 v3, 0x0

    goto :goto_40

    .line 906
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :sswitch_51
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 909
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setHsUpdateIdentifier(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 915
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_52
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_40

    const/4 v4, 0x1

    .line 918
    .local v4, "_arg0":Z
    :goto_41
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setHsOsuCompleted(Z)V

    .line 919
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 917
    .end local v4    # "_arg0":Z
    :cond_40
    const/4 v4, 0x0

    goto :goto_41

    .line 924
    :sswitch_53
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 927
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getHsMatchHomeOi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 928
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 930
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 934
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_54
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 937
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getHsMatchFqdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 938
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 940
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 944
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_55
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 947
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getHsMatchPlmn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 948
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 950
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 954
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_56
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 958
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 959
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->getHsMatchNai(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 960
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 962
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 966
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_57
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 970
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 972
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 974
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 976
    .restart local v7    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "_arg4":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 977
    invoke-virtual/range {v3 .. v8}, Landroid/net/wifi/IWifiManager$Stub;->setHsBssidPool(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 978
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    if-eqz v19, :cond_41

    const/4 v3, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 979
    :cond_41
    const/4 v3, 0x0

    goto :goto_42

    .line 984
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_58
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHsServiceProviderList()Ljava/lang/String;

    move-result-object v19

    .line 986
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 988
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 992
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 995
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setHsLanguageFilter(Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1001
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_5a
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1005
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1006
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->getHsMinBackhaul(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1007
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1009
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1013
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_5b
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1017
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1018
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->getHsProtoPort(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1019
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1021
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1025
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_5c
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1028
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getHsBssload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1029
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1031
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1035
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_5d
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1038
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setPolicyUpdateResult(Ljava/lang/String;)V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1044
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_5e
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->enableAllNetworkAtOnce()V

    .line 1046
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1051
    :sswitch_5f
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disableAllNetworkAtOnce()V

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1058
    :sswitch_60
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1062
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1063
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/IWifiManager$Stub;->setNetworkPriority(II)V

    .line 1064
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1069
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    :sswitch_61
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->setWoWlanNormalMode()Z

    move-result v19

    .line 1071
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    if-eqz v19, :cond_42

    const/4 v3, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1072
    :cond_42
    const/4 v3, 0x0

    goto :goto_43

    .line 1077
    .end local v19    # "_result":Z
    :sswitch_62
    const-string v3, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->setWoWlanMagicMode()Z

    move-result v19

    .line 1079
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    if-eqz v19, :cond_43

    const/4 v3, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1080
    :cond_43
    const/4 v3, 0x0

    goto :goto_44

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
