.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_adjustModemRadioPower:I = 0x6c

.field static final TRANSACTION_adjustModemRadioPowerByBand:I = 0x6e

.field static final TRANSACTION_adjustModemRadioPower_234G:I = 0x6d

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_answerRingingCallGemini:I = 0x3d

.field static final TRANSACTION_btSimapApduRequest:I = 0x61

.field static final TRANSACTION_btSimapConnectSIM:I = 0x5f

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0x60

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x64

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x63

.field static final TRANSACTION_btSimapResetSIM:I = 0x62

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_callGemini:I = 0x39

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_cancelMissedCallsNotificationGemini:I = 0x42

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_dialGemini:I = 0x38

.field static final TRANSACTION_dialUpCsd:I = 0x5d

.field static final TRANSACTION_disableApnType:I = 0x1a

.field static final TRANSACTION_disableApnTypeGemini:I = 0x5b

.field static final TRANSACTION_disableDataConnectivity:I = 0x1c

.field static final TRANSACTION_disableLocationUpdates:I = 0x18

.field static final TRANSACTION_disableLocationUpdatesGemini:I = 0x4c

.field static final TRANSACTION_enableApnType:I = 0x19

.field static final TRANSACTION_enableApnTypeGemini:I = 0x5a

.field static final TRANSACTION_enableDataConnectivity:I = 0x1b

.field static final TRANSACTION_enableLocationUpdates:I = 0x17

.field static final TRANSACTION_enableLocationUpdatesGemini:I = 0x4b

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_endCallGemini:I = 0x3c

.field static final TRANSACTION_getActivePhoneType:I = 0x23

.field static final TRANSACTION_getActivePhoneTypeGemini:I = 0x43

.field static final TRANSACTION_getAllCellInfo:I = 0x2e

.field static final TRANSACTION_getCallState:I = 0x20

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x24

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x25

.field static final TRANSACTION_getCdmaEriText:I = 0x26

.field static final TRANSACTION_getCellLocation:I = 0x1e

.field static final TRANSACTION_getDataActivity:I = 0x21

.field static final TRANSACTION_getDataNetworkType:I = 0x2a

.field static final TRANSACTION_getDataState:I = 0x22

.field static final TRANSACTION_getLine1AlphaTag:I = 0x57

.field static final TRANSACTION_getLocatedPlmn:I = 0x75

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x2d

.field static final TRANSACTION_getMissedCallCount:I = 0x6b

.field static final TRANSACTION_getMobileRevisionAndImei:I = 0x4e

.field static final TRANSACTION_getMvnoMatchType:I = 0x6f

.field static final TRANSACTION_getMvnoPattern:I = 0x70

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1f

.field static final TRANSACTION_getNetworkCountryIsoGemini:I = 0x74

.field static final TRANSACTION_getNetworkOperatorGemini:I = 0x72

.field static final TRANSACTION_getNetworkOperatorNameGemini:I = 0x71

.field static final TRANSACTION_getNetworkType:I = 0x29

.field static final TRANSACTION_getNetworkTypeGemini:I = 0x50

.field static final TRANSACTION_getPreciseCallState:I = 0x37

.field static final TRANSACTION_getServiceState:I = 0x66

.field static final TRANSACTION_getSimCountryIso:I = 0x54

.field static final TRANSACTION_getSimIndicatorState:I = 0x65

.field static final TRANSACTION_getSimOperator:I = 0x52

.field static final TRANSACTION_getSimOperatorName:I = 0x53

.field static final TRANSACTION_getSimSerialNumber:I = 0x56

.field static final TRANSACTION_getSimState:I = 0x51

.field static final TRANSACTION_getSmsDefaultSim:I = 0x67

.field static final TRANSACTION_getSubscriberInfo:I = 0x55

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x59

.field static final TRANSACTION_getVoiceMailNumber:I = 0x58

.field static final TRANSACTION_getVoiceMessageCount:I = 0x28

.field static final TRANSACTION_getVoiceMessageCountGemini:I = 0x5c

.field static final TRANSACTION_getVoiceNetworkType:I = 0x2b

.field static final TRANSACTION_handlePinMmi:I = 0x12

.field static final TRANSACTION_hasIccCard:I = 0x2c

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1d

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isIdleGemini:I = 0x41

