.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupCreatingState"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 2027
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 2031
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x23001

    # ++operator for: Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$10604()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2034
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const/4 v1, 0x1

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendP2pTxBroadcast(Z)V
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Z)V

    .line 2054
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v5, 0x2200a

    const/4 v6, 0x1

    .line 2059
    const/4 v2, 0x1

    .line 2060
    .local v2, "ret":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 2140
    const/4 v2, 0x0

    .line 2142
    :cond_0
    :goto_0
    return v2

    .line 2062
    :sswitch_0
    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I
    invoke-static {}, Landroid/net/wifi/p2p/WifiP2pService;->access$10600()I

    move-result v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_0

    .line 2064
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget v5, p1, Landroid/os/Message;->what:I

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure(I)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 2065
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v5

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2069
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2070
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2076
    const/4 v2, 0x0

    .line 2077
    goto :goto_0

    .line 2081
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeersLostDuringConnection:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$10900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 2085
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_2
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x22002

    const/4 v6, 0x2

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 2095
    :sswitch_3
    const/4 v3, 0x0

    .line 2096
    .local v3, "success":Z
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->p2pCancelConnect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2097
    const/4 v3, 0x1

    .line 2101
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget v5, p1, Landroid/os/Message;->what:I

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure(I)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 2102
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2800(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v5

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 2103
    if-eqz v3, :cond_4

    .line 2104
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2200c

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v4, p1, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto :goto_0

    .line 2098
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/wifi/p2p/WifiP2pService;->access$200(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2099
    const/4 v3, 0x1

    goto :goto_1

    .line 2106
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v5, 0x2200b

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v4, p1, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$4100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 2110
    .end local v3    # "success":Z
    :sswitch_4
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 2112
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGo:Z
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$11102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2113
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mGoFastConnectEnaled:Z
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$2002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2114
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11200(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2117
    :sswitch_5
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v4, v5}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    .line 2119
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mRestartFastConnectAsGc:Z
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$11302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2120
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z
    invoke-static {v4, v6}, Landroid/net/wifi/p2p/WifiP2pService;->access$2102(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    .line 2121
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2124
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2125
    .local v1, "peerDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService;->access$4700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2126
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8100(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2128
    iput v6, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 2130
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2131
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendPeersChangedBroadcast()V
    invoke-static {v4}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$3700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V

    goto/16 :goto_0

    .line 2136
    .end local v1    # "peerDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_7
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupCreatingState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$11500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2060
    nop

    :sswitch_data_0
    .sparse-switch
        0x22001 -> :sswitch_2
        0x2200a -> :sswitch_3
        0x2205a -> :sswitch_4
        0x2205b -> :sswitch_5
        0x23001 -> :sswitch_0
        0x2300f -> :sswitch_7
        0x24015 -> :sswitch_6
        0x24016 -> :sswitch_1
    .end sparse-switch
.end method
