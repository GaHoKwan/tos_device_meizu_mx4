.class Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;
.super Lcom/android/internal/util/State;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrequencyConflictState"
.end annotation


# instance fields
.field private mFrequencyConflictDialog:Landroid/app/AlertDialog;

.field final synthetic this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)V
    .locals 0

    .prologue
    .line 2459
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private notifyFrequencyConflict()V
    .locals 8

    .prologue
    .line 2468
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v3, "Notify frequency conflict"

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2469
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2471
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService;->access$400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040445

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$14300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040472

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$3;

    invoke-direct {v4, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$3;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104043e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$2;

    invoke-direct {v4, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$2;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$1;

    invoke-direct {v3, p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState$1;-><init>(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2494
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2495
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2496
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->mFrequencyConflictDialog:Landroid/app/AlertDialog;

    .line 2497
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 2463
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2464
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->notifyFrequencyConflict()V

    .line 2465
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 2550
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->mFrequencyConflictDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->mFrequencyConflictDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2551
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 2501
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2502
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2544
    const/4 v0, 0x0

    .line 2546
    :goto_0
    :sswitch_0
    return v0

    .line 2505
    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "group sucess during freq conflict!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2508
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "group started after freq conflict, handle anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 2509
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$14400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Landroid/os/Message;)V

    .line 2510
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mGroupNegotiationState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$7600(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$GroupNegotiationState;

    move-result-object v2

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$14500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2518
    :sswitch_3
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "User reject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2520
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    sget-object v2, Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;->MTK_EXPAND_02:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mGroupRemoveReason:Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService;->access$14602(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;)Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;

    .line 2523
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->handleGroupCreationFailure(I)V
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$9400(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;I)V

    .line 2524
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v2

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$14700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 2528
    :sswitch_4
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x2300c

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 2529
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # setter for: Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z
    invoke-static {v1, v0}, Landroid/net/wifi/p2p/WifiP2pService;->access$14802(Landroid/net/wifi/p2p/WifiP2pService;Z)Z

    goto/16 :goto_0

    .line 2533
    :sswitch_5
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Wifi disconnected, retry p2p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2534
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mInactiveState:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;
    invoke-static {v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$2700(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$InactiveState;

    move-result-object v2

    # invokes: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$14900(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 2536
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->this$0:Landroid/net/wifi/p2p/WifiP2pService;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService;->mGcFastConnectEnaled:Z
    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pService;->access$2000(Landroid/net/wifi/p2p/WifiP2pService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2537
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x2205d

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 2539
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v2, 0x22007

    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine$FrequencyConflictState;->this$1:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mSavedPeerConfig:Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$8000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2502
    nop

    :sswitch_data_0
    .sparse-switch
        0x23004 -> :sswitch_4
        0x23005 -> :sswitch_3
        0x2300d -> :sswitch_5
        0x24019 -> :sswitch_1
        0x2401a -> :sswitch_0
        0x2401b -> :sswitch_1
        0x2401c -> :sswitch_0
        0x2401d -> :sswitch_2
        0x2401e -> :sswitch_0
    .end sparse-switch
.end method
