.class public Lcom/meizu/widget/OverScrollerExt;
.super Ljava/lang/Object;
.source "OverScrollerExt.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "zhangxin@SDK.OverScrollerExt.Feature Be modified based on the native OverScroller and used by absListView"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

.field private final mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lcom/meizu/widget/OverScrollerExt;->sViscousFluidScale:F

    .line 53
    sput v1, Lcom/meizu/widget/OverScrollerExt;->sViscousFluidNormalize:F

    .line 54
    invoke-static {v1}, Lcom/meizu/widget/OverScrollerExt;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lcom/meizu/widget/OverScrollerExt;->sViscousFluidNormalize:F

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/OverScrollerExt;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/OverScrollerExt;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/OverScrollerExt;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p5}, Lcom/meizu/widget/OverScrollerExt;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/meizu/widget/OverScrollerExt;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 87
    iput-boolean p3, p0, Lcom/meizu/widget/OverScrollerExt;->mFlywheel:Z

    .line 88
    new-instance v0, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-direct {v0, p1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    .line 89
    new-instance v0, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-direct {v0, p1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    .line 90
    return-void
.end method

.method static viscousFluid(F)F
    .locals 4
    .param p0, "x"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1170
    sget v1, Lcom/meizu/widget/OverScrollerExt;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 1171
    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    .line 1172
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 1178
    :goto_0
    sget v1, Lcom/meizu/widget/OverScrollerExt;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 1179
    return p0

    .line 1174
    :cond_0
    const v0, 0x3ebc5ab2

    .line 1175
    .local v0, "start":F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 1176
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->finish()V

    .line 530
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->finish()V

    .line 531
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/meizu/widget/OverScrollerExt;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 309
    const/4 v6, 0x0

    .line 356
    :goto_0
    return v6

    .line 312
    :cond_0
    iget v6, p0, Lcom/meizu/widget/OverScrollerExt;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 356
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 314
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 317
    .local v4, "time":J
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$600(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 319
    .local v1, "elapsedTime":J
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$500(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v0

    .line 320
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 321
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 323
    .local v3, "q":F
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 324
    invoke-static {v3}, Lcom/meizu/widget/OverScrollerExt;->viscousFluid(F)F

    move-result v3

    .line 329
    :goto_2
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->updateScroll(F)V

    .line 330
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 326
    :cond_2
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 332
    .end local v3    # "q":F
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/widget/OverScrollerExt;->abortAnimation()V

    goto :goto_1

    .line 337
    .end local v0    # "duration":I
    .end local v1    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$000(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 338
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 339
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 340
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->finish()V

    .line 345
    :cond_4
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$000(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 346
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 347
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 348
    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->finish()V

    goto :goto_1

    .line 312
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->extendDuration(I)V

    .line 264
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->extendDuration(I)V

    .line 265
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
    .line 419
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

    invoke-virtual/range {v0 .. v10}, Lcom/meizu/widget/OverScrollerExt;->fling(IIIIIIIIII)V

    .line 420
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
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
    .line 452
    iget-boolean v0, p0, Lcom/meizu/widget/OverScrollerExt;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/OverScrollerExt;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$200(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)F

    move-result v6

    .line 454
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$200(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)F

    move-result v7

    .line 455
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 457
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 458
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 462
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/widget/OverScrollerExt;->mMode:I

    .line 463
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->fling(IIIII)V

    .line 464
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->fling(IIIII)V

    .line 465
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2
    .param p1, "finished"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    iget-object v1, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # setter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$002(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;Z)Z

    move-result v1

    # setter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$002(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;Z)Z

    .line 166
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$200(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$200(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 193
    .local v0, "squaredNorm":F
    iget-object v1, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$200(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$200(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 194
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$100(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$100(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$500(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$500(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$400(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$400(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$300(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$300(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$000(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$000(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)Z

    move-result v0

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
    .line 515
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$000(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$700(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$000(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$700(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

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

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 550
    iget-object v2, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$400(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$300(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 551
    .local v0, "dx":I
    iget-object v2, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$400(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$300(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 552
    .local v1, "dy":I
    invoke-virtual {p0}, Lcom/meizu/widget/OverScrollerExt;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->notifyEdgeReached(III)V

    .line 482
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->notifyEdgeReached(III)V

    .line 499
    return-void
.end method

.method public setEnableMZOverScroll(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "smoothFling"    # Z

    .prologue
    .line 562
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->setEnableMZOverScroll(ZZ)V

    .line 563
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->setEnableMZOverScroll(ZZ)V

    .line 564
    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->setFinalPosition(I)V

    .line 283
    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->setFinalPosition(I)V

    .line 301
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 142
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->setFriction(F)V

    .line 143
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->setFriction(F)V

    .line 144
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/meizu/widget/OverScrollerExt;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 132
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

    .line 409
    iput v2, p0, Lcom/meizu/widget/OverScrollerExt;->mMode:I

    .line 412
    iget-object v3, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 413
    .local v0, "spingbackX":Z
    iget-object v3, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 414
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
    .line 374
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/OverScrollerExt;->startScroll(IIIII)V

    .line 375
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
    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/OverScrollerExt;->mMode:I

    .line 392
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->startScroll(III)V

    .line 393
    iget-object v0, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->startScroll(III)V

    .line 394
    return-void
.end method

.method public timePassed()I
    .locals 8

    .prologue
    .line 541
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 542
    .local v2, "time":J
    iget-object v4, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerX:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$600(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/meizu/widget/OverScrollerExt;->mScrollerY:Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;

    # getter for: Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;->access$600(Lcom/meizu/widget/OverScrollerExt$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 543
    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
