.class Lcom/android/server/connectivity/Tethering$2;
.super Landroid/net/INetworkManagementIpv6EventObserver$Stub;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/net/INetworkManagementIpv6EventObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceDNSChangedIpv6(Ljava/lang/String;I)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "numOfAddress"    # I

    .prologue
    .line 1551
    return-void
.end method

.method public interfaceStatusChangedIpv6(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 1544
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceStatusChangedIpv6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->isIpv6MasterSmOn()Z
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mIpv6TetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1547
    :cond_0
    return-void
.end method