.field static final TRANSACTION_isNetworkRoamingGemini:I = 0x73

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookGemini:I = 0x3f

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isRingingGemini:I = 0x40

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_isVTIdle:I = 0x5e

.field static final TRANSACTION_isVoiceIdle:I = 0x30

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x27

.field static final TRANSACTION_registerForSimModeChange:I = 0x68

.field static final TRANSACTION_setCellInfoListRate:I = 0x2f

.field static final TRANSACTION_setDefaultPhone:I = 0x4f

.field static final TRANSACTION_setGprsTransferType:I = 0x4d

.field static final TRANSACTION_setRadio:I = 0x14

.field static final TRANSACTION_setRadioOff:I = 0x36

.field static final TRANSACTION_setRadioPower:I = 0x15

.field static final TRANSACTION_setRoamingIndicatorNeddedProperty:I = 0x6a

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenGemini:I = 0x3a

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_showCallScreenWithDialpadGemini:I = 0x3b

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_silenceRingerGemini:I = 0x3e

.field static final TRANSACTION_simAkaAuth:I = 0x33

.field static final TRANSACTION_simAuth:I = 0x31

.field static final TRANSACTION_simAuthGemini:I = 0x48

.field static final TRANSACTION_simGbaAuthBootStrapMode:I = 0x34

.field static final TRANSACTION_simGbaAuthNAFMode:I = 0x35

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinGemini:I = 0x44

.field static final TRANSACTION_supplyPinReportResult:I = 0x10

.field static final TRANSACTION_supplyPinReportResultEx:I = 0x46

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukGemini:I = 0x45

.field static final TRANSACTION_supplyPukReportResult:I = 0x11

.field static final TRANSACTION_supplyPukReportResultEx:I = 0x47

.field static final TRANSACTION_toggleRadioOnOff:I = 0x13

.field static final TRANSACTION_uSimAuth:I = 0x32

.field static final TRANSACTION_uSimAuthGemini:I = 0x49

.field static final TRANSACTION_unregisterForSimModeChange:I = 0x69

.field static final TRANSACTION_updateServiceLocation:I = 0x16

