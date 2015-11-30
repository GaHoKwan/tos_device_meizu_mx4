.class Lcom/android/server/connectivity/Tethering$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 346
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/TetherMonitor;->getTetherEnableState(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 348
    .local v0, "enabled":Z
    :goto_0
    const-string v2, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable tethering: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string v1, "true"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMonitor:Lcom/android/server/connectivity/TetherMonitor;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/TetherMonitor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 350
    const-string v1, "Tethering"

    const-string v2, "Is tether monitor running? Not to start new one!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMonitor:Lcom/android/server/connectivity/TetherMonitor;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/TetherMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/TetherMonitor;->notifyInProgress()V

    .line 361
    :cond_0
    :goto_2
    return-void

    .line 346
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    .restart local v0    # "enabled":Z
    :cond_2
    const-string v1, "false"

    goto :goto_1

    .line 354
    :cond_3
    if-eqz v0, :cond_4

    .line 355
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->startTetherMonitor()V
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_2

    .line 356
    :cond_4
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMonitor:Lcom/android/server/connectivity/TetherMonitor;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/TetherMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 357
    const-string v1, "Tethering"

    const-string v2, "Quit tether monitor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMonitor:Lcom/android/server/connectivity/TetherMonitor;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/TetherMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/TetherMonitor;->stop()V

    .line 359
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->mTetherMonitor:Lcom/android/server/connectivity/TetherMonitor;
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering;->access$302(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/TetherMonitor;)Lcom/android/server/connectivity/TetherMonitor;

    goto :goto_2
.end method
