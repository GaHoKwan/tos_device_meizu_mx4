.class Lcom/android/server/power/RampAnimator$1;
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
    .line 126
    .local p0, "this":Lcom/android/server/power/RampAnimator$1;, "Lcom/android/server/power/RampAnimator.1;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .local p0, "this":Lcom/android/server/power/RampAnimator$1;, "Lcom/android/server/power/RampAnimator.1;"
    const/4 v10, 0x0

    .line 129
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    .line 130
    .local v1, "frameTimeNanos":J
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$100(Lcom/android/server/power/RampAnimator;)J

    move-result-wide v6

    sub-long v6, v1, v6

    long-to-float v6, v6

    const v7, 0x3089705f    # 1.0E-9f

    mul-float v5, v6, v7

    .line 132
    .local v5, "timeDelta":F
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # setter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v6, v1, v2}, Lcom/android/server/power/RampAnimator;->access$102(Lcom/android/server/power/RampAnimator;J)J

    .line 138
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    .line 139
    .local v4, "scale":F
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-nez v6, :cond_1

    .line 141
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    .line 152
    :goto_0
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v3

    .line 153
    .local v3, "oldCurrentValue":I
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    # setter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$502(Lcom/android/server/power/RampAnimator;I)I

    .line 156
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    if-eq v3, v6, :cond_0

    .line 157
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 162
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;->onAnimatorBrightnessChanged(I)V

    .line 166
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$900(Lcom/android/server/power/RampAnimator;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 172
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # invokes: Lcom/android/server/power/RampAnimator;->postCallback()V
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$1000(Lcom/android/server/power/RampAnimator;)V

    .line 193
    :goto_1
    return-void

    .line 143
    .end local v3    # "oldCurrentValue":I
    :cond_1
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    div-float v0, v6, v4

    .line 144
    .local v0, "amount":F
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    if-le v6, v7, :cond_2

    .line 145
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    add-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    goto/16 :goto_0

    .line 147
    :cond_2
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    goto/16 :goto_0

    .line 174
    .end local v0    # "amount":F
    .restart local v3    # "oldCurrentValue":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # setter for: Lcom/android/server/power/RampAnimator;->mAnimating:Z
    invoke-static {v6, v10}, Lcom/android/server/power/RampAnimator;->access$1102(Lcom/android/server/power/RampAnimator;Z)Z

    .line 178
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # operator-- for: Lcom/android/server/power/RampAnimator;->mAnimatingCount:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$1210(Lcom/android/server/power/RampAnimator;)I

    .line 179
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    const/4 v7, 0x1

    # setter for: Lcom/android/server/power/RampAnimator;->mCanInterruptable:Z
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$1302(Lcom/android/server/power/RampAnimator;Z)Z

    .line 181
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    # setter for: Lcom/android/server/power/RampAnimator;->mLastStopedTime:J
    invoke-static {v6, v7, v8}, Lcom/android/server/power/RampAnimator;->access$1402(Lcom/android/server/power/RampAnimator;J)J

    .line 182
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->DEBUG_ANIMATION:Z
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$1500(Lcom/android/server/power/RampAnimator;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "RampAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " google stop time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mLastStopedTime:J
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$1400(Lcom/android/server/power/RampAnimator;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mMode:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$1600(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAnimatingCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatingCount:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$1200(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_4
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$900(Lcom/android/server/power/RampAnimator;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 186
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;->onAnimatorStopped(I)V

    .line 190
    :goto_2
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # setter for: Lcom/android/server/power/RampAnimator;->mStopGoogleRequested:Z
    invoke-static {v6, v10}, Lcom/android/server/power/RampAnimator;->access$902(Lcom/android/server/power/RampAnimator;Z)Z

    goto/16 :goto_1

    .line 188
    :cond_5
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mAnimatorListener:Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    # getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/android/server/power/DisplayPowerController$OnAnimatorListener;->onAnimatorFinished(I)V

    goto :goto_2
.end method
