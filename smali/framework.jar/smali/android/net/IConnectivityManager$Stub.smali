.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_captivePortalCheckComplete:I = 0x31

.field static final TRANSACTION_captivePortalCheckCompleted:I = 0x32

.field static final TRANSACTION_checkMobileProvisioning:I = 0x35

.field static final TRANSACTION_deleteVpnProfile:I = 0x4c

.field static final TRANSACTION_dialUpCsd:I = 0x46

.field static final TRANSACTION_establishVpn:I = 0x2c

.field static final TRANSACTION_findConnectionTypeForIface:I = 0x34

.field static final TRANSACTION_getActiveLinkProperties:I = 0xa

.field static final TRANSACTION_getActiveLinkQualityInfo:I = 0x39

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x4

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x5

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0xd

.field static final TRANSACTION_getAllLinkQualityInfo:I = 0x3a

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0xc

.field static final TRANSACTION_getAllVpnKeys:I = 0x49

.field static final TRANSACTION_getGlobalProxy:I = 0x26

.field static final TRANSACTION_getLastTetherError:I = 0x1a

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x2f

.field static final TRANSACTION_getLinkProperties:I = 0xb

.field static final TRANSACTION_getLinkQualityInfo:I = 0x38

.field static final TRANSACTION_getMobileDataEnabled:I = 0x15

.field static final TRANSACTION_getMobileDataEnabledGemini:I = 0x40

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x36

.field static final TRANSACTION_getMobileRedirectedProvisioningUrl:I = 0x37

.field static final TRANSACTION_getNetworkInfo:I = 0x6

.field static final TRANSACTION_getNetworkPreference:I = 0x3

.field static final TRANSACTION_getProvisioningOrActiveNetworkInfo:I = 0x8

.field static final TRANSACTION_getProxy:I = 0x28

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x22

.field static final TRANSACTION_getTetherableIfaces:I = 0x1c

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x20

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x21

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x1d

.field static final TRANSACTION_getTetheredIfaces:I = 0x1e

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x1f

.field static final TRANSACTION_getTetheringIpv6Enable:I = 0x43

.field static final TRANSACTION_getVpnConfig:I = 0x2d

.field static final TRANSACTION_getVpnProfile:I = 0x4b

.field static final TRANSACTION_getVpnProfileDefaultKey:I = 0x4f

.field static final TRANSACTION_getVpnProfileVersion:I = 0x4d

.field static final TRANSACTION_hangUpCsd:I = 0x47

.field static final TRANSACTION_isActiveNetworkMetered:I = 0xe

.field static final TRANSACTION_isNetworkSupported:I = 0x9

.field static final TRANSACTION_isTetheringChangeDone:I = 0x3d

.field static final TRANSACTION_isTetheringSupported:I = 0x1b

.field static final TRANSACTION_markSocketAsUser:I = 0x1

.field static final TRANSACTION_prepareVpn:I = 0x2b

.field static final TRANSACTION_protectVpn:I = 0x2a

.field static final TRANSACTION_putVpnProfile:I = 0x4a

.field static final TRANSACTION_reportInetCondition:I = 0x25

.field static final TRANSACTION_requestNetworkTransitionWakelock:I = 0x24

.field static final TRANSACTION_requestRouteToHost:I = 0x13

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x14

.field static final TRANSACTION_setAirplaneMode:I = 0x3c

.field static final TRANSACTION_setDataDependency:I = 0x29

.field static final TRANSACTION_setGlobalProxy:I = 0x27

.field static final TRANSACTION_setMobileDataEnabled:I = 0x16

.field static final TRANSACTION_setMobileDataEnabledGemini:I = 0x41

.field static final TRANSACTION_setNetworkPreference:I = 0x2

.field static final TRANSACTION_setPolicyDataEnable:I = 0x17

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x3b

.field static final TRANSACTION_setRadio:I = 0x10

.field static final TRANSACTION_setRadios:I = 0xf

.field static final TRANSACTION_setTetheringIpv6Enable:I = 0x42

.field static final TRANSACTION_setUsbInternet:I = 0x44

.field static final TRANSACTION_setUsbInternetWithType:I = 0x45

.field static final TRANSACTION_setUsbTethering:I = 0x23

.field static final TRANSACTION_setVpnProfileDefaultKey:I = 0x50

.field static final TRANSACTION_setVpnProfileStore:I = 0x48

