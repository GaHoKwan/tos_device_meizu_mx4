.class final Lcom/android/server/power/PowerManagerService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3326
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3326
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3329
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3330
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleBatteryStateChangedLocked()V
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)V

    .line 3332
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSbPlugState:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3333
    const-string v3, "status_2nd"

    const/4 v5, 0x0

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3334
    .local v0, "isPresent":Z
    if-eqz v0, :cond_0

    .line 3335
    const-string v3, "status_2nd"

    const/4 v5, 0x1

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3338
    .local v2, "status":I
    const/4 v1, 0x0

    .line 3339
    .local v1, "plugged":Z
    packed-switch v2, :pswitch_data_0

    .line 3346
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 3347
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mSBIsOnCharging:Z
    invoke-static {v3, v5}, Lcom/android/server/power/PowerManagerService;->access$1902(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3352
    :goto_1
    const-string v3, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<<<< BatteryReceiver >>>>> mSBIsOnCharging: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSBIsOnCharging:Z
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    .end local v0    # "isPresent":Z
    .end local v1    # "plugged":Z
    .end local v2    # "status":I
    :cond_0
    monitor-exit v4

    .line 3357
    return-void

    .line 3342
    .restart local v0    # "isPresent":Z
    .restart local v1    # "plugged":Z
    .restart local v2    # "status":I
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3349
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mSBIsOnCharging:Z
    invoke-static {v3, v5}, Lcom/android/server/power/PowerManagerService;->access$1902(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_1

    .line 3356
    .end local v0    # "isPresent":Z
    .end local v1    # "plugged":Z
    .end local v2    # "status":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3339
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
