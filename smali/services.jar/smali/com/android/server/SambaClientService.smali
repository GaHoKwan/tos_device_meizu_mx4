.class Lcom/android/server/SambaClientService;
.super Lmeizu/samba/client/ISambaClientManager$Stub;
.source "SambaClientService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SambaClientService$Task;,
        Lcom/android/server/SambaClientService$SambaHandler;,
        Lcom/android/server/SambaClientService$ScanThread;,
        Lcom/android/server/SambaClientService$VoldResponseCode;,
        Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    }
.end annotation


# static fields
.field private static final DEBUG_EVENTS:Z = false

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MESSAGE_MOUNT_SHARED_FOLDER:I = 0x2

.field private static final MESSAGE_SET_NETBIOS_NAME:I = 0x4

.field private static final MESSAGE_START_SCAN:I = 0x0

.field private static final MESSAGE_STOP_SCAN:I = 0x1

.field private static final MESSAGE_UMOUNT_SHARED_FOLDER:I = 0x3

.field private static final SAMBA_TAG:Ljava/lang/String; = "SambaClientConnector"

.field private static final TAG:Ljava/lang/String; = "SambaClientService"

.field static asciiEncoder:Ljava/nio/charset/CharsetEncoder;


# instance fields
.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mIp:Ljava/lang/String;

.field private mIsScanStart:Z

.field private mLastEnableUid:I

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SambaClientService$SambaStatusBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListerningIp:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

.field private mScanIp:Ljava/lang/String;

.field private mScanThread:Lcom/android/server/SambaClientService$ScanThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 723
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sput-object v0, Lcom/android/server/SambaClientService;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-direct {p0}, Lmeizu/samba/client/ISambaClientManager$Stub;-><init>()V

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SambaClientService;->mIsScanStart:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SambaClientService;->mListerningIp:Z

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mIp:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Lcom/android/server/SambaClientService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SambaClientService$1;-><init>(Lcom/android/server/SambaClientService;)V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 708
    new-instance v0, Lcom/android/server/SambaClientService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SambaClientService$2;-><init>(Lcom/android/server/SambaClientService;)V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iput-object p1, p0, Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;

    .line 128
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "vold"

    const/16 v3, 0x1f4

    const-string v4, "SambaClientConnector"

    const/16 v5, 0x19

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 129
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "SambaClientConnector"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 130
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 131
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "SambaClientService"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 132
    .local v7, "sambaThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v0, Lcom/android/server/SambaClientService$SambaHandler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SambaClientService$SambaHandler;-><init>(Lcom/android/server/SambaClientService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    .line 134
    const-string v0, "SambaClientService"

    const-string v1, "SambaClientService started!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "meizu.intent.action.ACTION_MEIZU_DEVICE_NAME_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SambaClientService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SambaClientService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SambaClientService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SambaClientService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SambaClientService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SambaClientService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/SambaClientService;->setNetbiosName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/SambaClientService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SambaClientService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SambaClientService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SambaClientService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/SambaClientService;->onScanNotify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/SambaClientService;)Lcom/android/server/SambaClientService$ScanThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SambaClientService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mScanThread:Lcom/android/server/SambaClientService$ScanThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/SambaClientService;Lcom/android/server/SambaClientService$ScanThread;)Lcom/android/server/SambaClientService$ScanThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SambaClientService;
    .param p1, "x1"    # Lcom/android/server/SambaClientService$ScanThread;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/SambaClientService;->mScanThread:Lcom/android/server/SambaClientService$ScanThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/SambaClientService;)Lcom/android/server/NativeDaemonConnector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SambaClientService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/SambaClientService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SambaClientService;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/server/SambaClientService;->mListerningIp:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/SambaClientService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SambaClientService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/SambaClientService;->mIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/SambaClientService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SambaClientService;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/SambaClientService;->getConnectedWifiIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/SambaClientService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SambaClientService;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getConnectedWifiIp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 730
    iget-object v2, p0, Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 731
    .local v1, "wifimanage":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 733
    const-string v2, ""

    .line 736
    :goto_0
    return-object v2

    .line 735
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 736
    .local v0, "wifiinfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/SambaClientService;->intToIp(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getLegalDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 740
    sget-object v2, Lcom/android/server/SambaClientService;->asciiEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/SambaClientService;->mListerningIp:Z

    .line 742
    const-string v2, "SambaClientService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLegalDeviceName  US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 745
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/SambaClientService;->mListerningIp:Z

    .line 746
    invoke-direct {p0}, Lcom/android/server/SambaClientService;->getConnectedWifiIp()Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, "ip":Ljava/lang/String;
    const-string v2, "SambaClientService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLegalDeviceName ip: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_2

    .line 749
    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 750
    .local v1, "random":Ljava/util/Random;
    const v2, 0xf4240

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 752
    .end local v1    # "random":Ljava/util/Random;
    :cond_2
    const-string v2, "SambaClientService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLegalDeviceName NOT US-ASCII ,using name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 753
    goto :goto_0
