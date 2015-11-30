.class Lcom/android/server/display/WifiDisplayController$59;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->requestWaitConnection(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 4272
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$59;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 4283
    const-string v0, "WifiDisplayController"

    const-string v1, "listen failed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$59;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    # invokes: Lcom/android/server/display/WifiDisplayController;->enterSinkState(Lcom/android/server/display/WifiDisplayController$SinkState;)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$10400(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4286
    const-string v0, "WifiDisplayController"

    const-string v1, "[sink] callback onDisplayConnectionFailed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$59;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$800(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    .line 4288
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 4275
    const-string v0, "WifiDisplayController"

    const-string v1, "listen succeeded."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4278
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$59;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x7

    # invokes: Lcom/android/server/display/WifiDisplayController;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;I)V

    .line 4279
    return-void
.end method
