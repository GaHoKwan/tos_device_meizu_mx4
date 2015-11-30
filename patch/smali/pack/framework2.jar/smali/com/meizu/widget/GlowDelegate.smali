.class public Lcom/meizu/widget/GlowDelegate;
.super Ljava/lang/Object;
.source "GlowDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlowDelegate"


# instance fields
.field final BUTTON_QUIESCENT_ALPHA:F

.field final GLOW_MAX_SCALE_FACTOR:F

.field final GLOW_MIN_SCALE_FACTOR:F

.field private mContext:Landroid/content/Context;

.field mDrawingAlpha:F

.field mGlowAlpha:F

.field mGlowBG:Landroid/graphics/drawable/Drawable;

.field private mGlowDrawables:[I

.field private mGlowDrawablesId:[I

.field mGlowHeight:I

.field mGlowScale:F

.field mGlowWidth:I

.field private mPressed:Z

.field mPressedAnim:Landroid/animation/AnimatorSet;

.field mRect:Landroid/graphics/RectF;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegateView"    # Landroid/view/View;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/GlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegateView"    # Landroid/view/View;
    .param p3, "glowBackgrond"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x6

    const v6, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/meizu/widget/GlowDelegate;->mPressed:Z

    .line 29
    iput v4, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    iput v5, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    iput v5, p0, Lcom/meizu/widget/GlowDelegate;->mDrawingAlpha:F

    .line 30
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mRect:Landroid/graphics/RectF;

    .line 32
    iput v5, p0, Lcom/meizu/widget/GlowDelegate;->GLOW_MAX_SCALE_FACTOR:F

    .line 33
    iput v6, p0, Lcom/meizu/widget/GlowDelegate;->BUTTON_QUIESCENT_ALPHA:F

    .line 34
    const v3, 0x3f3851ec    # 0.72f

    iput v3, p0, Lcom/meizu/widget/GlowDelegate;->GLOW_MIN_SCALE_FACTOR:F

    .line 38
    new-array v3, v7, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowDrawablesId:[I

    .line 41
    new-array v3, v7, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowDrawables:[I

    .line 55
    iput-object p2, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    .line 56
    iput-object p1, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    .line 57
    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->isThemeLight()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    instance-of v3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_4

    .line 59
    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .end local p3    # "glowBackgrond":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 60
    .local v0, "color":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowDrawablesId:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowDrawablesId:[I

    aget v1, v3, v2

    .line 62
    .local v1, "glowId":I
    if-ne v1, v0, :cond_3

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mGlowDrawables:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 71
    .end local v0    # "color":I
    .end local v1    # "glowId":I
    .end local v2    # "i":I
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080547

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {p0, v6}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 77
    iget-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowWidth:I

    .line 78
    iget-object v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowHeight:I

    .line 80
    :cond_2
    return-void

    .line 60
    .restart local v0    # "color":I
    .restart local v1    # "glowId":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "color":I
    .end local v1    # "glowId":I
    .end local v2    # "i":I
    .restart local p3    # "glowBackgrond":Landroid/graphics/drawable/Drawable;
    :cond_4
    iput-object p3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 38
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0x1080548
        0x1080549
        0x108054a
        0x108054b
        0x108054c
        0x108054d
    .end array-data
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 155
    return-void
.end method


# virtual methods
.method public GlowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 89
    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 90
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowWidth:I

    .line 91
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowHeight:I

    .line 93
    :cond_0
    return-void
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/GlowDelegate;->mDrawingAlpha:F

    goto :goto_0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    goto :goto_0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    goto :goto_0
.end method

.method public invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 269
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "view":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 271
    .restart local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 272
    iget v0, p2, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/meizu/widget/GlowDelegate;->mPressed:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/GlowDelegate;->setGlowAlpha(F)V

    .line 287
    const v0, 0x3f3851ec    # 0.72f

    invoke-virtual {p0, v0}, Lcom/meizu/widget/GlowDelegate;->setGlowScale(F)V

    .line 289
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 96
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/meizu/widget/GlowDelegate;->mPressed:Z

    if-eqz v6, :cond_1

    .line 97
    :cond_0
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 100
    .local v5, "w":I
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 105
    .local v2, "h":I
    iget v1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowWidth:I

    .line 106
    .local v1, "drawW":I
    iget v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowHeight:I

    .line 107
    .local v0, "drawH":I
    sub-int v6, v1, v5

    div-int/lit8 v4, v6, 0x2

    .line 108
    .local v4, "marginWidth":I
    sub-int v6, v0, v2

    div-int/lit8 v3, v6, 0x2

    .line 114
    .local v3, "marginHeight":I
    iget v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    iget v7, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    int-to-float v8, v5

    mul-float/2addr v8, v10

    int-to-float v9, v2

    mul-float/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 118
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    neg-int v7, v4

    neg-int v8, v3

    sub-int v9, v1, v4

    sub-int v10, v0, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/meizu/widget/GlowDelegate;->mDrawingAlpha:F

    iget v8, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 120
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v5

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 123
    iget-object v6, p0, Lcom/meizu/widget/GlowDelegate;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v2

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 126
    .end local v0    # "drawH":I
    .end local v1    # "drawW":I
    .end local v2    # "h":I
    .end local v3    # "marginHeight":I
    .end local v4    # "marginWidth":I
    .end local v5    # "w":I
    :cond_1
    return-void
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 134
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iput p1, p0, Lcom/meizu/widget/GlowDelegate;->mDrawingAlpha:F

    goto :goto_0
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 148
    iget-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iput p1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    .line 150
    invoke-direct {p0}, Lcom/meizu/widget/GlowDelegate;->invalidate()V

    goto :goto_0
.end method

.method public setGlowScale(F)V
    .locals 8
    .param p1, "x"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 163
    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iput p1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    .line 165
    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 166
    .local v3, "w":F
    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 187
    .local v0, "h":F
    iget v4, p0, Lcom/meizu/widget/GlowDelegate;->mGlowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v4, v3

    div-float/2addr v4, v7

    add-float v1, v4, v6

    .line 188
    .local v1, "rx":F
    iget v4, p0, Lcom/meizu/widget/GlowDelegate;->mGlowHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v4, v0

    div-float/2addr v4, v7

    add-float v2, v4, v6

    .line 198
    .local v2, "ry":F
    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 199
    iget-object v4, p0, Lcom/meizu/widget/GlowDelegate;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 7
    .param p1, "pressed"    # Z

    .prologue
    const v3, 0x3f333333    # 0.7f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 204
    iget-object v1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/meizu/widget/GlowDelegate;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 209
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/GlowDelegate;->mPressedAnim:Landroid/animation/AnimatorSet;

    .line 210
    .local v0, "as":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_4

    .line 211
    iget v1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 212
    iput v2, p0, Lcom/meizu/widget/GlowDelegate;->mGlowScale:F

    .line 213
    :cond_1
    iget v1, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 214
    iput v3, p0, Lcom/meizu/widget/GlowDelegate;->mGlowAlpha:F

    .line 216
    :cond_2
    invoke-virtual {p0, v2}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 217
    invoke-virtual {p0, v2}, Lcom/meizu/widget/GlowDelegate;->setGlowScale(F)V

    .line 218
    invoke-virtual {p0, v2}, Lcom/meizu/widget/GlowDelegate;->setGlowAlpha(F)V

    .line 237
    :goto_0
    new-instance v1, Lcom/meizu/widget/GlowDelegate$1;

    invoke-direct {v1, p0}, Lcom/meizu/widget/GlowDelegate$1;-><init>(Lcom/meizu/widget/GlowDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 264
    .end local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_3
    iput-boolean p1, p0, Lcom/meizu/widget/GlowDelegate;->mPressed:Z

    .line 265
    invoke-direct {p0}, Lcom/meizu/widget/GlowDelegate;->invalidate()V

    .line 266
    return-void

    .line 229
    .restart local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 230
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    const v4, 0x3f3851ec    # 0.72f

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 235
    const-wide/16 v1, 0x1a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method