.field static final TRANSACTION_setVpnProfileVersion:I = 0x4e

.field static final TRANSACTION_startLegacyVpn:I = 0x2e

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x11

.field static final TRANSACTION_startUsingNetworkFeatureGemini:I = 0x3e

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x12

.field static final TRANSACTION_stopUsingNetworkFeatureGemini:I = 0x3f

.field static final TRANSACTION_supplyMessenger:I = 0x33

.field static final TRANSACTION_tether:I = 0x18

.field static final TRANSACTION_untether:I = 0x19

.field static final TRANSACTION_updateLockdownVpn:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/IConnectivityManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/net/IConnectivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 949
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 47
    :sswitch_0
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 61
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->markSocketAsUser(Landroid/os/ParcelFileDescriptor;I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 68
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v4

    .line 79
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v4    # "_result":I
    :sswitch_4
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 87
    .local v4, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v4, :cond_1

    .line 89
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 103
    .restart local v4    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 115
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 119
    .restart local v4    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v4, :cond_3

    .line 121
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 125
    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_7
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 133
    .local v4, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 139
    .end local v4    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_8
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 141
    .local v4, "_result":Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v4, :cond_4

    .line 143
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 147
    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v4    # "_result":Landroid/net/NetworkInfo;
    :sswitch_9
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v4

    .line 157
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 163
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 165
    .local v4, "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v4, :cond_6

    .line 167
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 171
    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v4    # "_result":Landroid/net/LinkProperties;
    :sswitch_b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 181
    .restart local v4    # "_result":Landroid/net/LinkProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v4, :cond_7

    .line 183
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 187
    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 193
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/LinkProperties;
    :sswitch_c
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v4

    .line 195
    .local v4, "_result":[Landroid/net/NetworkState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 201
    .end local v4    # "_result":[Landroid/net/NetworkState;
    :sswitch_d
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v4

    .line 203
    .local v4, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v4, :cond_8

    .line 205
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v4, p3, v6}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 209
    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v4    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_e
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v4

    .line 217
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v4, :cond_9

    move v5, v6

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_b

    move v0, v6

    .line 226
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v4

    .line 227
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v4, :cond_a

    move v5, v6

    :cond_a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_b
    move v0, v5

    .line 225
    goto :goto_2

    .line 233
    :sswitch_10
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    move v1, v6

    .line 238
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v4

    .line 239
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v4, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":Z
    :cond_d
    move v1, v5

    .line 237
    goto :goto_3

    .line 245
    .end local v0    # "_arg0":I
    :sswitch_11
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 252
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    .line 253
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 259
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :sswitch_12
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v4

    .line 265
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 271
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_13
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(IILjava/lang/String;)Z

    move-result v4

    .line 279
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v4, :cond_e

    move v5, v6

    :cond_e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 285
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_14
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 291
    .local v1, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[BLjava/lang/String;)Z

    move-result v4

    .line 293
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v4, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 299
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_15
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabled()Z

    move-result v4

    .line 301
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v4, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 307
    .end local v4    # "_result":Z
    :sswitch_16
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_11

    move v0, v6

    .line 310
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabled(Z)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_11
    move v0, v5

    .line 309
    goto :goto_4

    .line 316
    :sswitch_17
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    move v1, v6

    .line 321
    .local v1, "_arg1":Z
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_12
    move v1, v5

    .line 320
    goto :goto_5

    .line 327
    .end local v0    # "_arg0":I
    :sswitch_18
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v4

    .line 331
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 337
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_19
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v4

    .line 341
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 347
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1a
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v4

    .line 351
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v4

    .line 359
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v4, :cond_13

    move v5, v6

    :cond_13
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 365
    .end local v4    # "_result":Z
    :sswitch_1c
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v4

    .line 375
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 381
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 383
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_1f
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 391
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 399
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 407
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_22
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    .line 415
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_14

    move v0, v6

    .line 424
    .local v0, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v4

    .line 425
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":I
    :cond_14
    move v0, v5

    .line 423
    goto :goto_6

    .line 431
    :sswitch_24
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->requestNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 440
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_25
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 444
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 445
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 446
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 451
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_26
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 453
    .local v4, "_result":Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v4, :cond_15

    .line 455
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    invoke-virtual {v4, p3, v6}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 459
    :cond_15
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 465
    .end local v4    # "_result":Landroid/net/ProxyProperties;
    :sswitch_27
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    .line 468
    sget-object v5, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    .line 473
    .local v0, "_arg0":Landroid/net/ProxyProperties;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 471
    .end local v0    # "_arg0":Landroid/net/ProxyProperties;
    :cond_16
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/ProxyProperties;
    goto :goto_7

    .line 479
    .end local v0    # "_arg0":Landroid/net/ProxyProperties;
    :sswitch_28
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v4

    .line 481
    .restart local v4    # "_result":Landroid/net/ProxyProperties;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    if-eqz v4, :cond_17

    .line 483
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    invoke-virtual {v4, p3, v6}, Landroid/net/ProxyProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 487
    :cond_17
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 493
    .end local v4    # "_result":Landroid/net/ProxyProperties;
    :sswitch_29
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 497
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_18

    move v1, v6

    .line 498
    .local v1, "_arg1":Z
    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setDataDependency(IZ)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_18
    move v1, v5

    .line 497
    goto :goto_8

    .line 504
    .end local v0    # "_arg0":I
    :sswitch_2a
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a

    .line 507
    sget-object v7, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 512
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    :goto_9
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->protectVpn(Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 513
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v4, :cond_19

    move v5, v6

    :cond_19
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 510
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "_result":Z
    :cond_1a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_9

    .line 519
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_2b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 525
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    if-eqz v4, :cond_1b

    move v5, v6

    :cond_1b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 531
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_2c
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1c

    .line 534
    sget-object v7, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 539
    .local v0, "_arg0":Lcom/android/internal/net/VpnConfig;
    :goto_a
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 540
    .local v4, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    if-eqz v4, :cond_1d

    .line 542
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-virtual {v4, p3, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 537
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_a

    .line 546
    .restart local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 552
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v4    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_2d
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v4

    .line 554
    .local v4, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    if-eqz v4, :cond_1e

    .line 556
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    invoke-virtual {v4, p3, v6}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 560
    :cond_1e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 566
    .end local v4    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_2e
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    .line 569
    sget-object v5, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 574
    .local v0, "_arg0":Lcom/android/internal/net/VpnProfile;
    :goto_b
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 572
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_b

    .line 580
    .end local v0    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_2f
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v4

    .line 582
    .local v4, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    if-eqz v4, :cond_20

    .line 584
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    invoke-virtual {v4, p3, v6}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 588
    :cond_20
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 594
    .end local v4    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_30
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v4

    .line 596
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    if-eqz v4, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 602
    .end local v4    # "_result":Z
    :sswitch_31
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    .line 605
    sget-object v5, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 610
    .local v0, "_arg0":Landroid/net/NetworkInfo;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 608
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :cond_22
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_c

    .line 616
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_32
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_23

    .line 619
    sget-object v7, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 625
    .restart local v0    # "_arg0":Landroid/net/NetworkInfo;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_24

    move v1, v6

    .line 626
    .local v1, "_arg1":Z
    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 622
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    .end local v1    # "_arg1":Z
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/NetworkInfo;
    goto :goto_d

    :cond_24
    move v1, v5

    .line 625
    goto :goto_e

    .line 632
    .end local v0    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_33
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 636
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    .line 637
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 642
    .local v1, "_arg1":Landroid/os/Messenger;
    :goto_f
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->supplyMessenger(ILandroid/os/Messenger;)V

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 640
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Messenger;
    goto :goto_f

    .line 648
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Messenger;
    :sswitch_34
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v4

    .line 652
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 658
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_35
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 661
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v4

    .line 662
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 668
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_36
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v4

    .line 670
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 676
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;

    move-result-object v4

    .line 678
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 684
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_38
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 687
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;

    move-result-object v4

    .line 688
    .local v4, "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    if-eqz v4, :cond_26

    .line 690
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 694
    :cond_26
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 700
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_39
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v4

    .line 702
    .restart local v4    # "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v4, :cond_27

    .line 704
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    invoke-virtual {v4, p3, v6}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 708
    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 714
    .end local v4    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_3a
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;

    move-result-object v4

    .line 716
    .local v4, "_result":[Landroid/net/LinkQualityInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 722
    .end local v4    # "_result":[Landroid/net/LinkQualityInfo;
    :sswitch_3b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_28

    move v0, v6

    .line 726
    .local v0, "_arg0":Z
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 730
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :cond_28
    move v0, v5

    .line 724
    goto :goto_10

    .line 737
    :sswitch_3c
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_29

    move v0, v6

    .line 740
    .restart local v0    # "_arg0":Z
    :goto_11
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_29
    move v0, v5

    .line 739
    goto :goto_11

    .line 746
    :sswitch_3d
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringChangeDone()Z

    move-result v4

    .line 748
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    if-eqz v4, :cond_2a

    move v5, v6

    :cond_2a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 754
    .end local v4    # "_result":Z
    :sswitch_3e
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 758
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 762
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 763
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeatureGemini(ILjava/lang/String;Landroid/os/IBinder;I)I

    move-result v4

    .line 764
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 770
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :sswitch_3f
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 774
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 776
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 777
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeatureGemini(ILjava/lang/String;I)I

    move-result v4

    .line 778
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 784
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :sswitch_40
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 787
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getMobileDataEnabledGemini(I)Z

    move-result v4

    .line 788
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    if-eqz v4, :cond_2b

    move v5, v6

    :cond_2b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 794
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_41
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 797
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setMobileDataEnabledGemini(I)Z

    move-result v4

    .line 798
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    if-eqz v4, :cond_2c

    move v5, v6

    :cond_2c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 804
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_42
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2d

    move v0, v6

    .line 807
    .local v0, "_arg0":Z
    :goto_12
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setTetheringIpv6Enable(Z)V

    .line 808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_2d
    move v0, v5

    .line 806
    goto :goto_12

    .line 813
    :sswitch_43
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringIpv6Enable()Z

    move-result v4

    .line 815
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    if-eqz v4, :cond_2e

    move v5, v6

    :cond_2e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 821
    .end local v4    # "_result":Z
    :sswitch_44
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_30

    move v0, v6

    .line 824
    .restart local v0    # "_arg0":Z
    :goto_13
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setUsbInternet(Z)Z

    move-result v4

    .line 825
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    if-eqz v4, :cond_2f

    move v5, v6

    :cond_2f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_30
    move v0, v5

    .line 823
    goto :goto_13

    .line 831
    :sswitch_45
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_32

    move v0, v6

    .line 835
    .restart local v0    # "_arg0":Z
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 836
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbInternetWithType(ZI)Z

    move-result v4

    .line 837
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    if-eqz v4, :cond_31

    move v5, v6

    :cond_31
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :cond_32
    move v0, v5

    .line 833
    goto :goto_14

    .line 843
    :sswitch_46
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 847
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->dialUpCsd(ILjava/lang/String;)V

    .line 849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 854
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_47
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->hangUpCsd()V

    .line 856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 861
    :sswitch_48
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/net/IVpnProfileStore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IVpnProfileStore;

    move-result-object v0

    .line 864
    .local v0, "_arg0":Lcom/android/internal/net/IVpnProfileStore;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setVpnProfileStore(Lcom/android/internal/net/IVpnProfileStore;)V

    .line 865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 870
    .end local v0    # "_arg0":Lcom/android/internal/net/IVpnProfileStore;
    :sswitch_49
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnKeys()[Ljava/lang/String;

    move-result-object v4

    .line 872
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 878
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_4a
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 883
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->putVpnProfile(Ljava/lang/String;[B)V

    .line 884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 889
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    :sswitch_4b
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 893
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_33

    move v1, v6

    .line 894
    .local v1, "_arg1":Z
    :goto_15
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->getVpnProfile(Ljava/lang/String;Z)[B

    move-result-object v4

    .line 895
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v4    # "_result":[B
    :cond_33
    move v1, v5

    .line 893
    goto :goto_15

    .line 901
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_4c
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 904
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->deleteVpnProfile(Ljava/lang/String;)Z

    move-result v4

    .line 905
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    if-eqz v4, :cond_34

    move v5, v6

    :cond_34
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 911
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4d
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 914
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getVpnProfileVersion(Ljava/lang/String;)I

    move-result v4

    .line 915
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 921
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_4e
    const-string v7, "android.net.IConnectivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 925
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 926
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setVpnProfileVersion(Ljava/lang/String;I)Z

    move-result v4

    .line 927
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    if-eqz v4, :cond_35

    move v5, v6

    :cond_35
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 933
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_4f
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getVpnProfileDefaultKey()Ljava/lang/String;

    move-result-object v4

    .line 935
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 941
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string v5, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 944
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setVpnProfileDefaultKey(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 43
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
