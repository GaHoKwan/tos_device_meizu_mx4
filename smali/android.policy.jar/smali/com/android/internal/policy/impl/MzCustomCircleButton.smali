.class public Lcom/android/internal/policy/impl/MzCustomCircleButton;
.super Landroid/widget/TextView;
.source "MzCustomCircleButton.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "custom circle button, and only event in circle can target the view"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation


# instance fields
.field private mCircleCenterX:F

.field private mCircleCenterY:F

.field private mCoverAlpha:I

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mCustomColor:I

.field private mPaint:Landroid/graphics/Paint;

.field mPressAnimtor:Landroid/animation/ObjectAnimator;

.field private mPressed:Z

.field private mRadius:F

.field private mText:Ljava/lang/String;

.field private mTextHeight:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v3, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCustomColor:I

    .line 29
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressed:Z

    .line 33
    iput v3, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverAlpha:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCustomColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    const-string v0, "coveralpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverAlpha:I

    int-to-float v2, v2

    aput v2, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 53
    return-void
.end method

.method private inCircleArea(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 118
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 119
    .local v2, "y":F
    iget v3, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCircleCenterY:F

    sub-float/2addr v3, v2

    float-to-double v3, v3

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v5, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCircleCenterY:F

    sub-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    iget v5, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mRadius:F

    float-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCoverAlpha()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverAlpha:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCircleCenterX:F

    iget v1, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCircleCenterY:F

    iget v2, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mRadius:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    iget v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverAlpha:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverAlpha:I

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 80
    iget v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCircleCenterX:F

    iget v1, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCircleCenterY:F

    iget v2, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mRadius:F

    iget-object v3, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 87
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCircleCenterX:F

    iput v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mRadius:F

    .line 88
    sub-int v0, p5, p3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCircleCenterY:F

    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v1

    .line 109
    :goto_1
    return v0

    .line 97
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->inCircleArea(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setStatePressed(Z)V

    goto :goto_1

    .line 104
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setStatePressed(Z)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCoverAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverAlpha:I

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->postInvalidate()V

    .line 142
    return-void
.end method

.method public setCustomColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCustomColor:I

    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCustomColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->postInvalidate()V

    .line 59
    return-void
.end method

.method public setStatePressed(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressed:Z

    if-eq p1, v0, :cond_1

    .line 124
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressed:Z

    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 128
    :cond_0
    if-eqz p1, :cond_2

    .line 129
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->setCoverAlpha(I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MzCustomCircleButton;->postInvalidate()V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    const-string v0, "coverAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mCoverAlpha:I

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzCustomCircleButton;->mPressAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
