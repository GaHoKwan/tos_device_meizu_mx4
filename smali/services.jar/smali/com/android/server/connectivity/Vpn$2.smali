.class Lcom/android/server/connectivity/Vpn$2;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V
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
    .line 191
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, -0x2710

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 197
    .local v1, "userId":I
    if-ne v1, v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "Vpn"

    const-string v3, "VPN not connected, do not add user for vpn"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V
    invoke-static {v2, v1}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;I)V

    goto :goto_0

    .line 204
    :cond_2
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 206
    const-string v2, "Vpn"

    const-string v3, "VPN not connected, do not remove user for vpn"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;I)V

    goto :goto_0
.end method
