.class Lcom/android/server/power/RampAnimator$4;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/RampAnimator;->initAnimation(III)V
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
    .line 679
    .local p0, "this":Lcom/android/server/power/RampAnimator$4;, "Lcom/android/server/power/RampAnimator.4;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator$4;, "Lcom/android/server/power/RampAnimator.4;"
    const/4 v2, 0x2

    .line 682
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v1

    # setter for: Lcom/android/server/power/RampAnimator;->mLastValue:I
    invoke-static {v0, v1}, Lcom/android/server/power/RampAnimator;->access$2002(Lcom/android/server/power/RampAnimator;I)I

    .line 683
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # setter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v0, v1}, Lcom/android/server/power/RampAnimator;->access$502(Lcom/android/server/power/RampAnimator;I)I

    .line 685
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mLastValue:I
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$2000(Lcom/android/server/power/RampAnimator;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 686
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mMode:I
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1600(Lcom/android/server/power/RampAnimator;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 687
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1500(Lcom/android/server/power/RampAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onAnimationUpdate flip = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTargetValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;->onAnimatorBrightnessChanged(I)V

    .line 689
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # invokes: Lcom/android/server/power/RampAnimator;->isReachedThreshold()Z
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$2100(Lcom/android/server/power/RampAnimator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;->onAnimatorReachedThreshold(I)V

    .line 703
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 704
    return-void

    .line 693
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 694
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mMode:I
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1600(Lcom/android/server/power/RampAnimator;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1500(Lcom/android/server/power/RampAnimator;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "RampAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onAnimationUpdate flip equal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTargetValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v2}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v1}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;->onAnimatorFinished(I)V

    .line 697
    iget-object v0, p0, Lcom/android/server/power/RampAnimator$4;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/server/power/RampAnimator;->access$1700(Lcom/android/server/power/RampAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 698
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method
