.class public Lcom/android/internal/telephony/cat/CatCmdMessage;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatCmdMessage$2;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/CatCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mApn:Ljava/lang/String;

.field public mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field public mBufferSize:I

.field private mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

.field public mChannelData:[B

.field public mChannelDataLength:I

.field public mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

.field public mChannelStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/bip/ChannelStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mCloseBackToTcpListen:Z

.field public mCloseCid:I

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field public mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field private mInput:Lcom/android/internal/telephony/cat/Input;

.field public mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

.field public mLogin:Ljava/lang/String;

.field private mMenu:Lcom/android/internal/telephony/cat/Menu;

.field public mPwd:Ljava/lang/String;

.field public mReceiveDataCid:I

.field public mRemainingDataLength:I

.field public mSendDataCid:I

.field public mSendMode:I

.field private mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

.field public mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 40
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 41
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 46
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 47
    iput v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 48
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 49
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 50
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 52
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    .line 56
    iput v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 57
    iput v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mRemainingDataLength:I

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    .line 60
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    .line 63
    iput v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendDataCid:I

    .line 64
    iput v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    .line 65
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseBackToTcpListen:Z

    .line 66
    iput v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendMode:I

    .line 67
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 173
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 174
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 175
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 176
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Input;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 177
    sget-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 179
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    goto :goto_0

    .line 187
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 194
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 3
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    .line 47
    iput v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 57
    iput v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mRemainingDataLength:I

    .line 58
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    .line 60
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/bip/ChannelStatus;

    .line 62
    iput v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    .line 63
    iput v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendDataCid:I

    .line 64
    iput v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    .line 65
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseBackToTcpListen:Z

    .line 66
    iput v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendMode:I

    .line 67
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 87
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 88
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 170
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_0
    check-cast p1, Lcom/android/internal/telephony/cat/SelectItemParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    goto :goto_0

    .line 103
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_1
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 107
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_2
    check-cast p1, Lcom/android/internal/telephony/cat/GetInputParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    goto :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_3
    move-object v1, p1

    .line 110
    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 111
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 112
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mUrl:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mMode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_4
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/android/internal/telephony/cat/PlayToneParams;

    .line 117
    .local v0, "params":Lcom/android/internal/telephony/cat/PlayToneParams;
    iget-object v1, v0, Lcom/android/internal/telephony/cat/PlayToneParams;->mSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 118
    iget-object v1, v0, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .line 121
    .end local v0    # "params":Lcom/android/internal/telephony/cat/PlayToneParams;
    :pswitch_5
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_6
    move-object v1, p1

    .line 128
    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    move-object v1, p1

    .line 129
    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBufferSize:I

    move-object v1, p1

    .line 130
    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    move-object v1, p1

    .line 131
    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/bip/TransportProtocol;

    move-object v1, p1

    .line 132
    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/bip/OtherAddress;

    move-object v1, p1

    .line 133
    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 135
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/bip/BearerDesc;->bearerType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    :cond_1
    move-object v1, p1

    .line 139
    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->accessPointName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mApn:Ljava/lang/String;

    move-object v1, p1

    .line 140
    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->userLogin:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLogin:Ljava/lang/String;

    .line 141
    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->userPwd:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mPwd:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    const-string v1, "[BIP]"

    const-string v2, "Invalid BearerDesc object"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    move-object v1, p1

    .line 148
    check-cast v1, Lcom/android/internal/telephony/cat/CloseChannelParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    move-object v1, p1

    .line 149
    check-cast v1, Lcom/android/internal/telephony/cat/CloseChannelParams;

    iget v1, v1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseCid:I

    .line 150
    check-cast p1, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCloseBackToTcpListen:Z

    goto/16 :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_8
    move-object v1, p1

    .line 153
    check-cast v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    move-object v1, p1

    .line 154
    check-cast v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    iget v1, v1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelDataLength:I

    .line 155
    check-cast p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mReceiveDataCid:I

    goto/16 :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_9
    move-object v1, p1

    .line 158
    check-cast v1, Lcom/android/internal/telephony/cat/SendDataParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    move-object v1, p1

    .line 159
    check-cast v1, Lcom/android/internal/telephony/cat/SendDataParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/SendDataParams;->channelData:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelData:[B

    move-object v1, p1

    .line 160
    check-cast v1, Lcom/android/internal/telephony/cat/SendDataParams;

    iget v1, v1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendDataCid:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendDataCid:I

    .line 161
    check-cast p1, Lcom/android/internal/telephony/cat/SendDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendMode:I

    iput v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSendMode:I

    goto/16 :goto_0

    .line 164
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_a
    check-cast p1, Lcom/android/internal/telephony/cat/GetChannelStatusParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/GetChannelStatusParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/cat/Input;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-object v0
.end method

.method public getBearerDesc()Lcom/android/internal/telephony/cat/bip/BearerDesc;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    return-object v0
.end method

.method public getCmdQualifier()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    return v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 208
    sget-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 223
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/bip/BearerDesc;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
