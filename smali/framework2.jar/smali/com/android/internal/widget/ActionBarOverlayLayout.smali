.class public Lcom/android/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private mActionBar:Lcom/android/internal/app/ActionBarImpl;

.field private mActionBarBottom:Landroid/view/View;

.field private mActionBarHeight:I

.field private mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarView:Lcom/android/internal/widget/ActionBarView;

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContent:Landroid/view/View;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10102eb
        0x1010059
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 173
    .local v1, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 175
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 177
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 178
    const/4 v0, 0x1

    .line 179
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 181
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 182
    const/4 v0, 0x1

    .line 183
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 185
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 186
    const/4 v0, 0x1

    .line 187
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 189
    :cond_3
    return v0
.end method

.method private applyInsetsForFlyme(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to apply padding and marging for Actionbar top"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 479
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v10

    .line 480
    .local v10, "vis":I
    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_0

    and-int/lit16 v0, v10, 0x400

    if-eqz v0, :cond_0

    move v8, v3

    .line 482
    .local v8, "stable":Z
    :goto_0
    const/4 v7, 0x0

    .line 483
    .local v7, "changed":Z
    if-eqz v8, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 485
    .local v9, "statebarHeight":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarContainer;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v9, v2, v4}, Lcom/android/internal/widget/ActionBarContainer;->setPadding(IIII)V

    .line 486
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, p0

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 487
    const/4 v7, 0x1

    .line 492
    .end local v9    # "statebarHeight":I
    :goto_1
    return v7

    .end local v7    # "changed":Z
    .end local v8    # "stable":Z
    :cond_0
    move v8, v5

    .line 480
    goto :goto_0

    .line 489
    .restart local v7    # "changed":Z
    .restart local v8    # "stable":Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarContainer;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v5, v2, v4}, Lcom/android/internal/widget/ActionBarContainer;->setPadding(IIII)V

    .line 490
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    move-object v0, p0

    move-object v2, p2

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 88
    return-void

    :cond_0
    move v1, v3

    .line 83
    goto :goto_0

    :cond_1
    move v2, v3

    .line 86
    goto :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 255
    instance-of v0, p1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method protected computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "yangrui@SDK.Feature Override for fullscreen mode."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 501
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    const/4 v0, 0x1

    .line 514
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->fitsSystemWindows()Z

    move-result v1

    if-nez v1, :cond_0

    .line 511
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 512
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 423
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getBottom()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 426
    .local v0, "top":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 430
    .end local v0    # "top":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 424
    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 10
    .param p1, "insets"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to apply actionbar insets"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v9

    .line 201
    .local v9, "vis":I
    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_3

    move v8, v3

    .line 208
    .local v8, "stable":Z
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsetsForFlyme(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v7

    .line 211
    .local v7, "changed":Z
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    move-object v0, p0

    move-object v2, p1

    move v4, v5

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 222
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    const/4 v7, 0x1

    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 227
    :cond_1
    if-eqz v7, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 235
    :cond_2
    return v3

    .end local v7    # "changed":Z
    .end local v8    # "stable":Z
    :cond_3
    move v8, v5

    .line 201
    goto :goto_0

    .line 208
    .restart local v8    # "stable":Z
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 240
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 250
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 245
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isOverlayMode()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add isOverlayMode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v3

    .line 393
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v8

    .line 394
    .local v8, "parentLeft":I
    sub-int v12, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .line 396
    .local v9, "parentRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v10

    .line 397
    .local v10, "parentTop":I
    sub-int v12, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v13

    sub-int v7, v12, v13

    .line 399
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 400
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 404
    .local v6, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 405
    .local v11, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 407
    .local v4, "height":I
    iget v12, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v12

    .line 409
    .local v1, "childLeft":I
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    if-ne v0, v12, :cond_1

    .line 410
    sub-int v12, v7, v4

    iget v13, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v12, v13

    .line 415
    .local v2, "childTop":I
    :goto_1
    add-int v12, v1, v11

    add-int v13, v2, v4

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 399
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 412
    .restart local v1    # "childLeft":I
    .restart local v4    # "height":I
    .restart local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .restart local v11    # "width":I
    :cond_1
    iget v12, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v2, v10, v12

    .restart local v2    # "childTop":I
    goto :goto_1

    .line 418
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to apply content insets"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 266
    const/4 v11, 0x0

    .line 267
    .local v11, "maxHeight":I
    const/4 v12, 0x0

    .line 268
    .local v12, "maxWidth":I
    const/4 v9, 0x0

    .line 270
    .local v9, "childState":I
    const/4 v15, 0x0

    .line 271
    .local v15, "topInset":I
    const/4 v8, 0x0

    .line 273
    .local v8, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 275
    .local v10, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 285
    .restart local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 292
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v16

    .line 293
    .local v16, "vis":I
    move/from16 v0, v16

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    const/4 v13, 0x1

    .line 295
    .local v13, "stable":Z
    :goto_0
    if-eqz v13, :cond_5

    .line 298
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl;->hasNonEmbeddedTabs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v14

    .line 301
    .local v14, "tabs":Landroid/view/View;
    if-eqz v14, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v15, v1

    .line 316
    .end local v14    # "tabs":Landroid/view/View;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_6

    .line 326
    const/4 v8, 0x0

    .line 349
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 351
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_9

    if-nez v13, :cond_9

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 358
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 368
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 370
    .restart local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 384
    move/from16 v0, p1

    invoke-static {v12, v0, v9}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v9, 0x10

    move/from16 v0, p2

    invoke-static {v11, v0, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 387
    return-void

    .line 293
    .end local v13    # "stable":Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 306
    .restart local v13    # "stable":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v15

    goto/16 :goto_1

    .line 333
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 334
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 337
    :cond_7
    if-eqz v13, :cond_8

    .line 338
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    goto/16 :goto_2

    .line 340
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    goto/16 :goto_2

    .line 355
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 7
    .param p1, "visible"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 138
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 140
    iget v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v6, p1

    .line 141
    .local v1, "diff":I
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 142
    and-int/lit8 v6, p1, 0x4

    if-nez v6, :cond_3

    move v0, v4

    .line 143
    .local v0, "barVisible":Z
    :goto_0
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v6}, Lcom/android/internal/app/ActionBarImpl;->isSystemShowing()Z

    move-result v3

    .line 144
    .local v3, "wasVisible":Z
    :goto_1
    and-int/lit16 v6, p1, 0x100

    if-eqz v6, :cond_5

    move v2, v4

    .line 145
    .local v2, "stable":Z
    :goto_2
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v6, :cond_1

    .line 149
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-nez v2, :cond_6

    :goto_3
    invoke-virtual {v6, v4}, Lcom/android/internal/app/ActionBarImpl;->enableContentAnimations(Z)V

    .line 150
    if-nez v0, :cond_0

    if-nez v2, :cond_7

    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v4}, Lcom/android/internal/app/ActionBarImpl;->showForSystem()V

    .line 153
    :cond_1
    :goto_4
    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_2

    .line 154
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v4, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 158
    :cond_2
    return-void

    .end local v0    # "barVisible":Z
    .end local v2    # "stable":Z
    .end local v3    # "wasVisible":Z
    :cond_3
    move v0, v5

    .line 142
    goto :goto_0

    .restart local v0    # "barVisible":Z
    :cond_4
    move v3, v4

    .line 143
    goto :goto_1

    .restart local v3    # "wasVisible":Z
    :cond_5
    move v2, v5

    .line 144
    goto :goto_2

    .restart local v2    # "stable":Z
    :cond_6
    move v4, v5

    .line 149
    goto :goto_3

    .line 151
    :cond_7
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v4}, Lcom/android/internal/app/ActionBarImpl;->hideForSystem()V

    goto :goto_4
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 163
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ActionBarImpl;->setWindowVisibility(I)V

    .line 167
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 439
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 440
    const v0, 0x10203ad

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    .line 442
    const v0, 0x10203ae

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 443
    const v0, 0x10203b0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Landroid/view/View;

    .line 445
    :cond_0
    return-void
.end method

.method public setActionBar(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 3
    .param p1, "impl"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    iget v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ActionBarImpl;->setWindowVisibility(I)V

    .line 96
    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    .line 97
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 98
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 102
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2
    .param p1, "overlayMode"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 111
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 114
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingForActionMode(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 117
    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method
