.class public Lcom/android/internal/widget/MzActionBarContainer;
.super Lcom/android/internal/widget/ActionBarContainer;
.source "MzActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MzActionBarContainer$MatchThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MzActionBarContainer"


# instance fields
.field private mBackButton:Lcom/meizu/widget/KeyBackButton;

.field private mCellWidth:I

.field private mContentHeight:I

.field private mCustomBackButton:Z

.field private mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mEnableBackButton:Z

.field private mExpandedTouchWidth:I

.field private mExtraPadding:I

.field private mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

.field private mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mMenuView:Landroid/view/View;

.field private mOrientatinPortrait:Z

.field private mRefreshHandle:Landroid/os/Handler;

.field private mShouldDectePaddingAjustment:Z

.field private mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

.field private mUpdateBackButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mUpdateBackButton:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCustomBackButton:Z

    .line 36
    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 39
    new-instance v0, Lcom/android/internal/widget/MzActionBarContainer$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarContainer$1;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mRefreshHandle:Landroid/os/Handler;

    .line 200
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 305
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    .line 344
    iput v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContentHeight:I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->init(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mUpdateBackButton:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCustomBackButton:Z

    .line 36
    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 39
    new-instance v0, Lcom/android/internal/widget/MzActionBarContainer$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/MzActionBarContainer$1;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mRefreshHandle:Landroid/os/Handler;

    .line 200
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 305
    iput-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    .line 344
    iput v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContentHeight:I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/MzActionBarContainer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mUpdateBackButton:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/MzActionBarContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->updateBackButtonDrawable()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mRefreshHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/internal/widget/MzActionBarContainer;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzActionBarContainer;->isDarkenBackground(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/widget/MzActionBarContainer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/MzActionBarContainer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v5, 0x32

    const/4 v6, 0x0

    .line 364
    if-nez p0, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 384
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .local v2, "defaultHeight":I
    .local v3, "defaultWidth":I
    :goto_0
    return-object v0

    .line 367
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "defaultHeight":I
    .end local v3    # "defaultWidth":I
    :cond_0
    instance-of v4, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 368
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 370
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 371
    .restart local v3    # "defaultWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 372
    .restart local v2    # "defaultHeight":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    if-gtz v4, :cond_2

    .line 373
    const/16 v3, 0x32

    .line 375
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-gtz v4, :cond_3

    .line 376
    const/16 v2, 0x32

    .line 378
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 381
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 382
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v6, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 378
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method private findBackButton(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "backButton":Landroid/view/View;
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 422
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object v3, p1

    .line 423
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 424
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->findBackButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/meizu/widget/KeyBackButton;

    if-eqz v3, :cond_1

    .line 432
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-object v0

    .line 422
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_2
    instance-of v3, p1, Lcom/meizu/widget/KeyBackButton;

    if-eqz v3, :cond_0

    .line 430
    move-object v0, p1

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->matchBackground()V

    .line 59
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->updateSmartBarConfiguration()V

    .line 60
    return-void
.end method

.method private isDarkenBackground(Landroid/graphics/Bitmap;)Z
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 394
    const/4 v3, 0x1

    .line 395
    .local v3, "isDarkenBackground":Z
    const/4 v4, 0x4

    new-array v0, v4, [I

    .line 396
    .local v0, "argb":[I
    new-array v2, v6, [F

    .line 398
    .local v2, "hsv":[F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 399
    .local v1, "color":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    aput v4, v0, v9

    .line 400
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    aput v4, v0, v7

    .line 401
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    aput v4, v0, v8

    .line 402
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    aput v4, v0, v6

    .line 403
    aget v4, v0, v7

    aget v5, v0, v8

    aget v6, v0, v6

    invoke-static {v4, v5, v6, v2}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 404
    aget v4, v2, v7

    const v5, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    aget v4, v2, v8

    const v5, 0x3f4ccccd    # 0.8f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 405
    const/4 v3, 0x0

    .line 407
    :cond_0
    aget v4, v0, v9

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108075c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 410
    :cond_1
    return v3
.end method

.method private matchBackground()V
    .locals 3

    .prologue
    .line 439
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCustomBackButton:Z

    if-nez v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 441
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 442
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MzActionBarContainer$MatchThread;-><init>(Lcom/android/internal/widget/MzActionBarContainer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 445
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void
.end method

.method private removeBackButton(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 235
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 239
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setChildLayoutPosition(Landroid/view/View;I)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutPosition"    # I

    .prologue
    .line 284
    instance-of v3, p1, Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 285
    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 286
    .local v2, "overflowButton":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 287
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v3, :cond_0

    .line 288
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 289
    .local v0, "isOverflowButton":Z
    if-eqz v0, :cond_0

    .line 290
    move-object p1, v2

    .line 295
    .end local v0    # "isOverflowButton":Z
    .end local v2    # "overflowButton":Landroid/view/View;
    :cond_0
    instance-of v3, p1, Lcom/meizu/widget/LayoutPositionState;

    if-eqz v3, :cond_1

    .line 296
    check-cast p1, Lcom/meizu/widget/LayoutPositionState;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1, p2}, Lcom/meizu/widget/LayoutPositionState;->setLayoutPosition(I)V

    .line 298
    :cond_1
    return-void
.end method

.method private updateBackButtonDrawable()V
    .locals 2

    .prologue
    .line 451
    iget-boolean v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCustomBackButton:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 452
    invoke-direct {p0, p0}, Lcom/android/internal/widget/MzActionBarContainer;->findBackButton(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 453
    .local v0, "backButton":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/meizu/widget/KeyBackButton;

    if-eqz v1, :cond_0

    .line 454
    check-cast v0, Lcom/meizu/widget/KeyBackButton;

    .end local v0    # "backButton":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 457
    :cond_0
    return-void
.end method

.method private updateSmartBarConfiguration()V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    .line 308
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    .line 309
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCellWidth:I

    .line 310
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getExpandedTouchWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExpandedTouchWidth:I

    .line 312
    sget-object v0, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    .line 319
    :cond_1
    return-void
.end method

.method private updateSplitBackground()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getSplitBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :cond_2
    :goto_0
    return-void

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 267
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 268
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    .line 269
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mUpdateBackButton:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->updateBackButtonDrawable()V

    .line 355
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->onDraw(Landroid/graphics/Canvas;)V

    .line 356
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 138
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v10}, Lcom/android/internal/widget/ScrollingTabContainerView;->isShowAtBottom()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 141
    .local v6, "hasTabAtBottom":Z
    :goto_0
    if-eqz v6, :cond_2

    .line 142
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContainer;->onLayout(ZIIII)V

    .line 188
    :cond_0
    :goto_1
    return-void

    .line 138
    .end local v6    # "hasTabAtBottom":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 144
    .restart local v6    # "hasTabAtBottom":Z
    :cond_2
    const/4 v1, 0x0

    .line 145
    .local v1, "backButtonWidth":I
    sub-int v0, p5, p3

    .line 146
    .local v0, "backButtonHeight":I
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v10, :cond_3

    .line 147
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v10}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    add-int v1, v10, v11

    .line 148
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v10}, Lcom/meizu/widget/KeyBackButton;->getMeasuredHeight()I

    move-result v0

    .line 151
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ActionBarContainer;->onLayout(ZIIII)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getChildCount()I

    move-result v3

    .line 155
    .local v3, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v3, :cond_4

    .line 156
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/MzActionBarContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    add-int v4, v10, v1

    .line 158
    .local v4, "childLeft":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v10

    add-int v5, v10, v1

    .line 159
    .local v5, "childRight":I
    invoke-virtual {v2, v4}, Landroid/view/View;->setLeft(I)V

    .line 160
    invoke-virtual {v2, v5}, Landroid/view/View;->setRight(I)V

    .line 155
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 163
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childLeft":I
    .end local v5    # "childRight":I
    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v10, :cond_5

    .line 164
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget v11, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v1, v0}, Lcom/meizu/widget/KeyBackButton;->layout(IIII)V

    .line 165
    iget-boolean v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    if-eqz v10, :cond_7

    .line 166
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/MzActionBarContainer;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 170
    :goto_3
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget v11, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExpandedTouchWidth:I

    invoke-virtual {v10, v11}, Lcom/meizu/widget/KeyBackButton;->expandTouchWidth(I)V

    .line 173
    :cond_5
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 174
    iget v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    sub-int v8, p4, v10

    .line 175
    .local v8, "menuRight":I
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 176
    .local v9, "menuWidth":I
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v10, :cond_6

    .line 177
    sub-int v10, p4, p2

    add-int/2addr v10, v9

    div-int/lit8 v8, v10, 0x2

    .line 179
    :cond_6
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    sub-int v11, v8, v9

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 180
    iget-boolean v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mShouldDectePaddingAjustment:Z

    if-eqz v10, :cond_8

    .line 181
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    const/4 v11, 0x2

    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/MzActionBarContainer;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 185
    :goto_4
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    iget v11, p0, Lcom/android/internal/widget/MzActionBarContainer;->mExpandedTouchWidth:I

    invoke-virtual {v10, v11}, Landroid/view/View;->expandTouchWidth(I)V

    goto/16 :goto_1

    .line 168
    .end local v8    # "menuRight":I
    .end local v9    # "menuWidth":I
    :cond_7
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/MzActionBarContainer;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_3

    .line 183
    .restart local v8    # "menuRight":I
    .restart local v9    # "menuWidth":I
    :cond_8
    iget-object v10, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/MzActionBarContainer;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_4
.end method

.method public onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ScrollingTabContainerView;->isShowAtBottom()Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v9, 0x1

    .line 67
    .local v9, "hasTabAtBottom":Z
    :goto_0
    if-eqz v9, :cond_7

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "mz_home_key_touch_behavior"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "mz_float_touch_enable"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v8, 0x1

    .line 71
    .local v8, "disableBackButton":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mOrientatinPortrait:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    if-nez v8, :cond_5

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 74
    .end local v8    # "disableBackButton":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 77
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    .line 134
    :goto_3
    return-void

    .line 64
    .end local v9    # "hasTabAtBottom":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 69
    .restart local v9    # "hasTabAtBottom":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 71
    .restart local v8    # "disableBackButton":Z
    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    :cond_6
    const/16 v18, 0x0

    goto :goto_2

    .line 79
    .end local v8    # "disableBackButton":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mTabContainer:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 83
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 84
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mCellWidth:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 85
    .local v17, "widthSpec":I
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 86
    .local v11, "heightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lcom/meizu/widget/KeyBackButton;->measure(II)V

    .line 89
    .end local v11    # "heightSpec":I
    .end local v17    # "widthSpec":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 90
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mCellWidth:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 91
    .restart local v17    # "widthSpec":I
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 92
    .restart local v11    # "heightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/view/View;->measure(II)V

    .line 95
    .end local v11    # "heightSpec":I
    .end local v17    # "widthSpec":I
    :cond_a
    const/4 v2, 0x0

    .line 96
    .local v2, "backButtonWidth":I
    const/4 v3, 0x0

    .line 97
    .local v3, "backButtonWidthExtra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v2

    .line 99
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    move/from16 v18, v0

    add-int v3, v2, v18

    .line 102
    :cond_b
    const/4 v13, 0x0

    .line 103
    .local v13, "menuWidth":I
    const/4 v14, 0x0

    .line 104
    .local v14, "menuWidthExtra":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mExtraPadding:I

    move/from16 v18, v0

    add-int v14, v2, v18

    .line 109
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mContentHeight:I

    move/from16 v18, v0

    if-lez v18, :cond_d

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mContentHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 113
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    sub-int v18, v18, v3

    sub-int v6, v18, v14

    .line 114
    .local v6, "contentWidth":I
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 116
    .local v7, "contentWidthSpec":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super {v0, v7, v1}, Lcom/android/internal/widget/ActionBarContainer;->onMeasure(II)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 119
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 120
    .local v5, "buttonWidthSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 121
    .local v4, "buttonHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v4}, Lcom/meizu/widget/KeyBackButton;->measure(II)V

    .line 124
    .end local v4    # "buttonHeightSpec":I
    .end local v5    # "buttonWidthSpec":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 125
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 126
    .local v15, "menuWidthSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 127
    .local v12, "menuHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v12}, Landroid/view/View;->measure(II)V

    .line 130
    .end local v12    # "menuHeightSpec":I
    .end local v15    # "menuWidthSpec":I
    :cond_f
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 131
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MzActionBarContainer;->getMeasuredHeight()I

    move-result v10

    .line 132
    .local v10, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/android/internal/widget/MzActionBarContainer;->setMeasuredDimension(II)V

    goto/16 :goto_3
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->updateSmartBarConfiguration()V

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->requestLayout()V

    .line 303
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/android/internal/widget/ActionBarContainer;->requestLayout()V

    .line 193
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCustomBackButton:Z

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 281
    :cond_0
    return-void
.end method

.method public setBackButtonEnable(ZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "addBackButton"    # Z

    .prologue
    const/4 v2, -0x2

    .line 206
    sget-object v0, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 210
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    .line 211
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mEnableBackButton:Z

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Lcom/meizu/widget/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/internal/widget/MzActionBarContainer;->addView(Landroid/view/View;II)V

    .line 219
    iget-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mCustomBackButton:Z

    if-nez v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mUpdateBackButton:Z

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->updateSplitBackground()V

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MzActionBarContainer;->removeBackButton(Landroid/view/View;)V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    goto :goto_1
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mContentHeight:I

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/widget/MzActionBarContainer;->requestLayout()V

    .line 348
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 243
    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 245
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 249
    :cond_0
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/internal/widget/MzActionBarContainer;->addView(Landroid/view/View;II)V

    .line 250
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 252
    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x10805f1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMenuView:Landroid/view/View;

    .line 262
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->updateSplitBackground()V

    .line 263
    return-void

    .line 254
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 255
    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarContainer;->mMatchMenuDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 338
    invoke-direct {p0}, Lcom/android/internal/widget/MzActionBarContainer;->matchBackground()V

    .line 339
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 340
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer;->mDefaultSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 342
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 198
    return-void
.end method
