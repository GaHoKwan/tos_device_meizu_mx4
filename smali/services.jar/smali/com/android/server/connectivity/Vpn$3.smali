.class Lcom/android/server/connectivity/Vpn$3;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 13
    .param p1, "interfaze"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "kuangqianbo@Comm.VPN, add for vpn reconnect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 738
    iget-object v9, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v9

    .line 739
    :try_start_0
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v8, p1}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v5

    .line 742
    .local v5, "token":J
    :try_start_1
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 743
    .local v4, "size":I
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v1, 0x1

    .line 745
    .local v1, "forwardDns":Z
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 746
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 747
    .local v7, "user":I
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v7, v1}, Lcom/android/server/ConnectivityService$VpnCallback;->clearUserForwarding(Ljava/lang/String;IZ)V

    .line 748
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    invoke-static {v8, v7}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;I)V

    .line 745
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 743
    .end local v1    # "forwardDns":Z
    .end local v2    # "i":I
    .end local v7    # "user":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 750
    .restart local v1    # "forwardDns":Z
    .restart local v2    # "i":I
    :cond_1
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v8, v10}, Lcom/android/server/connectivity/Vpn;->access$302(Lcom/android/server/connectivity/Vpn;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    .line 751
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/server/ConnectivityService$VpnCallback;->clearMarkedForwarding(Ljava/lang/String;)V

    .line 753
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 757
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v8, v10}, Lcom/android/server/connectivity/Vpn;->access$1002(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 761
    const/4 v3, 0x0

    .line 764
    .local v3, "isUserVpnRemoved":Z
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 765
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1600(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v10}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 766
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v8, v10}, Lcom/android/server/connectivity/Vpn;->access$1502(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;

    .line 767
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v11, "interfaceRemoved"

    # invokes: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v8, v10, v11}, Lcom/android/server/connectivity/Vpn;->access$1700(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 771
    const/4 v3, 0x1

    .line 780
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v8}, Lcom/android/server/connectivity/Vpn;->tryClearForceRoutingLANToWifi()V

    .line 785
    if-nez v3, :cond_3

    .line 791
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getDefaultNetwork()[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$1800(Lcom/android/server/connectivity/Vpn;)[Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "activeNetwork":[Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 794
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;

    move-result-object v8

    const/16 v10, 0x65

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 795
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;

    move-result-object v8

    const/16 v10, 0x65

    const-wide/16 v11, 0xbb8

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 813
    .end local v0    # "activeNetwork":[Ljava/lang/String;
    .end local v1    # "forwardDns":Z
    .end local v2    # "i":I
    .end local v3    # "isUserVpnRemoved":Z
    .end local v4    # "size":I
    .end local v5    # "token":J
    :cond_3
    :goto_3
    monitor-exit v9

    .line 814
    return-void

    .line 755
    .restart local v5    # "token":J
    :catchall_0
    move-exception v8

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 813
    .end local v5    # "token":J
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 774
    .restart local v1    # "forwardDns":Z
    .restart local v2    # "i":I
    .restart local v3    # "isUserVpnRemoved":Z
    .restart local v4    # "size":I
    .restart local v5    # "token":J
    :cond_4
    :try_start_3
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 775
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 776
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v10, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v8, v10}, Lcom/android/server/connectivity/Vpn;->access$802(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    goto :goto_2

    .line 801
    .restart local v0    # "activeNetwork":[Ljava/lang/String;
    :cond_5
    const-string v8, "Vpn"

    const-string v10, "There isn\'t any activeNetwork, set it to wait for reconnect status"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    new-instance v10, Lcom/android/internal/net/LegacyVpnInfo;

    invoke-direct {v10}, Lcom/android/internal/net/LegacyVpnInfo;-><init>()V

    # setter for: Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {v8, v10}, Lcom/android/server/connectivity/Vpn;->access$102(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/LegacyVpnInfo;)Lcom/android/internal/net/LegacyVpnInfo;

    .line 804
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mCurrentConfig:Lcom/android/internal/net/VpnConfig;
    invoke-static {v10}, Lcom/android/server/connectivity/Vpn;->access$1900(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnConfig;

    move-result-object v10

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    .line 805
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v8

    const/4 v10, 0x6

    iput v10, v8, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 807
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;

    move-result-object v8

    const/16 v10, 0x66

    const-wide/16 v11, 0x7530

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 808
    iget-object v8, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v10, 0x6

    # invokes: Lcom/android/server/connectivity/Vpn;->sendVpnStateChangeBroadcast(I)V
    invoke-static {v8, v10}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "interfaze"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 697
    const-string v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interface : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " up = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v3

    .line 706
    if-nez p2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 707
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->check(Ljava/lang/String;)V

    .line 729
    :cond_0
    :goto_0
    monitor-exit v3

    .line 730
    return-void

    .line 708
    :cond_1
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 711
    const-string v2, "wifi.interface"

    const-string v4, "wlan0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 713
    .local v1, "wifiInterface":Ljava/lang/String;
    const-string v0, "ccmni0"

    .line 714
    .local v0, "strMtkInterfaceExp":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "rmnet0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    :cond_2
    const/4 v2, 0x6

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v2, v4, :cond_3

    .line 719
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mWaitingForReconnectInfo:Lcom/android/internal/net/LegacyVpnInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$100(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    const/4 v4, 0x2

    iput v4, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    .line 720
    const-string v2, "Vpn"

    const-string v4, "send VPN reconnect msg"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x65

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 722
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mReconnectHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x65

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 729
    .end local v0    # "strMtkInterfaceExp":Ljava/lang/String;
    .end local v1    # "wifiInterface":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 724
    .restart local v0    # "strMtkInterfaceExp":Ljava/lang/String;
    .restart local v1    # "wifiInterface":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v2, "Vpn"

    const-string v4, "VPN reconnect msg is already sended"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
