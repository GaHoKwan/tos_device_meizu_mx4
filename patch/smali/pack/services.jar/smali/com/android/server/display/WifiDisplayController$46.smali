.class Lcom/android/server/display/WifiDisplayController$46;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V
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
    .line 3812
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$46;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3815
    # getter for: Lcom/android/server/display/WifiDisplayController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3816
    const-string v0, "WifiDisplayController"

    const-string v1, "user want to reconnect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$46;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->requestStartScan()V

    .line 3822
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$46;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 v1, 0x3c

    # setter for: Lcom/android/server/display/WifiDisplayController;->mReConnection_Timeout_Remain_Seconds:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$9202(Lcom/android/server/display/WifiDisplayController;I)I

    .line 3823
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$46;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2400(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$46;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mReConnect:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$9300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3824
    return-void
.end method