.field static final TRANSACTION_updateServiceLocationGemini:I = 0x4a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 1244
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 55
    :sswitch_0
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v4

    .line 82
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v4, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    move v0, v8

    .line 91
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v4

    .line 92
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v4, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_2
    move v0, v7

    .line 90
    goto :goto_1

    .line 98
    :sswitch_5
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v4

    .line 100
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v4, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 113
    :sswitch_7
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    :sswitch_8
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v4

    .line 122
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v4, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v4    # "_result":Z
    :sswitch_9
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v4

    .line 130
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v4, :cond_5

    move v7, v8

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v4    # "_result":Z
    :sswitch_a
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v4

    .line 138
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v4, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v4    # "_result":Z
    :sswitch_b
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v4

    .line 146
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v4    # "_result":Z
    :sswitch_c
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v4

    .line 154
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v4, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v4    # "_result":Z
    :sswitch_d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 167
    :sswitch_e
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v4

    .line 171
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v4, :cond_9

    move v7, v8

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 177
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_f
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 183
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v4, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 189
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_10
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v4

    .line 193
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[I
    :sswitch_11
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    .line 205
    .restart local v4    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 211
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":[I
    :sswitch_12
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v4

    .line 215
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    if-eqz v4, :cond_b

    move v7, v8

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_13
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 228
    :sswitch_14
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v0, v8

    .line 231
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v4

    .line 232
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v4, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_d
    move v0, v7

    .line 230
    goto :goto_2

    .line 238
    :sswitch_15
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    move v0, v8

    .line 241
    .restart local v0    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v4

    .line 242
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v4, :cond_e

    move v7, v8

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v4    # "_result":Z
    :cond_f
    move v0, v7

    .line 240
    goto :goto_3

    .line 248
    :sswitch_16
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 255
    :sswitch_17
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 262
    :sswitch_18
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 269
    :sswitch_19
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v4

    .line 273
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 279
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v4

    .line 283
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 289
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_1b
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v4

    .line 291
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v4, :cond_10

    move v7, v8

    :cond_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 297
    .end local v4    # "_result":Z
    :sswitch_1c
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v4

    .line 299
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v4, :cond_11

    move v7, v8

    :cond_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 305
    .end local v4    # "_result":Z
    :sswitch_1d
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v4

    .line 307
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v4, :cond_12

    move v7, v8

    :cond_12
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 313
    .end local v4    # "_result":Z
    :sswitch_1e
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v4

    .line 315
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v4, :cond_13

    .line 317
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {v4, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 321
    :cond_13
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_1f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 331
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 337
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_20
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v4

    .line 339
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 345
    .end local v4    # "_result":I
    :sswitch_21
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v4

    .line 347
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 353
    .end local v4    # "_result":I
    :sswitch_22
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v4

    .line 355
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 361
    .end local v4    # "_result":I
    :sswitch_23
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v4

    .line 363
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 369
    .end local v4    # "_result":I
    :sswitch_24
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v4

    .line 371
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 377
    .end local v4    # "_result":I
    :sswitch_25
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v4

    .line 379
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v4    # "_result":I
    :sswitch_26
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_27
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v4

    .line 395
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v4, :cond_14

    move v7, v8

    :cond_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 401
    .end local v4    # "_result":Z
    :sswitch_28
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v4

    .line 403
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 409
    .end local v4    # "_result":I
    :sswitch_29
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v4

    .line 411
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 417
    .end local v4    # "_result":I
    :sswitch_2a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType()I

    move-result v4

    .line 419
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 425
    .end local v4    # "_result":I
    :sswitch_2b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkType()I

    move-result v4

    .line 427
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 433
    .end local v4    # "_result":I
    :sswitch_2c
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v4

    .line 435
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    if-eqz v4, :cond_15

    move v7, v8

    :cond_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 441
    .end local v4    # "_result":Z
    :sswitch_2d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v4

    .line 443
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v4    # "_result":I
    :sswitch_2e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v5

    .line 451
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 457
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_2f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 460
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 466
    .end local v0    # "_arg0":I
    :sswitch_30
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoiceIdle()Z

    move-result v4

    .line 468
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v4, :cond_16

    move v7, v8

    :cond_16
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 474
    .end local v4    # "_result":Z
    :sswitch_31
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 478
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_32
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 488
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 489
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 490
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 496
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_33
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 500
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 502
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 505
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->simAkaAuth(ILjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v4

    .line 506
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 512
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":[B
    :sswitch_34
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 516
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 520
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 521
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->simGbaAuthBootStrapMode(ILjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v4

    .line 522
    .restart local v4    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 528
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":[B
    :sswitch_35
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 532
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 534
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 536
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 537
    .restart local v3    # "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->simGbaAuthNAFMode(ILjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v4

    .line 538
    .restart local v4    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 544
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":[B
    :sswitch_36
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioOff()Z

    move-result v4

    .line 546
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    if-eqz v4, :cond_17

    move v7, v8

    :cond_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 552
    .end local v4    # "_result":Z
    :sswitch_37
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreciseCallState()I

    move-result v4

    .line 554
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 560
    .end local v4    # "_result":I
    :sswitch_38
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 565
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dialGemini(Ljava/lang/String;I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 571
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_39
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 575
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 576
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->callGemini(Ljava/lang/String;I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 582
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_3a
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 585
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenGemini(I)Z

    move-result v4

    .line 586
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    if-eqz v4, :cond_18

    move v7, v8

    :cond_18
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 592
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_3b
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1a

    move v0, v8

    .line 596
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 597
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpadGemini(ZI)Z

    move-result v4

    .line 598
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    if-eqz v4, :cond_19

    move v7, v8

    :cond_19
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :cond_1a
    move v0, v7

    .line 594
    goto :goto_4

    .line 604
    :sswitch_3c
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 607
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallGemini(I)Z

    move-result v4

    .line 608
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    if-eqz v4, :cond_1b

    move v7, v8

    :cond_1b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 614
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_3d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 617
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallGemini(I)V

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 623
    .end local v0    # "_arg0":I
    :sswitch_3e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 626
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRingerGemini(I)V

    .line 627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 632
    .end local v0    # "_arg0":I
    :sswitch_3f
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 635
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookGemini(I)Z

    move-result v4

    .line 636
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    if-eqz v4, :cond_1c

    move v7, v8

    :cond_1c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 642
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_40
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 645
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingGemini(I)Z

    move-result v4

    .line 646
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    if-eqz v4, :cond_1d

    move v7, v8

    :cond_1d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 652
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_41
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 655
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleGemini(I)Z

    move-result v4

    .line 656
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    if-eqz v4, :cond_1e

    move v7, v8

    :cond_1e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 662
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_42
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 665
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotificationGemini(I)V

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 671
    .end local v0    # "_arg0":I
    :sswitch_43
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 674
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeGemini(I)I

    move-result v4

    .line 675
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 681
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_44
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 686
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinGemini(Ljava/lang/String;I)Z

    move-result v4

    .line 687
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    if-eqz v4, :cond_1f

    move v7, v8

    :cond_1f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 693
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_45
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 697
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 700
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 701
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    if-eqz v4, :cond_20

    move v7, v8

    :cond_20
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 707
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_46
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 711
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 712
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultEx(Ljava/lang/String;I)[I

    move-result-object v4

    .line 713
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 719
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":[I
    :sswitch_47
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 723
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 726
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultEx(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v4

    .line 727
    .restart local v4    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 733
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":[I
    :sswitch_48
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 737
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 738
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->simAuthGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 739
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 745
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_49
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 749
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 752
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->uSimAuthGemini(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 753
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 759
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_4a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationGemini(I)V

    .line 763
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 768
    .end local v0    # "_arg0":I
    :sswitch_4b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 771
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesGemini(I)V

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 777
    .end local v0    # "_arg0":I
    :sswitch_4c
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 780
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesGemini(I)V

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 786
    .end local v0    # "_arg0":I
    :sswitch_4d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 789
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setGprsTransferType(I)V

    .line 790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 795
    .end local v0    # "_arg0":I
    :sswitch_4e
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 799
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_21

    .line 800
    sget-object v7, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 805
    .local v1, "_arg1":Landroid/os/Message;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileRevisionAndImei(ILandroid/os/Message;)V

    .line 806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 803
    .end local v1    # "_arg1":Landroid/os/Message;
    :cond_21
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Message;
    goto :goto_5

    .line 811
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Message;
    :sswitch_4f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 814
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultPhone(I)V

    .line 815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 820
    .end local v0    # "_arg0":I
    :sswitch_50
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 823
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeGemini(I)I

    move-result v4

    .line 824
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 830
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_51
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 833
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimState(I)I

    move-result v4

    .line 834
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 840
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_52
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 843
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimOperator(I)Ljava/lang/String;

    move-result-object v4

    .line 844
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 850
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 853
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v4

    .line 854
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 860
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_54
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 863
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v4

    .line 864
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 870
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_55
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 873
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubscriberInfo(I)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v4

    .line 874
    .local v4, "_result":Lcom/android/internal/telephony/IPhoneSubInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    if-eqz v4, :cond_22

    invoke-interface {v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_22
    const/4 v7, 0x0

    goto :goto_6

    .line 880
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Lcom/android/internal/telephony/IPhoneSubInfo;
    :sswitch_56
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 883
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 890
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_57
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 893
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v4

    .line 894
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 900
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_58
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 903
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 904
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 910
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 913
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v4

    .line 914
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 920
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_5a
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 925
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v4

    .line 926
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 932
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_5b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 936
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 937
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v4

    .line 938
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 944
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":I
    :sswitch_5c
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 947
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountGemini(I)I

    move-result v4

    .line 948
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 954
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_5d
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 958
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dialUpCsd(ILjava/lang/String;)I

    move-result v4

    .line 960
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 966
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_5e
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVTIdle()Z

    move-result v4

    .line 968
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    if-eqz v4, :cond_23

    move v7, v8

    :cond_23
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 974
    .end local v4    # "_result":Z
    :sswitch_5f
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 978
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 979
    .local v1, "_arg1":Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapConnectSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v4

    .line 980
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    if-eqz v1, :cond_24

    .line 983
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    invoke-virtual {v1, p3, v8}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 987
    :cond_24
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 993
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/BtSimapOperResponse;
    .end local v4    # "_result":I
    :sswitch_60
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapDisconnectSIM()I

    move-result v4

    .line 995
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1001
    .end local v4    # "_result":I
    :sswitch_61
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1005
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1007
    .local v1, "_arg1":Ljava/lang/String;
    new-instance v2, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v2}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1008
    .local v2, "_arg2":Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapApduRequest(ILjava/lang/String;Landroid/telephony/BtSimapOperResponse;)I

    move-result v4

    .line 1009
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    if-eqz v2, :cond_25

    .line 1012
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    invoke-virtual {v2, p3, v8}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1016
    :cond_25
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1022
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/telephony/BtSimapOperResponse;
    .end local v4    # "_result":I
    :sswitch_62
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1026
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1027
    .local v1, "_arg1":Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapResetSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v4

    .line 1028
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    if-eqz v1, :cond_26

    .line 1031
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    invoke-virtual {v1, p3, v8}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1035
    :cond_26
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1041
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/BtSimapOperResponse;
    .end local v4    # "_result":I
    :sswitch_63
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1045
    .restart local v0    # "_arg0":I
    new-instance v1, Landroid/telephony/BtSimapOperResponse;

    invoke-direct {v1}, Landroid/telephony/BtSimapOperResponse;-><init>()V

    .line 1046
    .restart local v1    # "_arg1":Landroid/telephony/BtSimapOperResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOnSIM(ILandroid/telephony/BtSimapOperResponse;)I

    move-result v4

    .line 1047
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    if-eqz v1, :cond_27

    .line 1050
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    invoke-virtual {v1, p3, v8}, Landroid/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1054
    :cond_27
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1060
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/BtSimapOperResponse;
    .end local v4    # "_result":I
    :sswitch_64
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->btSimapPowerOffSIM()I

    move-result v4

    .line 1062
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1068
    .end local v4    # "_result":I
    :sswitch_65
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimIndicatorState()I

    move-result v4

    .line 1070
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1076
    .end local v4    # "_result":I
    :sswitch_66
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()Landroid/os/Bundle;

    move-result-object v4

    .line 1078
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    if-eqz v4, :cond_28

    .line 1080
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1081
    invoke-virtual {v4, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1084
    :cond_28
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1090
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_67
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSmsDefaultSim()I

    move-result v4

    .line 1092
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1098
    .end local v4    # "_result":I
    :sswitch_68
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1102
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1103
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForSimModeChange(Landroid/os/IBinder;I)V

    .line 1104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1109
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :sswitch_69
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1112
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForSimModeChange(Landroid/os/IBinder;)V

    .line 1113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1118
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_6a
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_29

    move v0, v8

    .line 1121
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingIndicatorNeddedProperty(Z)V

    .line 1122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_29
    move v0, v7

    .line 1120
    goto :goto_7

    .line 1127
    :sswitch_6b
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMissedCallCount()I

    move-result v4

    .line 1129
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1135
    .end local v4    # "_result":I
    :sswitch_6c
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1139
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1140
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPower(II)Z

    move-result v4

    .line 1141
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    if-eqz v4, :cond_2a

    move v7, v8

    :cond_2a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1147
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :sswitch_6d
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1151
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1153
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1154
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPower_234G(III)Z

    move-result v4

    .line 1155
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    if-eqz v4, :cond_2b

    move v7, v8

    :cond_2b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1161
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_6e
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1165
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1167
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1168
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->adjustModemRadioPowerByBand(III)Z

    move-result v4

    .line 1169
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    if-eqz v4, :cond_2c

    move v7, v8

    :cond_2c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1175
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v4    # "_result":Z
    :sswitch_6f
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1178
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v4

    .line 1179
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1185
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_70
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1190
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1191
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1197
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_71
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1200
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v4

    .line 1201
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1207
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_72
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1210
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v4

    .line 1211
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1217
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_73
    const-string v9, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1220
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->isNetworkRoamingGemini(I)Z

    move-result v4

    .line 1221
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    if-eqz v4, :cond_2d

    move v7, v8

    :cond_2d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1227
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Z
    :sswitch_74
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1230
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkCountryIsoGemini(I)Ljava/lang/String;

    move-result-object v4

    .line 1231
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1237
    .end local v0    # "_arg0":I
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_75
    const-string v7, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocatedPlmn()Ljava/lang/String;

    move-result-object v4

    .line 1239
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
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
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
