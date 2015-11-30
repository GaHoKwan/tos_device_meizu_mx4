.class public Lcom/android/server/connectivity/Vpn;
.super Landroid/net/BaseNetworkStateTracker;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;,
        Lcom/android/server/connectivity/Vpn$Connection;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final MSG_RECONNECT:I = 0x65

.field private static final MSG_WAIT_FOR_RECONNECT_TIME_OUT:I = 0x66

.field private static final NOTIFICATION_TAG_3RD:Ljava/lang/String; = "3rd_vpn"

.field private static final RECONNECT_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "Vpn"

.field private static final WAIT_FOR_RECONNECT_TIME_OUT:I = 0x7530


# instance fields
.field private disableVpnStateChangeBroadcast:Z

.field private final mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

.field private mConfig:Lcom/android/internal/net/VpnConfig;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mConnection:Lcom/android/server/connectivity/Vpn$Connection;

.field private mCurrentConfig:Lcom/android/internal/net/VpnConfig;

.field private mCurrentMtpd:[Ljava/lang/String;

.field private mCurrentRacoon:[Ljava/lang/String;

.field private volatile mEnableNotif:Z

.field private volatile mEnableTeardown:Z

.field private mFailedDetail:I

.field private mInterface:Ljava/lang/String;

.field private mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

.field private mObserver:Landroid/net/INetworkManagementEventObserver;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, add for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mPackage:Ljava/lang/String;

.field private mReconnectHandler:Landroid/os/Handler;

.field private mStatusIntent:Landroid/app/PendingIntent;

.field private final mUserId:I

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mWifiGatewayAddress:Ljava/lang/String;

.field private mWifiGatewayPrifexLength:I

.field private oldVpnState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/ConnectivityService$VpnCallback;
    .param p3, "netService"    # Landroid/os/INetworkManagementService;
    .param p4, "connService"    # Landroid/net/IConnectivityManager;
    .param p5, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 178
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/BaseNetworkStateTracker;-><init>(I)V

    .line 111
    const-string v0, "[Legacy VPN]"

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 116
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 117
    iput-boolean v5, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 122
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 124
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    .line 154
    new-instance v0, Lcom/android/server/connectivity/Vpn$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$1;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    .line 171
    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    .line 172
    iput v1, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    .line 688
    new-instance v0, Lcom/android/server/connectivity/Vpn$3;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$3;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1597
    iput v2, p0, Lcom/android/server/connectivity/Vpn;->oldVpnState:I

    .line 1598
    iput-boolean v2, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    .line 179
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    .line 181
    iput-object p4, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    .line 182
    iput p5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p3, v0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    if-nez p5, :cond_0

    .line 191
    new-instance v0, Lcom/android/server/connectivity/Vpn$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Vpn$2;-><init>(Lcom/android/server/connectivity/Vpn;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 219
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 186
    :catch_0
    move-exception v6

    .line 187
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "Vpn"

    const-string v1, "Problem registering observer"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->do_reconnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/LegacyVpnInfo;)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/internal/net/LegacyVpnInfo;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$Connection;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Vpn;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Vpn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Vpn;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/Vpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/util/SparseBooleanArray;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->updateStateForFailedDetail(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Vpn;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;
    .param p1, "x1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addVpnUserLocked(I)V
    .locals 14
    .param p1, "user"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, add for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 580
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v10

    if-nez v10, :cond_0

    .line 581
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "VPN is not active"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 584
    :cond_0
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v4, 0x1

    .line 588
    .local v4, "forwardDns":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v10, v11, p1, v4}, Lcom/android/server/ConnectivityService$VpnCallback;->addUserForwarding(Ljava/lang/String;IZ)V

    .line 589
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 592
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const-string v11, "[Legacy VPN]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 594
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 595
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 597
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-interface {v10, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 601
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 603
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 604
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 605
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    if-lez v10, :cond_1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    if-lez v10, :cond_1

    .line 606
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 608
    .local v9, "width":I
    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 610
    .local v5, "height":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11, v9, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 611
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 612
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 613
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 614
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 618
    .end local v2    # "c":Landroid/graphics/Canvas;
    .end local v5    # "height":I
    .end local v9    # "width":I
    :cond_1
    const-string v10, "3rd_vpn"

    invoke-direct {p0, v7, v1, p1, v10}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;)V

    .line 626
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 584
    .end local v4    # "forwardDns":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 598
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "forwardDns":Z
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 599
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Invalid application"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 623
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v10, v11, p1, v12}, Lcom/android/server/connectivity/Vpn;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;)V

    goto :goto_1
