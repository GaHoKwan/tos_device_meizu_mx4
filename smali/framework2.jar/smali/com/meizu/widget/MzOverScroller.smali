.class public Lcom/meizu/widget/MzOverScroller;
.super Ljava/lang/Object;
.source "MzOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I = 0x0

.field private static sViscousFluidNormalize:F = 0.0f

.field private static sViscousFluidScale:F = 0.0f

.field private static final tag:Ljava/lang/String; = "MzOverScroller"


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastUpdateTime:J

.field private mMode:I

.field private mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

.field private mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 467
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/meizu/widget/MzOverScroller;->sViscousFluidScale:F

    .line 469
    sput v1, Lcom/meizu/widget/MzOverScroller;->sViscousFluidNormalize:F

    .line 470
    invoke-static {v1}, Lcom/meizu/widget/MzOverScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lcom/meizu/widget/MzOverScroller;->sViscousFluidNormalize:F

    .line 472
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/MzOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const v0, 0x3e23d70a    # 0.16f

    .line 68
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/meizu/widget/MzOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/MzOverScroller;->mLastUpdateTime:J

    .line 84
    iput-object p2, p0, Lcom/meizu/widget/MzOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-direct {v0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    .line 86
    new-instance v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-direct {v0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    .line 87
    invoke-static {p1}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->initializeFromContext(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p3}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->setBounceCoefficient(F)V

    .line 90
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p4}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->setBounceCoefficient(F)V

    .line 91
    return-void
.end method

.method static viscousFluid(F)F
    .locals 4
    .param p0, "x"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 476
    sget v1, Lcom/meizu/widget/MzOverScroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 477
    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    .line 478
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 484
    :goto_0
    sget v1, Lcom/meizu/widget/MzOverScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 485
    return p0

    .line 480
    :cond_0
    const v0, 0x3ebc5ab2

    .line 481
    .local v0, "start":F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 482
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->finish()V

    .line 497
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->finish()V

    .line 498
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/meizu/widget/MzOverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    const/4 v6, 0x0

    .line 303
    :goto_0
    return v6

    .line 260
    :cond_0
    iget v6, p0, Lcom/meizu/widget/MzOverScroller;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 303
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 262
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 265
    .local v4, "time":J
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget-wide v6, v6, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v1, v4, v6

    .line 266
    .local v1, "elapsedTime":J
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v0, v6, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    .line 267
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 268
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 270
    .local v3, "q":F
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 271
    invoke-static {v3}, Lcom/meizu/widget/MzOverScroller;->viscousFluid(F)F

    move-result v3

    .line 275
    :goto_2
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v6, v3}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->updateScroll(F)V

    .line 276
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v6, v3}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 273
    :cond_2
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 278
    .end local v3    # "q":F
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/widget/MzOverScroller;->abortAnimation()V

    goto :goto_1

    .line 283
    .end local v0    # "duration":I
    .end local v1    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget-boolean v6, v6, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v6, :cond_4

    .line 284
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    # invokes: Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->update()Z
    invoke-static {v6}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->access$000(Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 285
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 286
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->finish()V

    .line 291
    :cond_4
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget-boolean v6, v6, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v6, :cond_1

    .line 292
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    # invokes: Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->update()Z
    invoke-static {v6}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->access$000(Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 293
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 294
    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->finish()V

    .line 297
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/meizu/widget/MzOverScroller;->mLastUpdateTime:J

    goto :goto_1

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .param p1, "extend"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->extendDuration(I)V

    .line 214
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->extendDuration(I)V

    .line 215
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 369
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/meizu/widget/MzOverScroller;->fling(IIIIIIIIII)V

    .line 370
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 401
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/widget/MzOverScroller;->mMode:I

    .line 402
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->fling(IIIII)V

    .line 403
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->fling(IIIII)V

    .line 404
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget-object v1, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iput-boolean p1, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    iput-boolean p1, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    .line 117
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v1, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget-object v2, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v2, v2, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    mul-float v0, v1, v2

    .line 145
    .local v0, "squaredNorm":F
    iget-object v1, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v1, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget-object v2, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v2, v2, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrVelocity:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 146
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mCurrentPosition:I

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    iget-object v1, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v1, v1, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinal:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/meizu/widget/MzOverScroller;->mMode:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStart:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverScrolled()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    # getter for: Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I
    invoke-static {v0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->access$100(Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget-boolean v0, v0, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    # getter for: Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mState:I
    invoke-static {v0}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->access$100(Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 420
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/widget/MzOverScroller;->mMode:I

    .line 421
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->notifyEdgeReached(III)V

    .line 422
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 438
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/widget/MzOverScroller;->mMode:I

    .line 439
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->notifyEdgeReached(III)V

    .line 440
    return-void
.end method

.method public setEnabledGravityDeceleration(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 518
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->setEnabledGravityDeceleration(Z)V

    .line 519
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->setEnabledGravityDeceleration(Z)V

    .line 520
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->setFinalPosition(I)V

    .line 232
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->setFinalPosition(I)V

    .line 249
    return-void
.end method

.method public final setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .prologue
    .line 95
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    .line 359
    iput v2, p0, Lcom/meizu/widget/MzOverScroller;->mMode:I

    .line 362
    iget-object v3, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->springback(III)Z

    move-result v0

    .line 363
    .local v0, "spingbackX":Z
    iget-object v3, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->springback(III)Z

    move-result v1

    .line 364
    .local v1, "spingbackY":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 323
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/MzOverScroller;->startScroll(IIIII)V

    .line 324
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/MzOverScroller;->mMode:I

    .line 341
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->startScroll(III)V

    .line 342
    iget-object v0, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->startScroll(III)V

    .line 343
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 508
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 509
    .local v2, "time":J
    iget-object v4, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerX:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget-wide v4, v4, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    iget-object v6, p0, Lcom/meizu/widget/MzOverScroller;->mScrollerY:Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;

    iget-wide v6, v6, Lcom/meizu/widget/MzOverScroller$MagneticOverScroller;->mStartTime:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 510
    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
