.class public Lcom/meizu/widget/GlowImageButton;
.super Landroid/widget/ImageButton;
.source "GlowImageButton.java"


# instance fields
.field private mDelegate:Lcom/meizu/widget/GlowDelegate;

.field private mGlowBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/GlowImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/GlowImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    const v2, 0x10102f6

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 26
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/GlowImageButton;->mGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    iget-object v1, p0, Lcom/meizu/widget/GlowImageButton;->mGlowBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/meizu/widget/GlowImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/widget/GlowImageButton;->mGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/widget/GlowImageButton;->initView(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Lcom/meizu/widget/GlowDelegate;

    iget-object v1, p0, Lcom/meizu/widget/GlowImageButton;->mGlowBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p1, p0, v1}, Lcom/meizu/widget/GlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/widget/GlowImageButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/GlowImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 49
    iget-object v0, p0, Lcom/meizu/widget/GlowImageButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    return-void
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/widget/GlowImageButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    return v0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/meizu/widget/GlowImageButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    return v0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/widget/GlowImageButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowScale()F

    move-result v0

    return v0
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/widget/GlowImageButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    .line 58
    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/widget/GlowImageButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowAlpha(F)V

    .line 66
    return-void
.end method

.method public setGlowScale(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/widget/GlowImageButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowScale(F)V

    .line 74
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/widget/GlowImageButton;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setPressed(Z)V

    .line 78
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 79
    return-void
.end method
