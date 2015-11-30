.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 1714
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1719
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 2021
    const/4 v9, 0x0

    .line 2023
    :goto_0
    return v9

    .line 1722
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1723
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v9, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1724
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dropping connect requeset "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1725
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22008

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 2023
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v9, 0x1

    goto :goto_0

    .line 1729
    .restart local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_1
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$7502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1731
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    .line 1733
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->reinvokePersistentGroup(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v9, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1734
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v10

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 1739
    :goto_2
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8102(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1740
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateStatus(Ljava/lang/String;I)V

    .line 1741
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    .line 1742
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22009

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto :goto_1

    .line 1737
    :cond_2
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mProvisionDiscoveryState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$ProvisionDiscoveryState;

    move-result-object v10

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 1745
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_2
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1748
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->p2pFlush()Z

    .line 1749
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$8202(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;

    .line 1750
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22006

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto :goto_1

    .line 1752
    :cond_3
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22005

    const/4 v11, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1757
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1758
    .restart local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v9, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1759
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dropping GO neg request "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1762
    :cond_4
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8102(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1763
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$7502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1764
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$8302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1765
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingNegotiationRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingNegotiationRequestState;

    move-result-object v10

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1768
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1769
    .local v2, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    .line 1771
    .local v6, "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-nez v6, :cond_5

    .line 1772
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v10, "Ignored invitation from null owner"

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1776
    :cond_5
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1777
    .restart local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v9, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1779
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->isConfigInvalid(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    invoke-static {v9, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1780
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dropping invitation request "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1783
    :cond_6
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9, v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8102(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1787
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    iget-object v10, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 1788
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1789
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v10, 0x0

    iput v10, v9, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1797
    :cond_7
    :goto_3
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$7502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1798
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$8302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1799
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mUserAuthorizingInviteRequestState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$UserAuthorizingInviteRequestState;

    move-result-object v10

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1790
    :cond_8
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1791
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v10, 0x2

    iput v10, v9, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_3

    .line 1792
    :cond_9
    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1793
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v10, 0x1

    iput v10, v9, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_3

    .line 1810
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v2    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .end local v6    # "owner":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_5
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$7502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1811
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 1812
    .local v4, "netId":I
    const/4 v8, 0x0

    .line 1813
    .local v8, "ret":Z
    const/4 v9, -0x2

    if-ne v4, v9, :cond_b

    .line 1815
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroups:Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$4700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getNetworkId(Ljava/lang/String;)I

    move-result v4

    .line 1816
    const/4 v9, -0x1

    if-eq v4, v9, :cond_a

    .line 1817
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(I)Z

    move-result v8

    .line 1825
    :goto_4
    if-eqz v8, :cond_c

    .line 1826
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2200f

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    .line 1827
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v10

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1819
    :cond_a
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(Z)Z

    move-result v8

    goto :goto_4

    .line 1822
    :cond_b
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(Z)Z

    move-result v8

    goto :goto_4

    .line 1829
    :cond_c
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2200e

    const/4 v11, 0x0

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v9, p1, v10, v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1835
    .end local v4    # "netId":I
    .end local v8    # "ret":Z
    :sswitch_6
    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10, v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1202(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1839
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v9

    const/4 v10, -0x2

    if-ne v9, v10, :cond_d

    .line 1840
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$7502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1841
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v9, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    .line 1842
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v10

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1844
    :cond_d
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected group creation, remove "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 1845
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$1200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 1870
    :sswitch_7
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 1871
    .local v7, "p2pChannels":Landroid/os/Bundle;
    const-string/jumbo v9, "lc"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1872
    .local v3, "lc":I
    const-string/jumbo v9, "oc"

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1874
    .local v5, "oc":I
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9, v3, v5}, Landroid/net/wifi/WifiNative;->p2pSetChannel(II)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1875
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22049

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1877
    :cond_e
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x22048

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v9, p1, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_1

    .line 1882
    .end local v3    # "lc":I
    .end local v5    # "oc":I
    .end local v7    # "p2pChannels":Landroid/os/Bundle;
    :sswitch_8
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2205c

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setFastConnectInfo(I)V

    goto/16 :goto_1

    .line 1885
    :sswitch_9
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v10, v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$2702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 1886
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$2102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1887
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2205d

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->setFastConnectInfo(I)V

    .line 1889
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$9100()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$9102(I)I

    goto/16 :goto_1

    .line 1893
    :sswitch_a
    const/4 v9, 0x1

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mBeamPlusStart:Z
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$9200(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v10

    if-ne v9, v10, :cond_f

    .line 1894
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiNative;->p2pBeamPlusGO(I)V

    .line 1897
    :cond_f
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$7502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1898
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v10

    iget v10, v10, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiNative;->p2pGroupAdd(I)Z

    .line 1899
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v10

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1903
    :sswitch_b
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FAST_CONNECT_AS_GC, mFoundGo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService;->access$4900(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " inMpeers="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v12, v12, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v12}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->containsPeer(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 1908
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService;->access$4900(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->containsPeer(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1909
    :cond_10
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$4802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1910
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$4902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1911
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v10, 0x2205e

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(IJ)V

    .line 1912
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v11, 0x23009

    # ++operator for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$9104()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x7530

    invoke-virtual {v9, v10, v11, v12}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1914
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v10, "Send FAST_CONNECT_FIND_GO_TIMED_OUT message"

    invoke-virtual {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1917
    :cond_11
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiNative;->getGroupCapability(Ljava/lang/String;)I

    move-result v1

    .line 1918
    .local v1, "gc2":I
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateGroupCapability(Ljava/lang/String;I)V

    .line 1919
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v10, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v10}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    # setter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8102(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/net/wifi/p2p/WifiP2pConfig;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1920
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    iput-object v10, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1921
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v10

    iget v10, v10, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    iput v10, v9, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1922
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiNative;->p2pStopFind()Z

    .line 1926
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v9}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, v10, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v10

    iget v10, v10, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->networkId:I

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v11, v11, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectInfo:Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pService;->access$2700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiNative;->p2pReinvoke(ILjava/lang/String;)Z

    .line 1927
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v10

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 1932
    .end local v1    # "gc2":I
    :sswitch_c
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mFastConnectFindGoTimeOutIndex:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$9100()I

    move-result v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v10, :cond_0

    .line 1934
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget v10, p1, Landroid/os/Message;->what:I

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure(I)V
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 1935
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x1

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGoTimeOut:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$4802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 1936
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    const/4 v10, 0x0

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mFoundGo:Z
    invoke-static {v9, v10}, Landroid/net/wifi/p2p/WifiP2pService;->access$4902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    goto/16 :goto_1

    .line 1719
    :sswitch_data_0
    .sparse-switch
        0x22004 -> :sswitch_2
        0x22007 -> :sswitch_0
        0x2200d -> :sswitch_5
        0x22047 -> :sswitch_7
        0x2205a -> :sswitch_8
        0x2205b -> :sswitch_9
        0x2205c -> :sswitch_a
        0x2205d -> :sswitch_b
        0x23009 -> :sswitch_c
        0x24017 -> :sswitch_3
        0x2401d -> :sswitch_6
        0x2401f -> :sswitch_4
        0x24021 -> :sswitch_1
        0x24023 -> :sswitch_1
        0x24024 -> :sswitch_1
        0x24038 -> :sswitch_1
        0x2403b -> :sswitch_1
    .end sparse-switch
.end method