.end method

.method private backupParasForReconnect(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;

    .prologue
    .line 139
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    .line 142
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 147
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, p1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    iput-object v1, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-boolean v1, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    iput-boolean v1, v0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 149
    return-void
.end method

.method private do_reconnect()V
    .locals 8
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1648
    const-string v4, "Vpn"

    const-string v5, "do_reconnect() ..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v2

    .line 1650
    .local v2, "network":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1651
    const-string v4, "Vpn"

    const-string v5, "no availible network interface"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :goto_0
    return-void

    .line 1654
    :cond_0
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reconnect using interface :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    aget-object v1, v2, v7

    .line 1656
    .local v1, "interfaze":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v0, v2, v4

    .line 1657
    .local v0, "gateway":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iput-object v1, v4, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1659
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1660
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    aput-object v1, v4, v7

    .line 1663
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1664
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    aput-object v1, v4, v7

    .line 1665
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v3, v4, v5

    .line 1666
    .local v3, "vpnType":Ljava/lang/String;
    const-string v4, "xauthpsk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "hybridrsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "xauthrsa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1667
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aput-object v0, v4, v5

    .line 1671
    .end local v3    # "vpnType":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mCurrentRacoon:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mCurrentMtpd:[Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceControlPermission()V
    .locals 7

    .prologue
    .line 819
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_0

    .line 829
    :goto_0
    return-void

    .line 822
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 823
    .local v1, "appId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 826
    .local v3, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 827
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.android.vpndialogs"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 828
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v5, :cond_1

    .line 834
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 831
    :catch_0
    move-exception v5

    .line 834
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 837
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Unauthorized Caller"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    .line 913
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 915
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 916
    return-object v1

    .line 920
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to find IPv4 default gateway"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getDefaultNetwork()[Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1679
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$VpnCallback;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 1680
    .local v0, "alp":Landroid/net/LinkProperties;
    if-nez v0, :cond_1

    .line 1692
    :cond_0
    :goto_0
    return-object v5

    .line 1681
    :cond_1
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 1682
    .local v3, "interfaze":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1683
    const/4 v1, 0x0

    .line 1684
    .local v1, "gateway":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 1685
    .local v4, "route":Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2

    .line 1686
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1690
    .end local v4    # "route":Landroid/net/RouteInfo;
    :cond_3
    if-eqz v1, :cond_0

    .line 1692
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    goto :goto_0
.end method

.method private hideNotification(I)V
    .locals 5
    .param p1, "user"    # I

    .prologue
    const/4 v2, 0x0

    .line 883
    iput-object v2, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 885
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 888
    .local v1, "nm":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 895
    const/4 v2, 0x0

    const v3, 0x108070f

    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 896
    const-string v2, "3rd_vpn"

    const v3, 0x108070f

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isRunningLocked()Z
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native jniCheck(Ljava/lang/String;)I
.end method

.method private native jniCreate(I)I
.end method

.method private native jniGetName(I)Ljava/lang/String;
.end method

.method private native jniProtect(ILjava/lang/String;)V
.end method

.method private native jniReset(Ljava/lang/String;)V
.end method

.method private native jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onUserAdded(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 643
    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 645
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 646
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 654
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to add restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 653
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 658
    monitor-enter p0

    .line 659
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 660
    .local v1, "mgr":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 661
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->removeVpnUserLocked(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 669
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Vpn"

    const-string v4, "Failed to remove restricted user to owner"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 668
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mgr":Landroid/os/UserManager;
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private removeVpnUserLocked(I)V
    .locals 3
    .param p1, "user"    # I

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 631
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "VPN is not active"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 636
    .local v0, "forwardDns":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    .line 637
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 638
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 639
    return-void

    .line 634
    .end local v0    # "forwardDns":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendVpnStateChangeBroadcast(I)V
    .locals 2
    .param p1, "vpnState"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1629
    iget-boolean v1, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Vpn;->oldVpnState:I

    if-eq p1, v1, :cond_0

    .line 1630
    iput p1, p0, Lcom/android/server/connectivity/Vpn;->oldVpnState:I

    .line 1633
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.VPN_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1634
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vpn_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1635
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1637
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 11
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I

    .prologue
    const v10, 0x10809a4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 855
    iget-boolean v4, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v4, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 858
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 861
    .local v0, "nm":Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 862
    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 864
    .local v3, "title":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v4, v4, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, "text":Ljava/lang/String;
    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 876
    .local v1, "notification":Landroid/app/Notification;
    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v4, v10, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 862
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404b8

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 864
    .restart local v3    # "title":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v5, 0x10404ba

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .locals 14
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "user"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, for vpn status bar notify"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1701
    iget-boolean v6, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    if-nez v6, :cond_1

    .line 1726
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/net/VpnConfig;->getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    .line 1704
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1707
    .local v2, "nm":Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 1708
    if-nez p1, :cond_2

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v7, 0x10404b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1710
    .local v5, "title":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v7, 0x10404b9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1714
    .local v4, "text":Ljava/lang/String;
    :goto_2
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1715
    .local v1, "builder":Landroid/app/Notification$Builder;
    const v6, 0x108070f

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1716
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1717
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1718
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1719
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1720
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1721
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1722
    iget-object v6, v1, Landroid/app/Notification$Builder;->mFlymeNotificationBuilder:Landroid/app/NotificationBuilderExt;

    const v7, 0x108073d

    invoke-virtual {v6, v7}, Landroid/app/NotificationBuilderExt;->setNotificationIcon(I)V

    .line 1723
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1724
    .local v3, "notification":Landroid/app/Notification;
    const v6, 0x108070f

    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v6, v3, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1708
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v3    # "notification":Landroid/app/Notification;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v7, 0x10404b8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1710
    .restart local v5    # "title":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v8, 0x10404ba

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v11, 0xa

    if-le v6, v11, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v11, v11, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ".."

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    goto :goto_3
.end method

.method private declared-synchronized startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p2, "racoon"    # [Ljava/lang/String;
    .param p3, "mtpd"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, add for more vpn status"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1057
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    .line 1062
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpn()V

    .line 1068
    const/4 v0, 0x0

    const-string v1, "[Legacy VPN]"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Vpn;->disableVpnStateChangeBroadcast:Z

    .line 1073
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn;->backupParasForReconnect(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1076
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, "startLegacyVpn"

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1079
    new-instance v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1080
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    monitor-exit p0

    return-void

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    .locals 1
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, add for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Z)V

    .line 277
    return-void
.end method

.method private updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "sendBroadcast"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1605
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    .line 1606
    const-string v0, "Vpn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->onStateChanged(Landroid/net/NetworkInfo;)V

    .line 1609
    if-eqz p3, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V

    .line 1612
    :cond_0
    return-void
.end method

.method private updateStateForFailedDetail(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 1
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "failedDatail"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1619
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Z)V

    .line 1620
    iput p3, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    .line 1621
    iget v0, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V

    .line 1622
    return-void
.end method


# virtual methods
.method public callJniSetRoutes(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "interfaze"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1584
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 1585
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v0

    .line 1586
    .local v0, "dest":Landroid/net/LinkAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1588
    .local v3, "routeString":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/server/connectivity/Vpn;->jniSetRoutes(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const-string v4, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call jniSetRoutes to set VPN route, intafaze:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " routeString: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1592
    .end local v0    # "dest":Landroid/net/LinkAddress;
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "routeString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public declared-synchronized establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 23
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v13

    .line 427
    .local v13, "mgr":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 428
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 430
    .local v5, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v22, v0

    invoke-interface/range {v19 .. v22}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 431
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 432
    const/16 v17, 0x0

    .line 554
    :goto_0
    monitor-exit p0

    return-object v17

    .line 434
    :catch_0
    move-exception v8

    .line 435
    .local v8, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_0

    .line 439
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v19, 0x0

    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    .line 440
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    .line 444
    new-instance v11, Landroid/content/Intent;

    const-string v19, "android.net.VpnService"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v15

    .line 449
    .local v15, "token":J
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    .line 450
    .local v18, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 451
    new-instance v19, Ljava/lang/SecurityException;

    const-string v20, "Restricted users cannot establish VPNs"

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 462
    .end local v18    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v8

    .line 463
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v19, Ljava/lang/SecurityException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot find "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 465
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v19

    :try_start_5
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 426
    .end local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "mgr":Landroid/os/UserManager;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "token":J
    :catchall_1
    move-exception v19

    monitor-exit p0

    throw v19

    .line 454
    .restart local v5    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v13    # "mgr":Landroid/os/UserManager;
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    .restart local v15    # "token":J
    .restart local v18    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v11, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 456
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    if-nez v10, :cond_2

    .line 457
    new-instance v19, Ljava/lang/SecurityException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot find "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 459
    :cond_2
    const-string v19, "android.permission.BIND_VPN_SERVICE"

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 460
    new-instance v19, Ljava/lang/SecurityException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " does not require "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 465
    :cond_3
    :try_start_7
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 469
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/net/VpnConfig;->mtu:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniCreate(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v17

    .line 471
    .local v17, "tun":Landroid/os/ParcelFileDescriptor;
    :try_start_8
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v20, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {v17 .. v17}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniGetName(I)Ljava/lang/String;

    move-result-object v12

    .line 475
    .local v12, "interfaze":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v6, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 477
    .local v4, "address":Landroid/net/LinkAddress;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 516
    .end local v4    # "address":Landroid/net/LinkAddress;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "interfaze":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 517
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_9
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v20, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 518
    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 521
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 525
    :goto_2
    :try_start_b
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 479
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "interfaze":Ljava/lang/String;
    :cond_4
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/server/connectivity/Vpn;->jniSetAddresses(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 480
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "At least one address must be specified"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 482
    :cond_5
    new-instance v7, Lcom/android/server/connectivity/Vpn$Connection;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Lcom/android/server/connectivity/Vpn$Connection;-><init>(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$1;)V

    .line 483
    .local v7, "connection":Lcom/android/server/connectivity/Vpn$Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v11, v7, v1, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 485
    new-instance v19, Ljava/lang/IllegalStateException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot bind "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 487
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 490
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 493
    :cond_8
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 494
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 500
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 502
    new-instance v19, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result-wide v15

    .line 505
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwarding(Ljava/lang/String;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->setRoutes(Ljava/lang/String;Ljava/util/List;)V

    .line 507
    const-string v19, "Vpn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setRoutes :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v22}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 513
    :try_start_e
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 527
    :try_start_f
    const-string v19, "Vpn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Established by "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-wide v15

    .line 534
    :try_start_10
    invoke-virtual {v13}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "user":Landroid/content/pm/UserInfo;
    check-cast v18, Landroid/content/pm/UserInfo;

    .line 535
    .restart local v18    # "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result v19

    if-eqz v19, :cond_9

    .line 537
    :try_start_11
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_3

    .line 538
    :catch_3
    move-exception v8

    .line 539
    .local v8, "e":Ljava/lang/Exception;
    :try_start_12
    const-string v19, "Vpn"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to add user "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to owner\'s VPN"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_3

    .line 544
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v18    # "user":Landroid/content/pm/UserInfo;
    :catchall_2
    move-exception v19

    :try_start_13
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 513
    .restart local v18    # "user":Landroid/content/pm/UserInfo;
    :catchall_3
    move-exception v19

    :try_start_14
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 544
    :cond_a
    :try_start_15
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    :cond_b
    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    const-string v20, "establish"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn;->trySetForceRoutingLANToWifi()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_0

    .line 522
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "connection":Lcom/android/server/connectivity/Vpn$Connection;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "interfaze":Ljava/lang/String;
    .local v8, "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v19

    goto/16 :goto_2
.end method

.method public getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 3
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, add vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1104
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 1108
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v1, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1113
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1115
    :cond_2
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    .line 1116
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 1122
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/android/internal/net/LegacyVpnInfo;->stateFromNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 1127
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1104
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1122
    .restart local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :cond_3
    :try_start_2
    iget v1, p0, Lcom/android/server/connectivity/Vpn;->mFailedDetail:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const-string v0, "net.tcp.buffersize.unknown"

    return-object v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 1

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 676
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    return-object v0
.end method

.method public declared-synchronized interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, p1, p2}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :goto_0
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 683
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAddressCovered(Ljava/net/InetAddress;)Z
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x0

    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->isRunningLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    monitor-exit p0

    .line 565
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v1, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-static {v1, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, add for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 303
    monitor-enter p0

    :try_start_0
    const-string v8, "Vpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prepare old:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",new:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v8, :cond_0

    .line 308
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    const/16 v9, 0x66

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 313
    const-string v8, "Vpn"

    const-string v9, "removeMessages MSG_RECONNECT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    :cond_0
    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    move v7, v1

    .line 387
    :cond_1
    :goto_0
    monitor-exit p0

    return v7

    .line 324
    :cond_2
    if-eqz p2, :cond_1

    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "[Legacy VPN]"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 330
    :cond_3
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 333
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_6

    .line 334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 336
    .local v4, "token":J
    :try_start_2
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v8}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    .line 337
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 338
    .local v3, "size":I
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_4

    move v1, v7

    .line 340
    .local v1, "forwardDns":Z
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 341
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 342
    .local v6, "user":I
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v8, v9, v6, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    .line 343
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Vpn;->hideNotification(I)V

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 346
    .end local v6    # "user":I
    :cond_5
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 356
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    .end local v1    # "forwardDns":Z
    .end local v2    # "i":I
    .end local v3    # "size":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->tryClearForceRoutingLANToWifi()V

    .line 363
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/Vpn;->jniReset(Ljava/lang/String;)V

    .line 364
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 365
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;

    .line 369
    .end local v4    # "token":J
    :cond_6
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_8

    .line 371
    :try_start_4
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    # getter for: Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn$Connection;->access$600(Lcom/android/server/connectivity/Vpn$Connection;)Landroid/os/IBinder;

    move-result-object v8

    const v9, 0xffffff

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-interface {v8, v9, v10, v11, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 376
    :goto_3
    :try_start_5
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    invoke-virtual {v8, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 377
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;

    .line 383
    :cond_7
    :goto_4
    const-string v8, "Vpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Switched from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    .line 385
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 386
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const-string v9, "prepare"

    invoke-direct {p0, v8, v9}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 303
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 350
    .restart local v4    # "token":J
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v8, "Vpn"

    const-string v9, "clearuserForwording Exception"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 356
    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 378
    .end local v4    # "token":J
    :cond_8
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v8, :cond_7

    .line 379
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v8}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 380
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 373
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 6
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "interfaze"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 400
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/connectivity/Vpn;->mUserId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 401
    .local v0, "appUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v4, v0, :cond_0

    .line 402
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Unauthorized Caller"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 405
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 407
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v4, p1}, Lcom/android/server/ConnectivityService$VpnCallback;->protect(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/connectivity/Vpn;->jniProtect(ILjava/lang/String;)V

    .line 414
    return-void

    .line 409
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEnableNotifications(Z)V
    .locals 0
    .param p1, "enableNotif"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableNotif:Z

    .line 227
    return-void
.end method

.method public setEnableTeardown(Z)V
    .locals 0
    .param p1, "enableTeardown"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/android/server/connectivity/Vpn;->mEnableTeardown:Z

    .line 236
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    .locals 15
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "keyStore"    # Landroid/security/KeyStore;
    .param p3, "egress"    # Landroid/net/LinkProperties;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, for vpn bug"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 932
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 940
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/net/VpnProfile;->needKeyStore()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v12

    if-nez v12, :cond_0

    .line 941
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "KeyStore isn\'t unlocked"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 945
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/connectivity/Vpn;->findIPv4DefaultRoute(Landroid/net/LinkProperties;)Landroid/net/RouteInfo;

    move-result-object v5

    .line 946
    .local v5, "ipv4DefaultRoute":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, "gateway":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v4

    .line 950
    .local v4, "iface":Ljava/lang/String;
    const-string v7, ""

    .line 951
    .local v7, "privateKey":Ljava/lang/String;
    const-string v10, ""

    .line 952
    .local v10, "userCert":Ljava/lang/String;
    const-string v1, ""

    .line 953
    .local v1, "caCert":Ljava/lang/String;
    const-string v9, ""

    .line 954
    .local v9, "serverCert":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 955
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRPKEY_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 956
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v11

    .line 957
    .local v11, "value":[B
    if-nez v11, :cond_5

    const/4 v10, 0x0

    .line 959
    .end local v11    # "value":[B
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 960
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CACERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v11

    .line 961
    .restart local v11    # "value":[B
    if-nez v11, :cond_6

    const/4 v1, 0x0

    .line 963
    .end local v11    # "value":[B
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 964
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v11

    .line 965
    .restart local v11    # "value":[B
    if-nez v11, :cond_7

    const/4 v9, 0x0

    .line 967
    .end local v11    # "value":[B
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    if-eqz v10, :cond_4

    if-eqz v1, :cond_4

    if-nez v9, :cond_8

    .line 972
    :cond_4
    new-instance v12, Ljava/lang/IllegalStateException;

    iget-object v13, p0, Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;

    const v14, 0x1040749

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 957
    .restart local v11    # "value":[B
    :cond_5
    new-instance v10, Ljava/lang/String;

    .end local v10    # "userCert":Ljava/lang/String;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 961
    .restart local v10    # "userCert":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/String;

    .end local v1    # "caCert":Ljava/lang/String;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 965
    .restart local v1    # "caCert":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/String;

    .end local v9    # "serverCert":Ljava/lang/String;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v11, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 977
    .end local v11    # "value":[B
    .restart local v9    # "serverCert":Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    .line 978
    .local v8, "racoon":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v12, :pswitch_data_0

    .line 1012
    :goto_3
    const/4 v6, 0x0

    .line 1013
    .local v6, "mtpd":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v12, :pswitch_data_1

    .line 1034
    :goto_4
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 1035
    .local v2, "config":Lcom/android/internal/net/VpnConfig;
    const/4 v12, 0x1

    iput-boolean v12, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 1036
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 1037
    iput-object v4, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1038
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 1040
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1042
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v13, " +"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1044
    :cond_9
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1045
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v13, " +"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1047
    :cond_a
    invoke-direct {p0, v2, v8, v6}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1048
    return-void

    .line 980
    .end local v2    # "config":Lcom/android/internal/net/VpnConfig;
    .end local v6    # "mtpd":[Ljava/lang/String;
    :pswitch_0
    const/4 v12, 0x6

    new-array v8, v12, [Ljava/lang/String;

    .end local v8    # "racoon":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v4, v8, v12

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x2

    const-string v13, "udppsk"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x4

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x5

    const-string v13, "1701"

    aput-object v13, v8, v12

    .line 984
    .restart local v8    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 986
    :pswitch_1
    const/16 v12, 0x8

    new-array v8, v12, [Ljava/lang/String;

    .end local v8    # "racoon":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v4, v8, v12

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x2

    const-string v13, "udprsa"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    aput-object v7, v8, v12

    const/4 v12, 0x4

    aput-object v10, v8, v12

    const/4 v12, 0x5

    aput-object v1, v8, v12

    const/4 v12, 0x6

    aput-object v9, v8, v12

    const/4 v12, 0x7

    const-string v13, "1701"

    aput-object v13, v8, v12

    .line 990
    .restart local v8    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 992
    :pswitch_2
    const/16 v12, 0x9

    new-array v8, v12, [Ljava/lang/String;

    .end local v8    # "racoon":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v4, v8, v12

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x2

    const-string v13, "xauthpsk"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x4

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x5

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x6

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x7

    const-string v13, ""

    aput-object v13, v8, v12

    const/16 v12, 0x8

    aput-object v3, v8, v12

    .line 996
    .restart local v8    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 998
    :pswitch_3
    const/16 v12, 0xb

    new-array v8, v12, [Ljava/lang/String;

    .end local v8    # "racoon":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v4, v8, v12

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x2

    const-string v13, "xauthrsa"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    aput-object v7, v8, v12

    const/4 v12, 0x4

    aput-object v10, v8, v12

    const/4 v12, 0x5

    aput-object v1, v8, v12

    const/4 v12, 0x6

    aput-object v9, v8, v12

    const/4 v12, 0x7

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v8, v12

    const/16 v12, 0x8

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v13, v8, v12

    const/16 v12, 0x9

    const-string v13, ""

    aput-object v13, v8, v12

    const/16 v12, 0xa

    aput-object v3, v8, v12

    .line 1002
    .restart local v8    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 1004
    :pswitch_4
    const/16 v12, 0x9

    new-array v8, v12, [Ljava/lang/String;

    .end local v8    # "racoon":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v4, v8, v12

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x2

    const-string v13, "hybridrsa"

    aput-object v13, v8, v12

    const/4 v12, 0x3

    aput-object v1, v8, v12

    const/4 v12, 0x4

    aput-object v9, v8, v12

    const/4 v12, 0x5

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x6

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v13, v8, v12

    const/4 v12, 0x7

    const-string v13, ""

    aput-object v13, v8, v12

    const/16 v12, 0x8

    aput-object v3, v8, v12

    .restart local v8    # "racoon":[Ljava/lang/String;
    goto/16 :goto_3

    .line 1015
    .restart local v6    # "mtpd":[Ljava/lang/String;
    :pswitch_5
    const/16 v12, 0x14

    new-array v6, v12, [Ljava/lang/String;

    .end local v6    # "mtpd":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v4, v6, v12

    const/4 v12, 0x1

    const-string v13, "pptp"

    aput-object v13, v6, v12

    const/4 v12, 0x2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v6, v12

    const/4 v12, 0x3

    const-string v13, "1723"

    aput-object v13, v6, v12

    const/4 v12, 0x4

    const-string v13, "name"

    aput-object v13, v6, v12

    const/4 v12, 0x5

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v6, v12

    const/4 v12, 0x6

    const-string v13, "password"

    aput-object v13, v6, v12

    const/4 v12, 0x7

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v13, v6, v12

    const/16 v12, 0x8

    const-string v13, "linkname"

    aput-object v13, v6, v12

    const/16 v12, 0x9

    const-string v13, "vpn"

    aput-object v13, v6, v12

    const/16 v12, 0xa

    const-string v13, "refuse-eap"

    aput-object v13, v6, v12

    const/16 v12, 0xb

    const-string v13, "nodefaultroute"

    aput-object v13, v6, v12

    const/16 v12, 0xc

    const-string v13, "usepeerdns"

    aput-object v13, v6, v12

    const/16 v12, 0xd

    const-string v13, "idle"

    aput-object v13, v6, v12

    const/16 v12, 0xe

    const-string v13, "1800"

    aput-object v13, v6, v12

    const/16 v12, 0xf

    const-string v13, "mtu"

    aput-object v13, v6, v12

    const/16 v12, 0x10

    const-string v13, "1400"

    aput-object v13, v6, v12

    const/16 v12, 0x11

    const-string v13, "mru"

    aput-object v13, v6, v12

    const/16 v12, 0x12

    const-string v13, "1400"

    aput-object v13, v6, v12

    const/16 v13, 0x13

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    if-eqz v12, :cond_b

    const-string v12, "+mppe"

    :goto_5
    aput-object v12, v6, v13

    .line 1022
    .restart local v6    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_4

    .line 1015
    .end local v6    # "mtpd":[Ljava/lang/String;
    :cond_b
    const-string v12, "nomppe"

    goto :goto_5

    .line 1025
    .restart local v6    # "mtpd":[Ljava/lang/String;
    :pswitch_6
    const/16 v12, 0x14

    new-array v6, v12, [Ljava/lang/String;

    .end local v6    # "mtpd":[Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v4, v6, v12

    const/4 v12, 0x1

    const-string v13, "l2tp"

    aput-object v13, v6, v12

    const/4 v12, 0x2

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aput-object v13, v6, v12

    const/4 v12, 0x3

    const-string v13, "1701"

    aput-object v13, v6, v12

    const/4 v12, 0x4

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v13, v6, v12

    const/4 v12, 0x5

    const-string v13, "name"

    aput-object v13, v6, v12

    const/4 v12, 0x6

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    aput-object v13, v6, v12

    const/4 v12, 0x7

    const-string v13, "password"

    aput-object v13, v6, v12

    const/16 v12, 0x8

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    aput-object v13, v6, v12

    const/16 v12, 0x9

    const-string v13, "linkname"

    aput-object v13, v6, v12

    const/16 v12, 0xa

    const-string v13, "vpn"

    aput-object v13, v6, v12

    const/16 v12, 0xb

    const-string v13, "refuse-eap"

    aput-object v13, v6, v12

    const/16 v12, 0xc

    const-string v13, "nodefaultroute"

    aput-object v13, v6, v12

    const/16 v12, 0xd

    const-string v13, "usepeerdns"

    aput-object v13, v6, v12

    const/16 v12, 0xe

    const-string v13, "idle"

    aput-object v13, v6, v12

    const/16 v12, 0xf

    const-string v13, "1800"

    aput-object v13, v6, v12

    const/16 v12, 0x10

    const-string v13, "mtu"

    aput-object v13, v6, v12

    const/16 v12, 0x11

    const-string v13, "1400"

    aput-object v13, v6, v12

    const/16 v12, 0x12

    const-string v13, "mru"

    aput-object v13, v6, v12

    const/16 v12, 0x13

    const-string v13, "1400"

    aput-object v13, v6, v12

    .restart local v6    # "mtpd":[Ljava/lang/String;
    goto/16 :goto_4

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1013
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected startMonitoringInternal()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public declared-synchronized stopLegacyVpn()V
    .locals 2

    .prologue
    .line 1084
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1086
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1088
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1091
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    :cond_0
    monitor-exit p0

    return-void

    .line 1091
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1084
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public teardown()Z
    .locals 1

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public tryClearForceRoutingLANToWifi()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 1731
    const-string v4, "Vpn"

    const-string v5, "tryClearForceRoutingLANToWifi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    if-ne v4, v8, :cond_1

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1737
    :cond_1
    const-string v4, "wifi.interface"

    const-string v5, "wlan0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1738
    .local v3, "wifiInterface":Ljava/lang/String;
    const-string v4, "Vpn"

    const-string v5, "clearMarkedForwarding for wifi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1741
    .local v1, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    invoke-virtual {v4, v3}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1748
    const-string v4, "Vpn"

    const-string v5, "clearMarkedForwardingDestination for wifi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1751
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwardingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1756
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1758
    const-string v4, "Vpn"

    const-string v5, "clearMarkedForwardingRouteWithAddress for wifi"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1761
    :try_start_2
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwardingRouteWithAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1766
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1769
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    .line 1770
    iput v8, p0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    goto :goto_0

    .line 1742
    :catch_0
    move-exception v0

    .line 1743
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1745
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1753
    :catch_1
    move-exception v0

    .line 1754
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 1756
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1763
    :catch_2
    move-exception v0

    .line 1764
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 1766
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public trySetForceRoutingLANToWifi()V
    .locals 22

    .prologue
    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/ConnectivityService$VpnCallback;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v13

    .line 1775
    .local v13, "linkProperties":Landroid/net/LinkProperties;
    if-nez v13, :cond_1

    .line 1873
    :cond_0
    :goto_0
    return-void

    .line 1779
    :cond_1
    const-string v18, "Vpn"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "tryForceRoutingLANToWifi lp: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 1781
    .local v9, "interfaze":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1786
    const-string v18, "wifi.interface"

    const-string v19, "wlan0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1787
    .local v17, "wifiInterface":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1790
    const/4 v7, 0x0

    .line 1791
    .local v7, "gateway":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 1792
    .local v14, "route":Landroid/net/RouteInfo;
    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1793
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 1797
    .end local v14    # "route":Landroid/net/RouteInfo;
    :cond_3
    if-eqz v7, :cond_0

    .line 1800
    const-string v18, "Vpn"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "gateway "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const/4 v10, 0x0

    .line 1804
    .local v10, "ipAddress":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1805
    .local v12, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 1807
    .local v4, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1808
    const-string v18, "Vpn"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ipAddress "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    const-string v18, "Vpn"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "prefix :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const-string v18, "::"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1811
    move-object v12, v4

    .line 1812
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    .line 1814
    const/16 v18, 0x10

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    .line 1820
    .end local v4    # "addr":Landroid/net/LinkAddress;
    :cond_5
    const-string v18, "Vpn"

    const-string v19, "setMarkedForwarding for wifi"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1823
    .local v15, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwarding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    :goto_1
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1829
    const-string v18, "\\."

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1830
    .local v11, "ipSecArray":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1835
    const/16 v18, 0x2

    const-string v19, "0"

    aput-object v19, v11, v18

    .line 1836
    const/16 v18, 0x3

    const-string v19, "0"

    aput-object v19, v11, v18

    .line 1837
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    aget-object v19, v11, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v11, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v19, v11, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x3

    aget-object v19, v11, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1841
    .local v5, "destAddress":Ljava/lang/String;
    const-string v18, "Vpn"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "dest address :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    .line 1845
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1847
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwardingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1852
    :goto_2
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1863
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1866
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/connectivity/Vpn;->mWifiGatewayPrifexLength:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwardingRouteWithAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1871
    :goto_3
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1824
    .end local v5    # "destAddress":Ljava/lang/String;
    .end local v11    # "ipSecArray":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1825
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1827
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 1849
    .restart local v5    # "destAddress":Ljava/lang/String;
    .restart local v11    # "ipSecArray":[Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 1850
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 1852
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 1868
    :catch_2
    move-exception v6

    .line 1869
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 1871
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v18

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18
.end method
