.class Lcom/android/server/power/RampAnimator$2;
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
    .line 341
    .local p0, "this":Lcom/android/server/power/RampAnimator$2;, "Lcom/android/server/power/RampAnimator.2;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 344
    .local p0, "this":Lcom/android/server/power/RampAnimator$2;, "Lcom/android/server/power/RampAnimator.2;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1500(Lcom/android/server/power/RampAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " start time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimatingCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatingCount:I
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$1200(Lcom/android/server/power/RampAnimator;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1700(Lcom/android/server/power/RampAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 348
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/power/RampAnimator;->getCurrentValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$2;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-virtual {v2}, Lcom/android/server/power/RampAnimator;->getTargetValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;->onAnimationStart(II)V

    .line 349
    return-void
.end method
