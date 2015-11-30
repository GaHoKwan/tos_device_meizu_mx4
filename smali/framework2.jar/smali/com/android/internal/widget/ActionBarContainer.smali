.class public Lcom/android/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# instance fields
.field protected mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

.field protected mActionBarView:Lcom/android/internal/widget/ActionBarView;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBlurOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mBlurOnDrawListener "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mBlurOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mBlurOnGlobalLayoutListener "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mIsSplit:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_ACCESS:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. change access protected "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsStacked:Z

.field private mIsTransitioning:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mStatusBarHeight:I

.field protected mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_ACCESS:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. change access protected"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mTabFlagDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mTabFlagDrawable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mViewTreeObserver "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mVisibleRect:Landroid/graphics/Rect;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mVisibleRect "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;

    .line 98
    new-instance v3, Lcom/android/internal/widget/ActionBarContainer$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ActionBarContainer$1;-><init>(Lcom/android/internal/widget/ActionBarContainer;)V

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBlurOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 112
    new-instance v3, Lcom/android/internal/widget/ActionBarContainer$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ActionBarContainer$2;-><init>(Lcom/android/internal/widget/ActionBarContainer;)V

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBlurOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 130
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 135
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getId()I

    move-result v3

    const v4, 0x10203b0

    if-ne v3, v4, :cond_0

    .line 139
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    .line 140
    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 143
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStatusBarHeight:I

    .line 150
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 152
    return-void

    :cond_2
    move v1, v2

    .line 150
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarContainer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add isBlurDrawable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 574
    if-eqz p1, :cond_2

    .line 575
    instance-of v2, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_1

    .line 576
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    if-ge v0, v2, :cond_2

    move-object v2, p1

    .line 577
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 578
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 586
    .end local v0    # "i":I
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :goto_1
    return v2

    .line 576
    .restart local v0    # "i":I
    .restart local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    .end local v0    # "i":I
    .end local v1    # "layer":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.meizu.common.drawble.BlurDrawable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 583
    goto :goto_1

    .line 586
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 275
    :cond_2
    return-void
.end method

.method protected getSplitBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add getSplitBackground"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 280
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 289
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add onAttachedToWindow"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 521
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 522
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 523
    .local v0, "hasBlurDrawable":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->registerViewTreeObserver(Z)V

    .line 524
    return-void

    .line 522
    .end local v0    # "hasBlurDrawable":Z
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add onDetachedFromWindow"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 532
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->registerViewTreeObserver(Z)V

    .line 534
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to draw mTabFlagDrawable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mRight:I

    iget v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBottom:I

    iget v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 389
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 157
    const v0, 0x10203ae

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 160
    const v0, 0x10203af

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 162
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to get mTabFlagDrawable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 435
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 437
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    const/4 v1, 0x1

    .line 439
    .local v1, "hasTabs":Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    .line 441
    .local v0, "containerHeight":I
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v3

    .line 442
    .local v3, "tabHeight":I
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    sub-int v6, v0, v3

    invoke-virtual {v5, p2, v6, p4, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->layout(IIII)V

    .line 445
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    .line 446
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->getTabFlagDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    .line 453
    .end local v0    # "containerHeight":I
    .end local v3    # "tabHeight":I
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .line 454
    .local v2, "needsInvalidate":Z
    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v5, :cond_5

    .line 455
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 456
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    const/4 v2, 0x1

    .line 488
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 491
    :cond_2
    return-void

    .line 437
    .end local v1    # "hasTabs":Z
    .end local v2    # "needsInvalidate":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 447
    .restart local v1    # "hasTabs":Z
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    iget-boolean v5, v5, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    if-nez v5, :cond_0

    .line 448
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    .line 449
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->getTabFlagDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 460
    .restart local v2    # "needsInvalidate":Z
    :cond_5
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    .line 466
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 467
    .local v4, "tempView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->isInActionMode()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    .line 468
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v5, :cond_9

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 470
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 473
    const/4 v2, 0x1

    .line 475
    .end local v4    # "tempView":Landroid/view/View;
    :cond_7
    if-eqz v1, :cond_a

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v5, :cond_8

    .line 476
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ScrollingTabContainerView;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v9}, Lcom/android/internal/widget/ScrollingTabContainerView;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 478
    const/4 v2, 0x1

    .line 482
    :cond_8
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 483
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 468
    .restart local v4    # "tempView":Landroid/view/View;
    :cond_9
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_3

    .line 475
    .end local v4    # "tempView":Landroid/view/View;
    :cond_a
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 404
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 406
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    if-nez v4, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 409
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    .line 412
    .local v0, "actionBarViewHeight":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 413
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 414
    .local v3, "mode":I
    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 415
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 421
    .local v2, "maxHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V

    goto :goto_0

    .line 409
    .end local v0    # "actionBarViewHeight":I
    .end local v2    # "maxHeight":I
    .end local v3    # "mode":I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v0, v4, v5

    goto :goto_1
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onResolveDrawables(I)V

    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 306
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public registerViewTreeObserver(Z)V
    .locals 2
    .param p1, "register"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add registerViewTreeObserver"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 545
    if-eqz p1, :cond_2

    .line 546
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBlurOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBlurOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBlurOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBlurOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBlurOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 557
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBlurOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 559
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0
.end method

.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 165
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 166
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 167
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 170
    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 172
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    if-eqz v4, :cond_2

    .line 178
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 179
    .local v1, "tempView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->isInActionMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 180
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v4, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 182
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    .end local v1    # "tempView":Landroid/view/View;
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 192
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 193
    .local v0, "hasBlurDrawable":Z
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->registerViewTreeObserver(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 197
    return-void

    .line 180
    .end local v0    # "hasBlurDrawable":Z
    .restart local v1    # "tempView":Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mActionBarContextView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_0

    .end local v1    # "tempView":Landroid/view/View;
    :cond_5
    move v2, v3

    .line 187
    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    :cond_7
    move v2, v3

    goto :goto_1
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 227
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 230
    if-eqz p1, :cond_1

    .line 231
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 232
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 242
    .local v0, "hasBlurDrawable":Z
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->registerViewTreeObserver(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 246
    return-void

    .end local v0    # "hasBlurDrawable":Z
    :cond_3
    move v1, v2

    .line 236
    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 202
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 205
    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 207
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->isBlurDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 218
    .local v0, "hasBlurDrawable":Z
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->registerViewTreeObserver(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContainer;->invalidate()V

    .line 222
    return-void

    .end local v0    # "hasBlurDrawable":Z
    :cond_3
    move v1, v2

    .line 212
    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 2
    .param p1, "tabView"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 347
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 348
    if-eqz p1, :cond_1

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 350
    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 351
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 352
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 353
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 355
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public setTransitioning(Z)V
    .locals 1
    .param p1, "isTransitioning"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsTransitioning:Z

    .line 318
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setDescendantFocusability(I)V

    .line 320
    return-void

    .line 318
    :cond_0
    const/high16 v0, 0x40000

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 251
    if-nez p1, :cond_3

    const/4 v0, 0x1

    .line 252
    .local v0, "isVisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 255
    :cond_2
    return-void

    .end local v0    # "isVisible":Z
    :cond_3
    move v0, v1

    .line 251
    goto :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
