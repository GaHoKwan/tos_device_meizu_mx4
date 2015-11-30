.class Landroid/net/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 6470
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private getApWpsEventCode(I)I
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 6638
    sparse-switch p1, :sswitch_data_0

    .line 6648
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 6640
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 6642
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6644
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 6646
    :sswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 6638
    nop

    :sswitch_data_0
    .sparse-switch
        0x24008 -> :sswitch_3
        0x24009 -> :sswitch_2
        0x2400b -> :sswitch_0
        0x24064 -> :sswitch_1
    .end sparse-switch
.end method

.method private sendClientsChangedBroadcast(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 6472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6473
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6475
    const-string/jumbo v2, "sta_state"

    if-eqz p1, :cond_0

    const-string v1, "connected"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6476
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6477
    return-void

    .line 6475
    :cond_0
    const-string v1, "disconnected"

    goto :goto_0
.end method

.method private sendWifiApWpsEventBroadcast(I)V
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 6653
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.action.wifi_ap_wps_event"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6654
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "event_extra"

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine$TetheredState;->getApWpsEventCode(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6655
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6656
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 6482
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x0

    # setter for: Landroid/net/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$32402(Landroid/net/wifi/WifiStateMachine;I)I

    .line 6483
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 6484
    :try_start_0
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6485
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6496
    const-string/jumbo v1, "persist.radio.hotspot.probe.rq"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6497
    .local v0, "request":Ljava/lang/String;
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.radio.hotspot.probe.rq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6498
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6499
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$32600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setApProbeRequestEnabledCommand(Z)Z

    .line 6502
    :cond_0
    return-void

    .line 6485
    .end local v0    # "request":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 6660
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mDuration:I
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$33300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6661
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$16100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mIntentStopHotspot:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$33400(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 6663
    :cond_0
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 6664
    :try_start_0
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6665
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6668
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendWifiApWpsEventBroadcast(I)V

    .line 6670
    return-void

    .line 6665
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4000000

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 6506
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    move v8, v10

    .line 6634
    :cond_0
    :goto_0
    return v8

    .line 6508
    :sswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 6509
    .local v5, "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, v5, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    # invokes: Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v7, v9}, Landroid/net/wifi/WifiStateMachine;->access$31700(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6510
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v9, "Tethering reports wifi as untethered!, shut down soft Ap"

    # invokes: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v7, v9}, Landroid/net/wifi/WifiStateMachine;->access$32700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6511
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7, v12, v10}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 6512
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7, v12, v8}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 6517
    .end local v5    # "stateChange":Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v9, 0xa

    # invokes: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v7, v9}, Landroid/net/wifi/WifiStateMachine;->access$5500(Landroid/net/wifi/WifiStateMachine;I)V

    .line 6518
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$32800(Landroid/net/wifi/WifiStateMachine;)V

    .line 6519
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;
    invoke-static {v9}, Landroid/net/wifi/WifiStateMachine;->access$32900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v9

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v9}, Landroid/net/wifi/WifiStateMachine;->access$33000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6521
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v7, p1}, Landroid/net/wifi/WifiStateMachine;->access$33100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 6524
    :sswitch_2
    const-string v7, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AP STA CONNECTED:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6525
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # ++operator for: Landroid/net/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$32404(Landroid/net/wifi/WifiStateMachine;)I

    .line 6526
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 6527
    .local v0, "address":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 6528
    :try_start_0
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 6529
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v7

    new-instance v10, Landroid/net/wifi/HotspotClient;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Landroid/net/wifi/HotspotClient;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v7, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6531
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6538
    invoke-direct {p0, v8}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast(Z)V

    goto/16 :goto_0

    .line 6531
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 6541
    .end local v0    # "address":Ljava/lang/String;
    :sswitch_3
    const-string v7, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AP STA DISCONNECTED:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6542
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # --operator for: Landroid/net/wifi/WifiStateMachine;->mClientNum:I
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$32406(Landroid/net/wifi/WifiStateMachine;)I

    .line 6543
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 6544
    .restart local v0    # "address":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v9

    monitor-enter v9

    .line 6545
    :try_start_2
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 6546
    .local v1, "client":Landroid/net/wifi/HotspotClient;
    if-eqz v1, :cond_2

    iget-boolean v7, v1, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-nez v7, :cond_2

    .line 6547
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6549
    :cond_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6558
    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast(Z)V

    goto/16 :goto_0

    .line 6549
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 6561
    .end local v0    # "address":Ljava/lang/String;
    :sswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/WpsInfo;

    .line 6562
    .local v6, "wpsConfig":Landroid/net/wifi/WpsInfo;
    iget v7, v6, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v7, :pswitch_data_0

    .line 6579
    const-string v7, "WifiStateMachine"

    const-string v9, "Invalid setup for WPS!"

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6564
    :pswitch_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mStartApWps:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiStateMachine;->access$33202(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 6565
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$32600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiNative;->startApWpsPbcCommand()Z

    goto/16 :goto_0

    .line 6568
    :pswitch_1
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$32600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v7

    iget-object v9, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/net/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6569
    .local v4, "pin":Ljava/lang/String;
    const-string v7, "WifiStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check pin result:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6570
    if-eqz v4, :cond_3

    .line 6571
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$32600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiNative;->startApWpsWithPinFromDeviceCommand(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 6573
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.net.wifi.WIFI_WPS_CHECK_PIN_FAIL"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6574
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6575
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 6584
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pin":Ljava/lang/String;
    .end local v6    # "wpsConfig":Landroid/net/wifi/WpsInfo;
    :sswitch_5
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$32600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiNative;->blockClientCommand(Ljava/lang/String;)Z

    move-result v3

    .line 6585
    .local v3, "ok":Z
    if-eqz v3, :cond_5

    .line 6586
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 6587
    :try_start_4
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v12

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/HotspotClient;

    .line 6588
    .restart local v1    # "client":Landroid/net/wifi/HotspotClient;
    if-eqz v1, :cond_4

    .line 6589
    const/4 v7, 0x1

    iput-boolean v7, v1, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    .line 6593
    :goto_1
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 6594
    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast(Z)V

    .line 6598
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :goto_2
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_6

    move v7, v8

    :goto_3
    invoke-virtual {v10, p1, v11, v7}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6591
    .restart local v1    # "client":Landroid/net/wifi/HotspotClient;
    :cond_4
    :try_start_5
    const-string v12, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to get "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6593
    .end local v1    # "client":Landroid/net/wifi/HotspotClient;
    :catchall_2
    move-exception v7

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v7

    .line 6596
    :cond_5
    const-string v10, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to block "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move v7, v9

    .line 6598
    goto :goto_3

    .line 6602
    .end local v3    # "ok":Z
    :sswitch_6
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$32600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v10, v7}, Landroid/net/wifi/WifiNative;->unblockClientCommand(Ljava/lang/String;)Z

    move-result v3

    .line 6603
    .restart local v3    # "ok":Z
    if-eqz v3, :cond_8

    .line 6604
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10

    .line 6605
    :try_start_6
    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotClients:Ljava/util/HashMap;
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$32500()Ljava/util/HashMap;

    move-result-object v11

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6606
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 6607
    invoke-direct {p0, v8}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendClientsChangedBroadcast(Z)V

    .line 6611
    :goto_4
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    iget v10, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_7

    move v9, v8

    :cond_7
    invoke-virtual {v7, p1, v10, v9}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6606
    :catchall_3
    move-exception v7

    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v7

    .line 6609
    :cond_8
    const-string v10, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to unblock "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/HotspotClient;

    iget-object v7, v7, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 6614
    .end local v3    # "ok":Z
    :sswitch_7
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotNative:Landroid/net/wifi/WifiNative;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$32600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v11

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v8, :cond_a

    move v7, v8

    :goto_5
    invoke-virtual {v11, v7}, Landroid/net/wifi/WifiNative;->setApProbeRequestEnabledCommand(Z)Z

    move-result v3

    .line 6615
    .restart local v3    # "ok":Z
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v7

    iget v10, p1, Landroid/os/Message;->what:I

    if-eqz v3, :cond_9

    move v9, v8

    :cond_9
    invoke-virtual {v7, p1, v10, v9}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .end local v3    # "ok":Z
    :cond_a
    move v7, v10

    .line 6614
    goto :goto_5

    .line 6618
    :sswitch_8
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mStartApWps:Z
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$33200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 6619
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.net.wifi.WIFI_HOTSPOT_OVERLAP"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6620
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6621
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v7

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6622
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mStartApWps:Z
    invoke-static {v7, v10}, Landroid/net/wifi/WifiStateMachine;->access$33202(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 6629
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_9
    iget v7, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine$TetheredState;->sendWifiApWpsEventBroadcast(I)V

    goto/16 :goto_0

    .line 6506
    nop

    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
        0x200aa -> :sswitch_5
        0x200ab -> :sswitch_6
        0x200ac -> :sswitch_4
        0x200ae -> :sswitch_7
        0x24008 -> :sswitch_9
        0x24009 -> :sswitch_9
        0x2400a -> :sswitch_8
        0x2400b -> :sswitch_9
        0x24029 -> :sswitch_3
        0x2402a -> :sswitch_2
        0x24064 -> :sswitch_9
    .end sparse-switch

    .line 6562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
