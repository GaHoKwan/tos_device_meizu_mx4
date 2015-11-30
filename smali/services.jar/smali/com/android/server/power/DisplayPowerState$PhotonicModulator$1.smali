.class Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState$PhotonicModulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0xbb9

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 433
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 434
    const-string v7, "PowerManagerDisplayState"

    const-string v8, "on mTask"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1600(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 444
    :try_start_0
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingOn:Z
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1700(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v3

    .line 445
    .local v3, "on":Z
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v8

    if-eq v3, v8, :cond_2

    move v4, v5

    .line 446
    .local v4, "onChanged":Z
    :goto_1
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1900(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v0

    .line 447
    .local v0, "backlight":I
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v8}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2000(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v8

    if-eq v0, v8, :cond_3

    move v1, v5

    .line 448
    .local v1, "backlightChanged":Z
    :goto_2
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 449
    const-string v8, "PowerManagerDisplayState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mTask: on = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mActualOn = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1800(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", backlight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mActualBacklight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v10}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2000(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1
    if-nez v4, :cond_4

    if-nez v1, :cond_4

    .line 453
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mChangeInProgress:Z
    invoke-static {v5, v6}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2102(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 454
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v5, v5, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # invokes: Lcom/android/server/power/DisplayPowerState;->postScreenUpdateThreadSafe()V
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerState;->access$2400(Lcom/android/server/power/DisplayPowerState;)V

    .line 508
    return-void

    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v4    # "onChanged":Z
    :cond_2
    move v4, v6

    .line 445
    goto :goto_1

    .restart local v0    # "backlight":I
    .restart local v4    # "onChanged":Z
    :cond_3
    move v1, v6

    .line 447
    goto :goto_2

    .line 456
    .restart local v1    # "backlightChanged":Z
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualOn:Z
    invoke-static {v8, v3}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$1802(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;Z)Z

    .line 457
    iget-object v8, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    # setter for: Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    invoke-static {v8, v0}, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->access$2002(Lcom/android/server/power/DisplayPowerState$PhotonicModulator;I)I

    .line 458
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    # getter for: Lcom/android/server/power/DisplayPowerState;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerState;->access$100()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 461
    const-string v7, "PowerManagerDisplayState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mTask: on = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", onChanged = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", backlightChanged = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", backlight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 466
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$2200(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/power/DisplayBlanker;->unblankAllDisplays()V

    .line 469
    :cond_6
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mShutDownFlag:Z
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$200(Lcom/android/server/power/DisplayPowerState;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 471
    :try_start_2
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDelay:I
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$300(Lcom/android/server/power/DisplayPowerState;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 475
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 481
    const-string v7, "Meizu"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 483
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$2300(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/LightsService$Light;->setColor(I)V

    .line 490
    :goto_4
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$2200(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/power/DisplayBlanker;->setBlNotify()V

    .line 492
    if-eqz v3, :cond_8

    .line 493
    invoke-static {}, Landroid/os/MessageMonitorLogger;->getMsgLoggerHandler()Landroid/os/Handler;

    move-result-object v2

    .line 494
    .local v2, "monitorHandler":Landroid/os/Handler;
    if-eqz v2, :cond_8

    invoke-virtual {v2, v11, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 495
    invoke-virtual {v2, v11, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 496
    const-string v7, "ScreenOnMonitor"

    const-string v8, "Screen on normal!!, remove the screen on monitor message"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v2    # "monitorHandler":Landroid/os/Handler;
    :cond_8
    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    .line 502
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mDisplayBlanker:Lcom/android/server/power/DisplayBlanker;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$2200(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/power/DisplayBlanker;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/power/DisplayBlanker;->blankAllDisplays()V

    goto/16 :goto_0

    .line 458
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v3    # "on":Z
    .end local v4    # "onChanged":Z
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 485
    .restart local v0    # "backlight":I
    .restart local v1    # "backlightChanged":Z
    .restart local v3    # "on":Z
    .restart local v4    # "onChanged":Z
    :cond_9
    const-string v7, "PowerManagerDisplayState"

    const-string v8, "mTask: not Meizu"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v7, p0, Lcom/android/server/power/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/power/DisplayPowerState$PhotonicModulator;

    iget-object v7, v7, Lcom/android/server/power/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/power/DisplayPowerState;

    # getter for: Lcom/android/server/power/DisplayPowerState;->mBacklight:Lcom/android/server/LightsService$Light;
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerState;->access$2300(Lcom/android/server/power/DisplayPowerState;)Lcom/android/server/LightsService$Light;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_4

    .line 472
    :catch_0
    move-exception v7

    goto :goto_3
.end method
