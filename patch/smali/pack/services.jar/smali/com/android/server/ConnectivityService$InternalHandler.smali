.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3840
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3841
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3842
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3847
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 3964
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3849
    :pswitch_1
    const/4 v4, 0x0

    .line 3850
    .local v4, "causedBy":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3851
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 3853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v4

    .line 3856
    :cond_1
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3857
    if-eqz v4, :cond_0

    .line 3858
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NetTransition Wakelock for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " released by timeout"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto :goto_0

    .line 3856
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 3863
    .end local v4    # "causedBy":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/ConnectivityService$FeatureUser;

    .line 3864
    .local v17, "u":Lcom/android/server/ConnectivityService$FeatureUser;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/ConnectivityService$FeatureUser;->expire()V

    goto :goto_0

    .line 3868
    .end local v17    # "u":Lcom/android/server/ConnectivityService$FeatureUser;
    :pswitch_3
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 3869
    .local v10, "netType":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 3870
    .local v5, "condition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/ConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v0, v10, v5}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 3874
    .end local v5    # "condition":I
    .end local v10    # "netType":I
    :pswitch_4
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 3875
    .restart local v10    # "netType":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    .line 3876
    .local v14, "sequence":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/ConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v0, v10, v14}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 3880
    .end local v10    # "netType":I
    .end local v14    # "sequence":I
    :pswitch_5
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 3881
    .local v13, "preference":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/ConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v0, v13}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_0

    .line 3885
    .end local v13    # "preference":I
    :pswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    .line 3886
    .local v6, "enabled":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/ConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v0, v6}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Z)V

    goto/16 :goto_0

    .line 3885
    .end local v6    # "enabled":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 3890
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 3894
    :pswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    .line 3895
    .local v8, "met":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    # invokes: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v0, v1, v8}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3894
    .end local v8    # "met":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 3899
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/Intent;

    .line 3900
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v7}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3904
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_a
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 3905
    .local v11, "networkType":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/4 v6, 0x1

    .line 3906
    .restart local v6    # "enabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v0, v11, v6}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3905
    .end local v6    # "enabled":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 3910
    .end local v11    # "networkType":I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 3911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/NetworkInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3916
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v16

    .line 3917
    .local v16, "tag":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 3918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v9, v18, v19

    check-cast v9, Landroid/net/MobileDataStateTracker;

    .line 3920
    .local v9, "mobileDst":Landroid/net/MobileDataStateTracker;
    if-eqz v9, :cond_0

    .line 3921
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    goto/16 :goto_0

    .line 3924
    .end local v9    # "mobileDst":Landroid/net/MobileDataStateTracker;
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_ENABLE_FAIL_FAST_MOBILE_DATA: stale arg1:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " != tag:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3930
    .end local v16    # "tag":I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/ConnectivityService;->handleNetworkSamplingTimeout()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 3934
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/ProxyProperties;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    goto/16 :goto_0

    .line 3940
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    move/from16 v19, v18

    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/Notification;

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v18

    # invokes: Lcom/android/server/ConnectivityService;->handleNotificationChange(ZILandroid/app/Notification;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;ZILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_6
    const/16 v18, 0x0

    move/from16 v19, v18

    goto :goto_4

    .line 3947
    :pswitch_10
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 3948
    .local v12, "preSlotId":I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 3950
    .local v15, "slotId":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_SET_MOBILE_DATA IN  slotId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "preSlotId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 3951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/ConnectivityService;->handleMobileDataConnectionChange(II)V
    invoke-static {v0, v12, v15}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;II)V

    goto/16 :goto_0

    .line 3957
    .end local v12    # "preSlotId":I
    .end local v15    # "slotId":I
    :pswitch_11
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 3958
    .restart local v15    # "slotId":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_SET_MOBILE_DATA_ENABLED_GEMINI IN  slotId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v18}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 3959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/android/server/ConnectivityService;->setMobileDataEnabledGemini(I)Z

    goto/16 :goto_0

    .line 3847
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
