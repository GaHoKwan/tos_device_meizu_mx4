.class Lcom/android/server/power/RampAnimator$3;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/power/RampAnimator;)V
    .locals 0

    .prologue
    .line 352
    .local p0, "this":Lcom/android/server/power/RampAnimator$3;, "Lcom/android/server/power/RampAnimator.3;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 355
    .local p0, "this":Lcom/android/server/power/RampAnimator$3;, "Lcom/android/server/power/RampAnimator.3;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    # setter for: Lcom/android/server/power/RampAnimator;->mLastStopedTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/power/RampAnimator;->access$1402(Lcom/android/server/power/RampAnimator;J)J

    .line 359
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1700(Lcom/android/server/power/RampAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 361
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/power/RampAnimator;->getCurrentValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;->onAnimatorStopped(I)V

    .line 362
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1800(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/RampAnimator;->mStopRequested:Z
    invoke-static {v0, v2}, Lcom/android/server/power/RampAnimator;->access$1902(Lcom/android/server/power/RampAnimator;Z)Z

    .line 364
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    # operator-- for: Lcom/android/server/power/RampAnimator;->mAnimatingCount:I
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1210(Lcom/android/server/power/RampAnimator;)I

    .line 365
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1500(Lcom/android/server/power/RampAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " stop time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mLastStopedTime:J
    invoke-static {v3}, Lcom/android/server/power/RampAnimator;->access$1400(Lcom/android/server/power/RampAnimator;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAnimatingCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/RampAnimator$3;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatingCount:I
    invoke-static {v3}, Lcom/android/server/power/RampAnimator;->access$1200(Lcom/android/server/power/RampAnimator;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    monitor-exit v1

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
