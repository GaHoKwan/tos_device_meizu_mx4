.class Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->initAnimatorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)V
    .locals 0

    .prologue
    .line 2669
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(II)V
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "target"    # I

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3700(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2674
    :try_start_0
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnAnimatorListener: onAnimationStart brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3800(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLastTargetBrightness:I
    invoke-static {v0, p2}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4002(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I

    .line 2677
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mStartingBrightness:I
    invoke-static {v0, p1}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4102(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I

    .line 2678
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I
    invoke-static {v0, p1}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4202(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I

    .line 2679
    monitor-exit v1

    .line 2680
    return-void

    .line 2679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimatorBrightnessChanged(I)V
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3700(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2696
    :try_start_0
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnAnimatorListener: onAnimatorBrightnessChanged brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3800(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWakeUpRequest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v3, v3, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I
    invoke-static {v0, p1}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4202(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I

    .line 2699
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3800(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mRampMode:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3400(Lcom/android/server/power/DisplayPowerController;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 2701
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;->onAnimationChanged(I)V

    .line 2703
    :cond_3
    monitor-exit v1

    .line 2704
    return-void

    .line 2703
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimatorFinished(I)V
    .locals 6
    .param p1, "brightness"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 2737
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3700(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2738
    :try_start_0
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnAnimatorListener: onAnimatorFinished brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3800(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsWantsScreenOn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsWantsScreenOn:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4600(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWakeUpRequest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v3, v3, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsWantsScreenOn:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4600(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2743
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3100(Lcom/android/server/power/DisplayPowerController;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerRequest;

    move-result-object v0

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v0, v4, :cond_1

    .line 2747
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    const/4 v2, 0x2

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I
    invoke-static {v0, v2}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3902(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I

    .line 2748
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;->onScreenDimEnd(I)V

    .line 2750
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V
    invoke-static {v0, v2}, Lcom/android/server/power/DisplayPowerController;->access$4700(Lcom/android/server/power/DisplayPowerController;Z)V

    .line 2752
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mRampMode:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3400(Lcom/android/server/power/DisplayPowerController;)I

    move-result v0

    if-eq v0, v4, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mRampMode:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3400(Lcom/android/server/power/DisplayPowerController;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2755
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2756
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;->onScreenBrighten(I)V

    .line 2759
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I
    invoke-static {v2, p1}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4202(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I

    move-result v2

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mStartingBrightness:I
    invoke-static {v0, v2}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4102(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I

    .line 2760
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;->onBrightnessChanged(I)V

    .line 2765
    :cond_5
    :goto_0
    monitor-exit v1

    .line 2766
    return-void

    .line 2763
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # invokes: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->goToSleep()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$1000(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)V

    goto :goto_0

    .line 2765
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimatorReachedThreshold(I)V
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3700(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2686
    :try_start_0
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnAnimatorListener: onAnimatorReachedThreshold brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3800(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsReachThreshold:Z
    invoke-static {v0, v2}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4302(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;Z)Z

    .line 2689
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mRampAnimatorController:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$1800(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mTargetBrightness:I
    invoke-static {v2}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4400(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mRate:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4500(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I
    invoke-static {v4}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3800(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->animateScreenBrightness(III)Z

    .line 2690
    monitor-exit v1

    .line 2691
    return-void

    .line 2690
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimatorStopped(I)V
    .locals 6
    .param p1, "brightness"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 2709
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3700(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2710
    :try_start_0
    # getter for: Lcom/android/server/power/DisplayPowerController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PowerManagerDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnAnimatorListener: onAnimatorStopped brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mMode:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3800(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsWantsScreenOn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsWantsScreenOn:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4600(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screenState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mWakeUpRequest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v3, v3, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mIsWantsScreenOn:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4600(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2715
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # getter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3900(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mScreenBrightnessDimConfig:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3100(Lcom/android/server/power/DisplayPowerController;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mPowerRequest:Lcom/android/server/power/DisplayPowerRequest;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3200(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerRequest;

    move-result-object v0

    iget v0, v0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v0, v4, :cond_1

    .line 2719
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    const/4 v2, 0x2

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mOldScreenState:I
    invoke-static {v0, v2}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$3902(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I

    .line 2720
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;->onScreenDimEnd(I)V

    .line 2722
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V
    invoke-static {v0, v2}, Lcom/android/server/power/DisplayPowerController;->access$4700(Lcom/android/server/power/DisplayPowerController;Z)V

    .line 2724
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mRampMode:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3400(Lcom/android/server/power/DisplayPowerController;)I

    move-result v0

    if-eq v0, v4, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mRampMode:I
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3400(Lcom/android/server/power/DisplayPowerController;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mWakeUpRequest:Z
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3300(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2726
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v2, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mCurBrightness:I
    invoke-static {v2, p1}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4202(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I

    move-result v2

    # setter for: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->mStartingBrightness:I
    invoke-static {v0, v2}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$4102(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;I)I

    .line 2727
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    iget-object v0, v0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->this$0:Lcom/android/server/power/DisplayPowerController;

    # getter for: Lcom/android/server/power/DisplayPowerController;->mLuxListener:Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$3500(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/power/DisplayPowerController$OnLuxChangedListener;->onBrightnessChanged(I)V

    .line 2732
    :cond_4
    :goto_0
    monitor-exit v1

    .line 2733
    return-void

    .line 2730
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$RampAnimatorController$1;->this$1:Lcom/android/server/power/DisplayPowerController$RampAnimatorController;

    # invokes: Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->goToSleep()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController$RampAnimatorController;->access$1000(Lcom/android/server/power/DisplayPowerController$RampAnimatorController;)V

    goto :goto_0

    .line 2732
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