.end method

.method private getSharedFoldersInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "bPrintLog"    # Z

    .prologue
    .line 636
    if-nez p1, :cond_0

    .line 637
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "ip cannot be null"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 640
    :cond_0
    new-instance v14, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v14}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v14}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 641
    .local v11, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 644
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 648
    .local v7, "folderList":Ljava/lang/StringBuffer;
    if-eqz p5, :cond_1

    const-string v14, "SambaClientService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getSharedFolders ip "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1
    :try_start_0
    new-instance v4, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;

    const/4 v14, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v4, v0, v1, v2, v14}, Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 652
    .local v4, "auth":Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    new-instance v6, Lmeizu2_jcifs/smb/SmbFile;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "smb://"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14, v4}, Lmeizu2_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;)V

    .line 653
    .local v6, "file":Lmeizu2_jcifs/smb/SmbFile;
    invoke-virtual {v6}, Lmeizu2_jcifs/smb/SmbFile;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 654
    invoke-virtual {v6}, Lmeizu2_jcifs/smb/SmbFile;->list()[Ljava/lang/String;

    move-result-object v12

    .line 655
    .local v12, "strFileLiStrings":[Ljava/lang/String;
    move-object v3, v12

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v13, v3, v9

    .line 656
    .local v13, "string":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 657
    const-string v14, "/"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 655
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 659
    .end local v13    # "string":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 660
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 663
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v12    # "strFileLiStrings":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 664
    .local v8, "folders":Ljava/lang/String;
    if-eqz p5, :cond_4

    const-string v14, "SambaClientService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "folders is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lmeizu2_jcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmeizu2_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 678
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OK/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .end local v4    # "auth":Lmeizu2_jcifs/smb/NtlmPasswordAuthentication;
    .end local v6    # "file":Lmeizu2_jcifs/smb/SmbFile;
    .end local v8    # "folders":Ljava/lang/String;
    :goto_1
    return-object v14

    .line 665
    :catch_0
    move-exception v5

    .line 666
    .local v5, "e":Lmeizu2_jcifs/smb/SmbAuthException;
    if-eqz p5, :cond_5

    const-string v14, "SambaClientService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getSharedFolders SmbAuthException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_5
    const-string v14, "SmbAuthException"

    goto :goto_1

    .line 668
    .end local v5    # "e":Lmeizu2_jcifs/smb/SmbAuthException;
    :catch_1
    move-exception v5

    .line 669
    .local v5, "e":Ljava/net/MalformedURLException;
    if-eqz p5, :cond_6

    const-string v14, "SambaClientService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getSharedFolders MalformedURLException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_6
    const-string v14, "MalformedURLException"

    goto :goto_1

    .line 671
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v5

    .line 672
    .local v5, "e":Lmeizu2_jcifs/smb/SmbException;
    if-eqz p5, :cond_7

    const-string v14, "SambaClientService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getSharedFolders SmbException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_7
    const-string v14, "SmbException"

    goto :goto_1

    .line 674
    .end local v5    # "e":Lmeizu2_jcifs/smb/SmbException;
    :catch_3
    move-exception v5

    .line 675
    .local v5, "e":Ljava/lang/Exception;
    if-eqz p5, :cond_8

    const-string v14, "SambaClientService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getSharedFolders Exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_8
    const-string v14, "Exception"

    goto :goto_1
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized isScanStart()Z
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/SambaClientService;->mIsScanStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onScanNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SambaClientService;->isScanStart()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SCAN_STOPED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 368
    const-string v4, "SambaClientService"

    const-string v5, "scan is stoped,do not call listener"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    :goto_0
    monitor-exit p0

    return-void

    .line 371
    :cond_0
    :try_start_1
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScanNotify "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v5, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 373
    :try_start_2
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 374
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 376
    .local v0, "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_start_3
    iget-object v4, v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4, p1, p2}, Lmeizu/samba/client/ISambaStatusListener;->onScanNotify(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 373
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 377
    :catch_0
    move-exception v3

    .line 378
    .local v3, "rex":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "SambaClientService"

    const-string v6, "Listener dead"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 384
    .end local v0    # "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v2    # "i":I
    .end local v3    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 367
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 380
    .restart local v0    # "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 381
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "SambaClientService"

    const-string v6, "Listener failed"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 384
    .end local v0    # "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method private sendScanMessage(ZZI)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "persist"    # Z
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v4, v3, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 392
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 393
    const-string v1, "SambaClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send scan message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v3, v1

    .line 389
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private setNetbiosName(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 758
    const-string v2, "SambaClientService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNetbiosname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    if-nez p1, :cond_0

    .line 767
    :goto_0
    return-void

    .line 762
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SambaClientService;->getLegalDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, "netbiosName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    const/4 v3, 0x4

    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 765
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 766
    const-string v2, "SambaClientService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send setNetbiosname message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized updateSambaMountPointChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "point"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 350
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    .local v0, "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_start_2
    iget-object v4, v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4, p1, p2}, Lmeizu/samba/client/ISambaStatusListener;->onMountPointChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 353
    :catch_0
    move-exception v3

    .line 354
    .local v3, "rex":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "SambaClientService"

    const-string v6, "Listener dead"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 360
    .end local v0    # "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v2    # "i":I
    .end local v3    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 348
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 356
    .restart local v0    # "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 357
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "SambaClientService"

    const-string v6, "Listener failed"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 360
    .end local v0    # "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 362
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)Z
    .locals 10
    .param p1, "listener"    # Lmeizu/samba/client/ISambaStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 305
    if-nez p1, :cond_0

    .line 306
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "listener is null in addSambaStatusListener"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 308
    :cond_0
    const-string v4, "SambaClientService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addSambaStatusListener:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v7, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 310
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 311
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 312
    const-string v4, "SambaClientService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mListeners.get(i):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-interface {p1}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/SambaClientService$SambaStatusBinderListener;

    iget-object v4, v4, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    const-string v4, "SambaClientService"

    const-string v6, "this listener is already added!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    monitor-exit v7

    move v4, v5

    .line 328
    :goto_1
    return v4

    .line 311
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_2
    new-instance v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SambaClientService$SambaStatusBinderListener;-><init>(Lcom/android/server/SambaClientService;Lmeizu/samba/client/ISambaStatusListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .local v0, "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :try_start_1
    invoke-interface {p1}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v8, 0x0

    invoke-interface {v4, v0, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 321
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v4, "SambaClientService"

    const-string v8, "addSambaStatusListener success"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :try_start_2
    monitor-exit v7

    move v4, v5

    .line 328
    goto :goto_1

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "rex":Landroid/os/RemoteException;
    const-string v4, "SambaClientService"

    const-string v5, "Failed to link to listener death"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    monitor-exit v7

    move v4, v6

    goto :goto_1

    .line 327
    .end local v0    # "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    .end local v1    # "i":I
    .end local v2    # "rex":Landroid/os/RemoteException;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public getNetbiosName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 682
    if-nez p1, :cond_0

    .line 683
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ip cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 685
    :cond_0
    const/4 v5, 0x0

    .line 687
    .local v5, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lmeizu2_jcifs/netbios/NbtAddress;->getAllByAddress(Ljava/lang/String;)[Lmeizu2_jcifs/netbios/NbtAddress;

    move-result-object v1

    .line 688
    .local v1, "addresses":[Lmeizu2_jcifs/netbios/NbtAddress;
    if-nez v1, :cond_1

    .line 689
    const/4 v6, 0x0

    .line 705
    .end local v1    # "addresses":[Lmeizu2_jcifs/netbios/NbtAddress;
    :goto_0
    return-object v6

    .line 690
    .restart local v1    # "addresses":[Lmeizu2_jcifs/netbios/NbtAddress;
    :cond_1
    move-object v2, v1

    .local v2, "arr$":[Lmeizu2_jcifs/netbios/NbtAddress;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 691
    .local v0, "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    const-string v6, "SambaClientService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addr:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v0}, Lmeizu2_jcifs/netbios/NbtAddress;->isGroupAddress()Z

    move-result v6

    if-nez v6, :cond_3

    .line 693
    invoke-virtual {v0}, Lmeizu2_jcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    .end local v1    # "addresses":[Lmeizu2_jcifs/netbios/NbtAddress;
    .end local v2    # "arr$":[Lmeizu2_jcifs/netbios/NbtAddress;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    :goto_2
    move-object v6, v5

    .line 705
    goto :goto_0

    .line 690
    .restart local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    .restart local v1    # "addresses":[Lmeizu2_jcifs/netbios/NbtAddress;
    .restart local v2    # "arr$":[Lmeizu2_jcifs/netbios/NbtAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 697
    .end local v0    # "addr":Lmeizu2_jcifs/netbios/NbtAddress;
    .end local v1    # "addresses":[Lmeizu2_jcifs/netbios/NbtAddress;
    .end local v2    # "arr$":[Lmeizu2_jcifs/netbios/NbtAddress;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public getSharedFolders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 632
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SambaClientService;->getSharedFoldersInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isMounted(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 9
    .param p1, "folder"    # Lmeizu/samba/client/RemoteSharedFolder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 287
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "isMounted"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "samba"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ismounted"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 295
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    :try_start_2
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMounted: event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaClientService"

    const-string v4, "ex isMounted"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 293
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_0
    move v2, v3

    .line 300
    goto :goto_0

    .line 287
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized mountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 9
    .param p1, "folder"    # Lmeizu/samba/client/RemoteSharedFolder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "add share!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mountSharedFolder !! floder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "samba"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "mount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->user:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->domain:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->password:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 230
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    :try_start_2
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mountSharedFolder: event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    const-string v3, "SambaClientService"

    const-string v4, "add share ok!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaClientService"

    const-string v4, "ex mount"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 228
    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_0
    const-string v4, "SambaClientService"

    const-string v5, "add share error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v4, p1, Lmeizu/samba/client/RemoteSharedFolder;->domain:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 238
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "floder domain = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lmeizu/samba/client/RemoteSharedFolder;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    :try_start_4
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "samba"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "mount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->user:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, ""

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->password:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 250
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    const-string v3, "SambaClientService"

    const-string v4, "add share ok!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 210
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 246
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catch_1
    move-exception v0

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "SambaClientService"

    const-string v4, "ex mount"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v2, v3

    .line 248
    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 255
    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 258
    goto/16 :goto_0
.end method

.method public needAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 617
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ip cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "folder cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_1
    const/4 v7, 0x0

    .line 622
    .local v7, "list":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/SambaClientService;->getSharedFoldersInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lmeizu/samba/client/SambaGetSharedFoldersException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_2
    move v0, v8

    .line 628
    :goto_0
    return v0

    .line 623
    :catch_0
    move-exception v6

    .line 624
    .local v6, "e":Lmeizu/samba/client/SambaGetSharedFoldersException;
    invoke-virtual {v6}, Lmeizu/samba/client/SambaGetSharedFoldersException;->getDetailStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 625
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 3

    .prologue
    .line 400
    const-string v1, "SambaClientService"

    const-string v2, "Samba vold connected!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Lcom/android/server/SambaClientService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "meizu_device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/SambaClientService;->setNetbiosName(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public removeSambaStatusListener(Lmeizu/samba/client/ISambaStatusListener;Ljava/lang/String;)V
    .locals 5
    .param p1, "listener"    # Lmeizu/samba/client/ISambaStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 332
    if-nez p1, :cond_0

    .line 333
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "listener is null in removeSambaStatusListener"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 335
    :cond_0
    const-string v2, "SambaClientService"

    const-string v3, "removeSambaStatusListener"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v3, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;

    .line 338
    .local v0, "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    invoke-interface {p1}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/SambaClientService$SambaStatusBinderListener;->mListener:Lmeizu/samba/client/ISambaStatusListener;

    invoke-interface {v4}, Lmeizu/samba/client/ISambaStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/SambaClientService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 340
    const-string v2, "SambaClientService"

    const-string v4, "removeSambaStatusListener success"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    monitor-exit v3

    .line 345
    .end local v0    # "bl":Lcom/android/server/SambaClientService$SambaStatusBinderListener;
    :goto_0
    return-void

    .line 344
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public declared-synchronized startScan(Ljava/lang/String;)Z
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "enter startScan!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/SambaClientService;->mIsScanStart:Z

    .line 164
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 167
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/server/SambaClientService;->mScanIp:Ljava/lang/String;

    .line 169
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    if-nez v4, :cond_2

    .line 170
    const-string v3, "SambaClientService"

    const-string v4, "startScan,handler ==null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 174
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 178
    .local v0, "ident":J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/SambaClientService;->mLastEnableUid:I

    .line 180
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/SambaClientService;->sendScanMessage(ZZI)V

    .line 181
    monitor-exit v4

    move v2, v3

    .line 183
    goto :goto_0

    .line 181
    .end local v0    # "ident":J
    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized stopScan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 189
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    .line 202
    :goto_0
    monitor-exit p0

    return v2

    .line 191
    :cond_0
    :try_start_1
    const-string v2, "SambaClientService"

    const-string v3, "stopScan!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/SambaClientService;->mIsScanStart:Z

    .line 193
    iget-object v3, p0, Lcom/android/server/SambaClientService;->mSambaHandler:Lcom/android/server/SambaClientService$SambaHandler;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 197
    .local v0, "ident":J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 198
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iput v2, p0, Lcom/android/server/SambaClientService;->mLastEnableUid:I

    .line 199
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v2, v4, v5}, Lcom/android/server/SambaClientService;->sendScanMessage(ZZI)V

    .line 200
    monitor-exit v3

    .line 202
    const/4 v2, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "ident":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized umountSharedFolder(Lmeizu/samba/client/RemoteSharedFolder;)Z
    .locals 9
    .param p1, "folder"    # Lmeizu/samba/client/RemoteSharedFolder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 263
    monitor-enter p0

    :try_start_0
    const-string v4, "SambaClientService"

    const-string v5, "remove share"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SambaClientService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v5, "samba"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "umount"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmeizu/samba/client/RemoteSharedFolder;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 277
    .local v1, "event":Lcom/android/server/NativeDaemonEvent;
    :try_start_2
    const-string v4, "SambaClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "umountSharedFolder: event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v4

    const/16 v5, 0x2bc

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :goto_0
    monitor-exit p0

    return v2

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SambaClientService"

    const-string v4, "ex umount"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 275
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_0
    move v2, v3

    .line 282
    goto :goto_0

    .line 263
    .end local v1    # "event":Lcom/android/server/NativeDaemonEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
