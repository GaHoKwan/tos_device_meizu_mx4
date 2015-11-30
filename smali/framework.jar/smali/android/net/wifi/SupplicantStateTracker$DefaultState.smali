.class Landroid/net/wifi/SupplicantStateTracker$DefaultState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 250
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    :goto_0
    return v7

    .line 199
    :sswitch_0
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # operator++ for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$008(Landroid/net/wifi/SupplicantStateTracker;)I

    .line 200
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUTHENTICATION_FAILURE_EVENT, mAuthenticationFailuresCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v5}, Landroid/net/wifi/SupplicantStateTracker;->access$000(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v3, v7}, Landroid/net/wifi/SupplicantStateTracker;->access$102(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    .line 203
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, "flag":Ljava/lang/String;
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PTK AUTHENTICATION_FAILURE_EVENT flag is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v3, "Failed to set PTK to the driver"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Replay Counter did not increase"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureSendWifiSettings:Z
    invoke-static {v3, v6}, Landroid/net/wifi/SupplicantStateTracker;->access$202(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    goto :goto_0

    .line 211
    .end local v0    # "flag":Ljava/lang/String;
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/StateChangeResult;

    .line 212
    .local v2, "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    iget-object v1, v2, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 213
    .local v1, "state":Landroid/net/wifi/SupplicantState;
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v4, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v4}, Landroid/net/wifi/SupplicantStateTracker;->access$100(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v4

    iget v5, v2, Landroid/net/wifi/StateChangeResult;->networkId:I

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;ZI)V
    invoke-static {v3, v1, v4, v5}, Landroid/net/wifi/SupplicantStateTracker;->access$300(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;ZI)V

    .line 216
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v3, v6}, Landroid/net/wifi/SupplicantStateTracker;->access$102(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    .line 217
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureSendWifiSettings:Z
    invoke-static {v3, v7}, Landroid/net/wifi/SupplicantStateTracker;->access$202(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    .line 218
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V
    invoke-static {v3, v2}, Landroid/net/wifi/SupplicantStateTracker;->access$400(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/StateChangeResult;)V

    goto :goto_0

    .line 221
    .end local v1    # "state":Landroid/net/wifi/SupplicantState;
    .end local v2    # "stateChangeResult":Landroid/net/wifi/StateChangeResult;
    :sswitch_2
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v4, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/SupplicantStateTracker;->access$500(Landroid/net/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v4

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$600(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 224
    :sswitch_3
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v3, v7}, Landroid/net/wifi/SupplicantStateTracker;->access$702(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    .line 225
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mConnectNetworkId:I
    invoke-static {v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$802(Landroid/net/wifi/SupplicantStateTracker;I)I

    .line 226
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v3, v6}, Landroid/net/wifi/SupplicantStateTracker;->access$902(Landroid/net/wifi/SupplicantStateTracker;I)I

    .line 227
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    const/16 v4, 0x64

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/SupplicantStateTracker;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 230
    :sswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mConnectNetworkId:I
    invoke-static {v4}, Landroid/net/wifi/SupplicantStateTracker;->access$800(Landroid/net/wifi/SupplicantStateTracker;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 231
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v3, v6}, Landroid/net/wifi/SupplicantStateTracker;->access$002(Landroid/net/wifi/SupplicantStateTracker;I)I

    .line 232
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$700(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # getter for: Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$1000(Landroid/net/wifi/SupplicantStateTracker;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 234
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z
    invoke-static {v3, v6}, Landroid/net/wifi/SupplicantStateTracker;->access$702(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    goto/16 :goto_0

    .line 239
    :sswitch_5
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # operator++ for: Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$908(Landroid/net/wifi/SupplicantStateTracker;)I

    goto/16 :goto_0

    .line 242
    :sswitch_6
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    # setter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I
    invoke-static {v3, v6}, Landroid/net/wifi/SupplicantStateTracker;->access$002(Landroid/net/wifi/SupplicantStateTracker;I)I

    goto/16 :goto_0

    .line 246
    :sswitch_7
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$DefaultState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    const/4 v4, -0x1

    # invokes: Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V
    invoke-static {v3, v4, v6}, Landroid/net/wifi/SupplicantStateTracker;->access$1100(Landroid/net/wifi/SupplicantStateTracker;II)V

    goto/16 :goto_0

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_7
        0x2006f -> :sswitch_2
        0x24006 -> :sswitch_1
        0x24007 -> :sswitch_0
        0x24008 -> :sswitch_6
        0x2402b -> :sswitch_5
        0x25001 -> :sswitch_3
        0x25004 -> :sswitch_4
    .end sparse-switch
.end method
