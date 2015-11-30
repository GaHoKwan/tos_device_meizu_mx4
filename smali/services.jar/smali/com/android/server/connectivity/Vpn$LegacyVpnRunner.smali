.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Ljava/lang/Thread;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field private static final EXIT_CODE_PROP_KEY:Ljava/lang/String; = "meizu.vpn.mtpd.exit_status"

.field private static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field private final mArguments:[[Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private final mDaemons:[Ljava/lang/String;

.field private final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOuterInterface:Ljava/lang/String;

.field private final mSockets:[Landroid/net/LocalSocket;

.field private mTimer:J

.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p2, "config"    # Lcom/android/internal/net/VpnConfig;
    .param p3, "racoon"    # [Ljava/lang/String;
    .param p4, "mtpd"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 1195
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    .line 1196
    const-string v2, "LegacyVpnRunner"

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1155
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1158
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 1168
    new-instance v2, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1197
    # setter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {p1, p2}, Lcom/android/server/connectivity/Vpn;->access$1202(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;)Lcom/android/internal/net/VpnConfig;

    .line 1198
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "racoon"

    aput-object v3, v2, v4

    const-string v3, "mtpd"

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 1200
    new-array v2, v7, [[Ljava/lang/String;

    aput-object p3, v2, v4

    aput-object p4, v2, v6

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 1201
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/net/LocalSocket;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 1209
    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 1212
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConnService:Landroid/net/IConnectivityManager;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/net/IConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->findConnectionTypeForIface(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1219
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1220
    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$2300(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1221
    return-void

    .line 1214
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 1215
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private checkpoint(Z)V
    .locals 8
    .param p1, "yield"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 1280
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1281
    .local v0, "now":J
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1282
    iput-wide v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    .line 1283
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1290
    :goto_0
    return-void

    .line 1284
    :cond_0
    iget-wide v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTimer:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 1285
    if-eqz p1, :cond_1

    const-wide/16 v2, 0xc8

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1287
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, "checkpoint"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1288
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Time is up"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute()V
    .locals 32
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1298
    const/4 v15, 0x0

    .line 1301
    .local v15, "initFinished":Z
    const/16 v27, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    aget-object v9, v7, v13

    .line 1305
    .local v9, "daemon":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 1306
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1504
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "daemon":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :catch_0
    move-exception v11

    .line 1505
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v27, "LegacyVpnRunner"

    const-string v28, "Aborting"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1508
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1516
    :goto_2
    const/16 v27, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1521
    if-nez v15, :cond_1e

    .line 1522
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_3
    move/from16 v0, v16

    if-ge v13, v0, :cond_1e

    aget-object v9, v7, v13

    .line 1523
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1522
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1304
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1311
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_1
    :try_start_4
    new-instance v23, Ljava/io/File;

    const-string v27, "/data/misc/vpn/state"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1312
    .local v23, "state":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 1313
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 1314
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string v28, "Cannot delete the state"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1521
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v23    # "state":Ljava/io/File;
    :catchall_0
    move-exception v27

    if-nez v15, :cond_1b

    .line 1522
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    .restart local v16    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_1b

    aget-object v9, v7, v13

    .line 1523
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1522
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1316
    .end local v9    # "daemon":Ljava/lang/String;
    .restart local v23    # "state":Ljava/io/File;
    :cond_2
    :try_start_5
    new-instance v27, Ljava/io/File;

    const-string v28, "/data/misc/vpn/abort"

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    .line 1317
    const/4 v15, 0x1

    .line 1320
    const/16 v21, 0x0

    .line 1321
    .local v21, "restart":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .local v7, "arr$":[[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    aget-object v6, v7, v13

    .line 1322
    .local v6, "arguments":[Ljava/lang/String;
    if-nez v21, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    const/16 v21, 0x1

    .line 1321
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1322
    :cond_4
    const/16 v21, 0x0

    goto :goto_6

    .line 1324
    .end local v6    # "arguments":[Ljava/lang/String;
    :cond_5
    if-nez v21, :cond_6

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v29, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1521
    if-nez v15, :cond_23

    .line 1522
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v13, v0, :cond_23

    aget-object v9, v7, v13

    .line 1523
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1522
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1328
    .end local v9    # "daemon":Ljava/lang/String;
    .local v7, "arr$":[[Ljava/lang/String;
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v29, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1331
    const/4 v12, 0x0

    .end local v7    # "arr$":[[Ljava/lang/String;
    .local v12, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v12, v0, :cond_d

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v27, v0

    aget-object v6, v27, v12

    .line 1333
    .restart local v6    # "arguments":[Ljava/lang/String;
    if-nez v6, :cond_8

    .line 1331
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1338
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v27, v0

    aget-object v9, v27, v12

    .line 1339
    .restart local v9    # "daemon":Ljava/lang/String;
    const-string v27, "LegacyVpnRunner"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "systemservice start "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-static {v9}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 1343
    :goto_9
    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 1344
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_9

    .line 1348
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v27, v0

    new-instance v28, Landroid/net/LocalSocket;

    invoke-direct/range {v28 .. v28}, Landroid/net/LocalSocket;-><init>()V

    aput-object v28, v27, v12

    .line 1349
    new-instance v4, Landroid/net/LocalSocketAddress;

    sget-object v27, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    move-object/from16 v0, v27

    invoke-direct {v4, v9, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1355
    .local v4, "address":Landroid/net/LocalSocketAddress;
    :goto_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1362
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    const/16 v28, 0x1f4

    invoke-virtual/range {v27 .. v28}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    invoke-virtual/range {v27 .. v27}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    .line 1366
    .local v19, "out":Ljava/io/OutputStream;
    move-object v7, v6

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_b
    move/from16 v0, v16

    if-ge v13, v0, :cond_b

    aget-object v5, v7, v13

    .line 1367
    .local v5, "argument":Ljava/lang/String;
    sget-object v27, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 1368
    .local v8, "bytes":[B
    array-length v0, v8

    move/from16 v27, v0

    const v28, 0xffff

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_a

    .line 1369
    new-instance v27, Ljava/lang/IllegalArgumentException;

    const-string v28, "Argument is too large"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1357
    .end local v5    # "argument":Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v8    # "bytes":[B
    .end local v19    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v27

    .line 1360
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_a

    .line 1371
    .restart local v5    # "argument":Ljava/lang/String;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v8    # "bytes":[B
    .restart local v19    # "out":Ljava/io/OutputStream;
    :cond_a
    array-length v0, v8

    move/from16 v27, v0

    shr-int/lit8 v27, v27, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1372
    array-length v0, v8

    move/from16 v27, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1373
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 1374
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1366
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 1376
    .end local v5    # "argument":Ljava/lang/String;
    .end local v8    # "bytes":[B
    :cond_b
    const/16 v27, 0xff

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1377
    const/16 v27, 0xff

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1378
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    invoke-virtual/range {v27 .. v27}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v14

    .line 1384
    .local v14, "in":Ljava/io/InputStream;
    :goto_c
    :try_start_9
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_7

    .line 1390
    :goto_d
    const/16 v27, 0x1

    :try_start_a
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    goto :goto_c

    .line 1403
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v6    # "arguments":[Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "daemon":Ljava/lang/String;
    .end local v14    # "in":Ljava/io/InputStream;
    .end local v19    # "out":Ljava/io/OutputStream;
    :cond_c
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1395
    :cond_d
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_f

    .line 1397
    const/4 v12, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v12, v0, :cond_c

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    move-object/from16 v27, v0

    aget-object v9, v27, v12

    .line 1399
    .restart local v9    # "daemon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    move-object/from16 v27, v0

    aget-object v27, v27, v12

    if-eqz v27, :cond_e

    invoke-static {v9}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_e

    .line 1400
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is dead"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1397
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 1407
    .end local v9    # "daemon":Ljava/lang/String;
    :cond_f
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "\n"

    const/16 v29, -0x1

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v20

    .line 1408
    .local v20, "parameters":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x6

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_10

    .line 1409
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string v28, "Cannot parse the state"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1413
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    const/16 v28, 0x0

    aget-object v28, v20, v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    const/16 v28, 0x1

    aget-object v28, v20, v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_12

    .line 1418
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    const/16 v28, 0x2

    aget-object v28, v20, v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 1422
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v27, v0

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-nez v27, :cond_14

    .line 1423
    :cond_13
    const/16 v27, 0x3

    aget-object v27, v20, v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1424
    .local v10, "dnsServers":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_14

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    const-string v28, " "

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 1430
    .end local v10    # "dnsServers":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-nez v27, :cond_16

    .line 1431
    :cond_15
    const/16 v27, 0x4

    aget-object v27, v20, v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 1432
    .local v22, "searchDomains":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_16

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    const-string v28, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 1438
    .end local v22    # "searchDomains":Ljava/lang/String;
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-wide v24

    .line 1440
    .local v24, "token":J
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/ConnectivityService$VpnCallback;->setMarkedForwarding(Ljava/lang/String;)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/android/server/ConnectivityService$VpnCallback;->setRoutes(Ljava/lang/String;Ljava/util/List;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mPackage:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$2600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "[Legacy VPN]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_17

    .line 1445
    const-string v27, "LegacyVpnRunner"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "callJniSetRoutes :"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " routes:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcom/android/server/connectivity/Vpn;->callJniSetRoutes(Ljava/lang/String;Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1451
    :cond_17
    :try_start_c
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1457
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v27

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, v27

    iput-wide v0, v2, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 1460
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkpoint(Z)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v27

    if-nez v27, :cond_18

    .line 1464
    new-instance v27, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is gone"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 1503
    .end local v13    # "i$":I
    :catchall_1
    move-exception v27

    monitor-exit v28
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v27

    .line 1451
    .restart local v13    # "i$":I
    :catchall_2
    move-exception v27

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v27
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1468
    :cond_18
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$1002(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    new-instance v29, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v29 .. v29}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    # setter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$302(Lcom/android/server/connectivity/Vpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    .line 1471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-wide v24

    .line 1473
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v30 .. v30}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static/range {v31 .. v31}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$VpnCallback;->override(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mUserId:I
    invoke-static/range {v29 .. v29}, Lcom/android/server/connectivity/Vpn;->access$2700(Lcom/android/server/connectivity/Vpn;)I

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    # invokes: Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2800(Lcom/android/server/connectivity/Vpn;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1476
    :try_start_11
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$2900(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v17

    .line 1482
    .local v17, "mgr":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-wide v24

    .line 1484
    :try_start_12
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    .line 1485
    .local v26, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move-result v27

    if-eqz v27, :cond_19

    .line 1487
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v29

    # invokes: Lcom/android/server/connectivity/Vpn;->addVpnUserLocked(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2800(Lcom/android/server/connectivity/Vpn;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_f

    .line 1488
    :catch_2
    move-exception v11

    .line 1489
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_14
    const-string v27, "LegacyVpnRunner"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Failed to add user "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " to owner\'s VPN"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_f

    .line 1495
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v26    # "user":Landroid/content/pm/UserInfo;
    :catchall_3
    move-exception v27

    :try_start_15
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v27

    .line 1476
    .end local v17    # "mgr":Landroid/os/UserManager;
    .local v13, "i$":I
    :catchall_4
    move-exception v27

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v27

    .line 1495
    .local v13, "i$":Ljava/util/Iterator;
    .restart local v17    # "mgr":Landroid/os/UserManager;
    :cond_1a
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1497
    const-string v27, "LegacyVpnRunner"

    const-string v29, "Connected!"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    sget-object v29, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v30, "execute"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->trySetForceRoutingLANToWifi()V

    .line 1503
    monitor-exit v28
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1521
    if-nez v15, :cond_26

    .line 1522
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_10
    move/from16 v0, v16

    if-ge v13, v0, :cond_26

    aget-object v9, v7, v13

    .line 1523
    .restart local v9    # "daemon":Ljava/lang/String;
    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1522
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 1528
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "daemon":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local v20    # "parameters":[Ljava/lang/String;
    .end local v21    # "restart":Z
    .end local v23    # "state":Ljava/io/File;
    .end local v24    # "token":J
    :cond_1b
    if-eqz v15, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v28 .. v28}, Lcom/android/server/connectivity/Vpn;->access$3000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    sget-object v29, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1d

    .line 1534
    :cond_1c
    const-string v28, "meizu.vpn.mtpd.exit_status"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1535
    .local v18, "mtpd_exit_status":I
    const-string v28, "meizu.vpn.mtpd.exit_status"

    const-string v29, ""

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string v28, "LegacyVpnRunner"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mtpd_exit_status is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    if-lez v18, :cond_21

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    sget-object v29, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v30, "execute"

    add-int/lit8 v31, v18, 0x64

    # invokes: Lcom/android/server/connectivity/Vpn;->updateStateForFailedDetail(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    invoke-static/range {v28 .. v31}, Lcom/android/server/connectivity/Vpn;->access$3100(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    .line 1521
    .end local v18    # "mtpd_exit_status":I
    :cond_1d
    :goto_11
    throw v27

    .line 1387
    .restart local v4    # "address":Landroid/net/LocalSocketAddress;
    .restart local v6    # "arguments":[Ljava/lang/String;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v9    # "daemon":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v13    # "i$":I
    .restart local v14    # "in":Ljava/io/InputStream;
    .restart local v16    # "len$":I
    .restart local v19    # "out":Ljava/io/OutputStream;
    .restart local v21    # "restart":Z
    .restart local v23    # "state":Ljava/io/File;
    :catch_3
    move-exception v27

    goto/16 :goto_d

    .line 1528
    .end local v4    # "address":Landroid/net/LocalSocketAddress;
    .end local v6    # "arguments":[Ljava/lang/String;
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v9    # "daemon":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v14    # "in":Ljava/io/InputStream;
    .end local v16    # "len$":I
    .end local v19    # "out":Ljava/io/OutputStream;
    .end local v21    # "restart":Z
    .end local v23    # "state":Ljava/io/File;
    .restart local v11    # "e":Ljava/lang/Exception;
    :cond_1e
    if-eqz v15, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$3000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v27

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 1534
    :cond_1f
    const-string v27, "meizu.vpn.mtpd.exit_status"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1535
    .restart local v18    # "mtpd_exit_status":I
    const-string v27, "meizu.vpn.mtpd.exit_status"

    const-string v28, ""

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string v27, "LegacyVpnRunner"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mtpd_exit_status is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    if-lez v18, :cond_22

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v29, "execute"

    .end local v11    # "e":Ljava/lang/Exception;
    :goto_12
    add-int/lit8 v30, v18, 0x64

    # invokes: Lcom/android/server/connectivity/Vpn;->updateStateForFailedDetail(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    invoke-static/range {v27 .. v30}, Lcom/android/server/connectivity/Vpn;->access$3100(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    .line 1546
    .end local v18    # "mtpd_exit_status":I
    :cond_20
    :goto_13
    return-void

    .line 1541
    .restart local v18    # "mtpd_exit_status":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v28, v0

    sget-object v29, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v30, "execute"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v28 .. v30}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_11

    .restart local v11    # "e":Ljava/lang/Exception;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v29, "execute"

    .end local v11    # "e":Ljava/lang/Exception;
    :goto_14
    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static/range {v27 .. v29}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_13

    .line 1528
    .end local v18    # "mtpd_exit_status":I
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    .restart local v21    # "restart":Z
    .restart local v23    # "state":Ljava/io/File;
    :cond_23
    if-eqz v15, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$3000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v27

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 1534
    :cond_24
    const-string v27, "meizu.vpn.mtpd.exit_status"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1535
    .restart local v18    # "mtpd_exit_status":I
    const-string v27, "meizu.vpn.mtpd.exit_status"

    const-string v28, ""

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string v27, "LegacyVpnRunner"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mtpd_exit_status is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    if-lez v18, :cond_25

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v29, "execute"

    goto :goto_12

    .line 1541
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v29, "execute"

    goto :goto_14

    .line 1528
    .end local v13    # "i$":I
    .end local v18    # "mtpd_exit_status":I
    .restart local v12    # "i":I
    .restart local v17    # "mgr":Landroid/os/UserManager;
    .restart local v20    # "parameters":[Ljava/lang/String;
    .restart local v24    # "token":J
    :cond_26
    if-eqz v15, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Vpn;->access$3000(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v27

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 1534
    :cond_27
    const-string v27, "meizu.vpn.mtpd.exit_status"

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 1535
    .restart local v18    # "mtpd_exit_status":I
    const-string v27, "meizu.vpn.mtpd.exit_status"

    const-string v28, ""

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string v27, "LegacyVpnRunner"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mtpd_exit_status is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    if-lez v18, :cond_28

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v29, "execute"

    goto/16 :goto_12

    .line 1541
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v27, v0

    sget-object v28, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v29, "execute"

    goto/16 :goto_14

    .line 1509
    .end local v12    # "i":I
    .end local v16    # "len$":I
    .end local v17    # "mgr":Landroid/os/UserManager;
    .end local v18    # "mtpd_exit_status":I
    .end local v20    # "parameters":[Ljava/lang/String;
    .end local v21    # "restart":Z
    .end local v23    # "state":Ljava/io/File;
    .end local v24    # "token":J
    .restart local v11    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v27

    goto/16 :goto_2
.end method

.method private monitorDaemons()V
    .locals 10

    .prologue
    .line 1553
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/Vpn;->access$3200(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1575
    :goto_0
    return-void

    .line 1559
    :cond_0
    const-wide/16 v6, 0x7d0

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 1560
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 1561
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v6, v6, v3

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 1570
    .local v1, "daemon":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1569
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1560
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "daemon":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1566
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1567
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v6, "LegacyVpnRunner"

    const-string v7, "interrupted during monitorDaemons(); stopping services"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1569
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 1570
    .restart local v1    # "daemon":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1569
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1573
    .end local v1    # "daemon":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v7, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v9, "babysit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v7, v8, v9}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1569
    throw v6

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v6

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 1570
    .restart local v1    # "daemon":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 1569
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1573
    .end local v1    # "daemon":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "babysit"

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_5
    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v6, v7, v8}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .restart local v3    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v8, "babysit"

    goto :goto_5
.end method


# virtual methods
.method public check(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    const-string v0, "LegacyVpnRunner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Legacy VPN is going down with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1228
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 7

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 1233
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .local v0, "arr$":[Landroid/net/LocalSocket;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1234
    .local v3, "socket":Landroid/net/LocalSocket;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1236
    .end local v3    # "socket":Landroid/net/LocalSocket;
    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v6, "exit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1238
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    :goto_1
    return-void

    .line 1239
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public exit(Z)V
    .locals 7
    .param p1, "setStateToDisconnected"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1250
    const-string v4, "LegacyVpnRunner"

    const-string v5, "VPN runner is exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->interrupt()V

    .line 1252
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .local v0, "arr$":[Landroid/net/LocalSocket;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1253
    .local v3, "socket":Landroid/net/LocalSocket;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1255
    .end local v3    # "socket":Landroid/net/LocalSocket;
    :cond_0
    if-eqz p1, :cond_1

    .line 1256
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v6, "exit"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 1259
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$2500(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :goto_1
    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->tryClearForceRoutingLANToWifi()V

    .line 1265
    return-void

    .line 1260
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1271
    const-string v0, "LegacyVpnRunner"

    const-string v1, "Waiting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const-string v1, "LegacyVpnRunner"

    monitor-enter v1

    .line 1273
    :try_start_0
    const-string v0, "LegacyVpnRunner"

    const-string v2, "Executing"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->execute()V

    .line 1275
    invoke-direct {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V

    .line 1276
    monitor-exit v1

    .line 1277
    return-void

    .line 1276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
