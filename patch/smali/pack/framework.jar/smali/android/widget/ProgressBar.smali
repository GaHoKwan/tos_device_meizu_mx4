.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$1;,
        Landroid/widget/ProgressBar$AccessibilityEventSender;,
        Landroid/widget/ProgressBar$SavedState;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field public static final BAR_COLOR_DEF:I = -0xcd5a19
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the default value for bar color"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public static final BAR_WIDTH_DEF:I = 0x4
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the default value for bar width"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public static final CENTER_ICON_BLACK:I = 0x0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the indicated value of icon color in the center"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public static final CENTER_ICON_WHITE:I = 0x1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the indicated value of icon color in the center"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static final MAX_LEVEL:I = 0x2710

.field public static final PROGRESSBAR_DEF:I = 0x0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the value for horizontal type"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public static final PROGRESSBAR_MZ:I = 0x1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the value for circle type"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public static final RIM_COLOR_DEF:I = 0x26000000
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the default value for rim color"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

.field private mAngleAnim:Landroid/animation/ObjectAnimator;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the animation for meizu LoadingView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBarColor:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the color of the bar"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mBarPaint:Landroid/graphics/Paint;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the paint for drawing bar"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mBarPosition:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. position in the circular"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mBarWidth:F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the width of the bar"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mBehavior:I

.field private mCenterColor:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the color of the center\'s colour"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mCenterIcon:Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. bitmap for showing the center"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mCircleBounds:Landroid/graphics/RectF;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the bounds for drawing the ring"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeterminateType:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the determinate type of ProgressBar"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDuration:I

.field private mHasAnimation:Z

.field private mHeadSign:F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the property for angle animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDeviceDefault:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. the device default value"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsOnPaused:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. set pause or not"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field private mRimColor:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the color of the ProgressBar\'s rim"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mRimPaint:Landroid/graphics/Paint;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. the paint for drawing the ProgressBar\'s rim"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 376
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 379
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 384
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK,jiayu@SDK. set the deviceDefault value, get meizu attributes"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 239
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    .line 241
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 245
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mIsDeviceDefault:Z

    .line 293
    iput v3, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    .line 299
    iput v3, p0, Landroid/widget/ProgressBar;->mBarPosition:I

    .line 335
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    .line 341
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    .line 347
    iput-object v6, p0, Landroid/widget/ProgressBar;->mCenterIcon:Landroid/graphics/Bitmap;

    .line 353
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Landroid/widget/ProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    .line 359
    iput-object v6, p0, Landroid/widget/ProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    .line 365
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/ProgressBar;->mHeadSign:F

    .line 395
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    .line 396
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initProgressBar()V

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mIsDeviceDefault:Z

    .line 403
    sget-object v5, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 406
    .local v0, "a":Landroid/content/res/TypedArray;
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 408
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 409
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 410
    invoke-direct {p0, v1, v3}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 413
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    :cond_0
    const/16 v5, 0x9

    iget v6, p0, Landroid/widget/ProgressBar;->mDuration:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 419
    const/16 v5, 0xb

    iget v6, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 420
    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 421
    const/16 v5, 0xc

    iget v6, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 422
    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 424
    const/16 v5, 0xa

    iget v6, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 426
    const/16 v5, 0xd

    const v6, 0x10a000b

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 429
    .local v2, "resID":I
    if-lez v2, :cond_1

    .line 430
    invoke-virtual {p0, p1, v2}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 433
    :cond_1
    const/4 v5, 0x2

    iget v6, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 435
    const/4 v5, 0x3

    iget v6, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 437
    const/4 v5, 0x4

    iget v6, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 440
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_2

    .line 442
    invoke-direct {p0, v1}, Landroid/widget/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 443
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    :cond_2
    const/4 v5, 0x6

    iget-boolean v6, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 449
    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    .line 451
    iget-boolean v5, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v5, :cond_3

    const/4 v5, 0x5

    iget-boolean v6, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 454
    const/16 v3, 0xf

    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    .line 458
    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->getMzAttrs(Landroid/content/res/TypedArray;)V

    .line 461
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 462
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ProgressBar;

    .prologue
    .line 205
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ProgressBar;IIZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$202(Landroid/widget/ProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ProgressBar;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK. set meizu circle progressbar progress"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 803
    monitor-enter p0

    :try_start_0
    iget v5, p0, Landroid/widget/ProgressBar;->mMax:I

    if-lez v5, :cond_1

    int-to-float v5, p2

    iget v6, p0, Landroid/widget/ProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 807
    .local v4, "scale":F
    :goto_0
    const/4 v5, 0x1

    iget v6, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    if-ne v5, v6, :cond_2

    .line 808
    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/ProgressBar;->mBarPosition:I

    .line 809
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 803
    .end local v4    # "scale":F
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 814
    .restart local v4    # "scale":F
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 815
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_5

    .line 816
    const/4 v3, 0x0

    .line 818
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_3

    .line 819
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 820
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->canResolveLayoutDirection()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 821
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 825
    :cond_3
    const v5, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 826
    .local v2, "level":I
    if-eqz v3, :cond_4

    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 831
    .end local v2    # "level":I
    :goto_3
    if-eqz p4, :cond_0

    const v5, 0x102000d

    if-ne p1, v5, :cond_0

    .line 832
    invoke-virtual {p0, v4, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 803
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "level":I
    .restart local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "scale":F
    :cond_4
    move-object v3, v1

    .line 826
    goto :goto_2

    .line 828
    .end local v2    # "level":I
    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private drawMzCircleProgressBar(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. draw the meizu circle ProgressBar"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 1680
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1681
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Landroid/widget/ProgressBar;->mBarPosition:I

    int-to-float v3, v0

    iget-object v5, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1682
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCenterIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1688
    :goto_0
    return-void

    .line 1685
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCenterIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroid/widget/ProgressBar;->mCenterIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Landroid/widget/ProgressBar;->mCenterIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawMzLoadingView(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. draw the meizu LoadingView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 1668
    iget v0, p0, Landroid/widget/ProgressBar;->mHeadSign:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->getStartPoint(F)F

    move-result v7

    .line 1669
    .local v7, "startPoint":F
    invoke-direct {p0, v7}, Landroid/widget/ProgressBar;->getArcDistance(F)F

    move-result v6

    .line 1670
    .local v6, "distance":F
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1671
    iget-object v1, p0, Landroid/widget/ProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v7

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1672
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    .line 1673
    return-void
.end method

.method private drawMzProgressBar(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. draw the meizu ProgressBar"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1521
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1522
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1523
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1524
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1526
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_0

    .line 1527
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->drawMzCircleProgressBar(Landroid/graphics/Canvas;)V

    .line 1531
    :goto_0
    return-void

    .line 1529
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->drawMzLoadingView(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getArcDistance(F)F
    .locals 7
    .param p1, "startPoint"    # F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. get the distance in meizu LoadingView animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/high16 v6, -0x3df00000    # -36.0f

    const/high16 v5, 0x43220000    # 162.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x42b40000    # 90.0f

    .line 1712
    const/4 v0, 0x0

    .line 1713
    .local v0, "distance":F
    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    cmpg-float v1, p1, v6

    if-gtz v1, :cond_1

    .line 1714
    add-float v1, p1, v3

    mul-float v0, v1, v4

    .line 1724
    :cond_0
    :goto_0
    return v0

    .line 1715
    :cond_1
    cmpl-float v1, p1, v6

    if-lez v1, :cond_2

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_2

    .line 1716
    const/high16 v1, 0x42d80000    # 108.0f

    const/high16 v2, 0x42100000    # 36.0f

    add-float/2addr v2, p1

    mul-float/2addr v2, v4

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0

    .line 1717
    :cond_2
    cmpl-float v1, p1, v2

    if-lez v1, :cond_3

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_3

    .line 1718
    const/high16 v1, 0x43100000    # 144.0f

    sub-float v2, p1, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    goto :goto_0

    .line 1719
    :cond_3
    cmpl-float v1, p1, v3

    if-lez v1, :cond_4

    cmpg-float v1, p1, v5

    if-gtz v1, :cond_4

    .line 1720
    const/high16 v1, 0x42fc0000    # 126.0f

    sub-float v2, p1, v3

    div-float/2addr v2, v4

    sub-float v0, v1, v2

    goto :goto_0

    .line 1721
    :cond_4
    cmpl-float v1, p1, v5

    if-lez v1, :cond_0

    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 1722
    sub-float v1, p1, v5

    mul-float/2addr v1, v3

    const/high16 v2, 0x42d80000    # 108.0f

    div-float/2addr v1, v2

    sub-float v0, v3, v1

    goto :goto_0
.end method

.method private getMzAttrs(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. get meizu attributes"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1481
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    .line 1482
    const/16 v0, 0x11

    const v1, -0xcd5a19

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar;->mBarColor:I

    .line 1483
    const/16 v0, 0x12

    const/high16 v1, 0x26000000

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar;->mRimColor:I

    .line 1484
    const/16 v0, 0x15

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/widget/ProgressBar;->mCenterColor:I

    .line 1485
    const/16 v0, 0x13

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    .line 1487
    const/16 v0, 0x14

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mIsOnPaused:Z

    .line 1488
    iget v0, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    if-ne v3, v0, :cond_0

    .line 1489
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initMzProgressBar()V

    .line 1491
    :cond_0
    return-void
.end method

.method private getStartPoint(F)F
    .locals 4
    .param p1, "point"    # F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. get the start point in meizu LoadingView animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/high16 v3, 0x43580000    # 216.0f

    const/high16 v2, 0x43220000    # 162.0f

    .line 1695
    const/4 v0, 0x0

    .line 1696
    .local v0, "startPoint":F
    move v0, p1

    .line 1697
    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_1

    .line 1698
    const v1, 0x3f8ccccd    # 1.1f

    mul-float v0, v1, p1

    .line 1704
    :cond_0
    :goto_0
    return v0

    .line 1699
    :cond_1
    cmpl-float v1, v0, v2

    if-lez v1, :cond_2

    cmpg-float v1, v0, v3

    if-gtz v1, :cond_2

    .line 1700
    const v1, 0x43323333    # 178.2f

    sub-float v2, v0, v2

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0

    .line 1701
    :cond_2
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 1702
    const v1, 0x43658000    # 229.5f

    sub-float v2, v0, v3

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0
.end method

.method private initMzLoadingAnimation()V
    .locals 6
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. initialise meizu LoadingView animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1732
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 1733
    const-string v2, "headSign"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/ProgressBar;->propertyAnimator(Ljava/lang/Object;Ljava/lang/String;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    .line 1735
    :cond_0
    return-void
.end method

.method private initMzProgressBar()V
    .locals 4
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. initialise meizu ProgressBar"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1498
    iget-object v1, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/ProgressBar;->mBarColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1499
    iget-object v1, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1500
    iget-object v1, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1501
    iget-object v1, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1503
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/ProgressBar;->mRimColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1504
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1505
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1506
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1507
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_1

    .line 1508
    iget v1, p0, Landroid/widget/ProgressBar;->mMax:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/ProgressBar;->mMax:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1509
    .local v0, "scale":F
    :goto_0
    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ProgressBar;->mBarPosition:I

    .line 1510
    iget-object v1, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1514
    .end local v0    # "scale":F
    :goto_1
    return-void

    .line 1508
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1512
    :cond_1
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initMzLoadingAnimation()V

    goto :goto_1
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 570
    const/16 v0, 0x64

    iput v0, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 571
    iput v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 572
    iput v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 573
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 574
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    .line 575
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/widget/ProgressBar;->mDuration:I

    .line 576
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ProgressBar;->mBehavior:I

    .line 577
    iput v2, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    .line 578
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    .line 579
    iput v2, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    .line 580
    iput v3, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 581
    return-void
.end method

.method private propertyAnimator(Ljava/lang/Object;Ljava/lang/String;FFI)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "begin"    # F
    .param p4, "end"    # F
    .param p5, "duration"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. set the propertyAnimator of meizu LoadingView animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1743
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p3, v2, v3

    aput p4, v2, v4

    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 1744
    .local v1, "pvhA":Landroid/animation/PropertyValuesHolder;
    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1745
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1746
    return-object v0
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 843
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Landroid/widget/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 844
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 846
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v1, :cond_2

    .line 847
    new-instance v1, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V

    iput-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    .line 850
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZ)Landroid/widget/ProgressBar$RefreshData;

    move-result-object v0

    .line 851
    .local v0, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mAttached:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    if-nez v1, :cond_0

    .line 853
    iget-object v1, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 854
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 843
    .end local v0    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    .prologue
    .line 1435
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1436
    new-instance v0, Landroid/widget/ProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    .line 1440
    :goto_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1441
    return-void

    .line 1438
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startMzLoadingAnimation(I)V
    .locals 3
    .param p1, "duration"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. start meizu LoadingView animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1754
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1756
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1757
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1758
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1759
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 1761
    :cond_0
    return-void
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    .line 470
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v14, :cond_3

    move-object/from16 v3, p1

    .line 471
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 472
    .local v3, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 473
    .local v2, "N":I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    .line 475
    .local v11, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 476
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    .line 477
    .local v6, "id":I
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const v14, 0x102000d

    if-eq v6, v14, :cond_0

    const v14, 0x102000f

    if-ne v6, v14, :cond_1

    :cond_0
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    aput-object v14, v11, v5

    .line 475
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 477
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 481
    .end local v6    # "id":I
    :cond_2
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 483
    .local v8, "newBg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_5

    .line 484
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v14

    invoke-virtual {v8, v5, v14}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 483
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 489
    .end local v2    # "N":I
    .end local v3    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v5    # "i":I
    .end local v8    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    .end local v11    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v14, :cond_6

    move-object/from16 v7, p1

    .line 490
    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    .line 491
    .local v7, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 492
    .local v10, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v9

    .line 493
    .local v9, "numStates":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v9, :cond_4

    .line 494
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v14

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v15, v1}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 493
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move-object v8, v10

    .line 514
    .end local v5    # "i":I
    .end local v7    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v9    # "numStates":I
    .end local v10    # "out":Landroid/graphics/drawable/StateListDrawable;
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_4
    return-object v8

    .line 498
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p1

    instance-of v14, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_9

    .line 499
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 500
    .local v13, "tileBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v14, :cond_7

    .line 501
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 504
    :cond_7
    new-instance v12, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 506
    .local v12, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v13, v14, v15}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 508
    .local v4, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v12}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 510
    if-eqz p2, :cond_8

    new-instance v14, Landroid/graphics/drawable/ClipDrawable;

    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v12, v15, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v12, v14

    .end local v12    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    :cond_8
    move-object v8, v12

    goto :goto_4

    .end local v4    # "bitmapShader":Landroid/graphics/BitmapShader;
    .end local v13    # "tileBitmap":Landroid/graphics/Bitmap;
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v8, p1

    .line 514
    goto :goto_4
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 540
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 541
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 542
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 543
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 544
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 546
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 547
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/widget/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 548
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 549
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 552
    move-object p1, v4

    .line 554
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 15
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1178
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int p1, p1, v12

    .line 1179
    iget v12, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v13, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v12, v13

    sub-int p2, p2, v12

    .line 1181
    move/from16 v8, p1

    .line 1182
    .local v8, "right":I
    move/from16 v1, p2

    .line 1183
    .local v1, "bottom":I
    const/4 v10, 0x0

    .line 1184
    .local v10, "top":I
    const/4 v7, 0x0

    .line 1186
    .local v7, "left":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 1188
    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v12, :cond_0

    .line 1191
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1192
    .local v6, "intrinsicWidth":I
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1193
    .local v5, "intrinsicHeight":I
    int-to-float v12, v6

    int-to-float v13, v5

    div-float v4, v12, v13

    .line 1194
    .local v4, "intrinsicAspect":F
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v2, v12, v13

    .line 1195
    .local v2, "boundAspect":F
    cmpl-float v12, v4, v2

    if-eqz v12, :cond_0

    .line 1196
    cmpl-float v12, v2, v4

    if-lez v12, :cond_4

    .line 1198
    move/from16 v0, p2

    int-to-float v12, v0

    mul-float/2addr v12, v4

    float-to-int v11, v12

    .line 1199
    .local v11, "width":I
    sub-int v12, p1, v11

    div-int/lit8 v7, v12, 0x2

    .line 1200
    add-int v8, v7, v11

    .line 1209
    .end local v2    # "boundAspect":F
    .end local v4    # "intrinsicAspect":F
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicWidth":I
    .end local v11    # "width":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v12, :cond_1

    .line 1210
    move v9, v7

    .line 1211
    .local v9, "tempLeft":I
    sub-int v7, p1, v8

    .line 1212
    sub-int v8, p1, v9

    .line 1214
    .end local v9    # "tempLeft":I
    :cond_1
    iget-object v12, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1217
    :cond_2
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 1218
    iget-object v12, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1220
    :cond_3
    return-void

    .line 1203
    .restart local v2    # "boundAspect":F
    .restart local v4    # "intrinsicAspect":F
    .restart local v5    # "intrinsicHeight":I
    .restart local v6    # "intrinsicWidth":I
    :cond_4
    move/from16 v0, p1

    int-to-float v12, v0

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v4

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .line 1204
    .local v3, "height":I
    sub-int v12, p2, v3

    div-int/lit8 v10, v12, 0x2

    .line 1205
    add-int v1, v10, v3

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 1294
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1296
    .local v0, "state":[I
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1300
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1301
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1303
    :cond_1
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1289
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1290
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 1291
    return-void
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Do not need to fillet"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 522
    iget-boolean v2, p0, Landroid/widget/ProgressBar;->mIsDeviceDefault:Z

    if-nez v2, :cond_0

    .line 523
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    .line 524
    .local v1, "roundedCorners":[F
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v2, v1, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 529
    .end local v1    # "roundedCorners":[F
    :goto_0
    return-object v2

    .line 528
    :cond_0
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    .line 529
    .local v0, "noRoundedCorners":[F
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v2, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    goto :goto_0

    .line 523
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 528
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected getHeadSign()F
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. get the property in meizu LoadingView animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1776
    iget v0, p0, Landroid/widget/ProgressBar;->mHeadSign:F

    return v0
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 972
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 941
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 958
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    monitor-exit p0

    return-void

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 1019
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    monitor-exit p0

    return-void

    .line 1019
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1156
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 1157
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1158
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1159
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollX:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 1160
    .local v1, "scrollX":I
    iget v3, p0, Landroid/widget/ProgressBar;->mScrollY:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    .line 1162
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->invalidate(IIII)V

    .line 1168
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 728
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 729
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 730
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 731
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1367
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1368
    iget-boolean v3, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v3, :cond_0

    .line 1369
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    .line 1371
    :cond_0
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1372
    monitor-enter p0

    .line 1373
    :try_start_0
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1374
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1375
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar$RefreshData;

    .line 1376
    .local v2, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget v3, v2, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v4, v2, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v5, v2, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 1377
    invoke-virtual {v2}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    .line 1374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1379
    .end local v2    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_1
    iget-object v3, p0, Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1380
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iput-boolean v7, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 1383
    return-void

    .line 1380
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.remove callback after refresh posted"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1391
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 1394
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1395
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1400
    :cond_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mRefreshIsPosted:Z

    if-eqz v0, :cond_2

    .line 1401
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1404
    :cond_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_3

    .line 1405
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1409
    :cond_3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1410
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mAttached:Z

    .line 1411
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. update meizu Circle ProgressBar"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1228
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1231
    iget v4, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    if-ne v5, v4, :cond_1

    .line 1232
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;->drawMzProgressBar(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1237
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1238
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1242
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mMirrorForRtl:Z

    if-eqz v4, :cond_3

    .line 1243
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1244
    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1248
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getDrawingTime()J

    move-result-wide v2

    .line 1249
    .local v2, "time":J
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    if-eqz v4, :cond_2

    .line 1250
    iget-object v4, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v5, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v5}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1251
    iget-object v4, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1253
    .local v1, "scale":F
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 1254
    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1256
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    .line 1258
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidateOnAnimation()V

    .line 1260
    .end local v1    # "scale":F
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1262
    iget-boolean v4, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_0

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_0

    .line 1263
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1264
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1228
    .end local v2    # "time":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1246
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_4
    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 1256
    .restart local v1    # "scale":F
    .restart local v2    # "time":J
    :catchall_1
    move-exception v4

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/ProgressBar;->mInDrawing:Z

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1415
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1416
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1417
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1418
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1419
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1423
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1424
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1425
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1271
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1273
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1274
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1275
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 1276
    iget v3, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v4, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1277
    iget v3, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v4, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1279
    :cond_0
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 1280
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1281
    iget v3, p0, Landroid/widget/ProgressBar;->mPaddingTop:I

    iget v4, p0, Landroid/widget/ProgressBar;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1283
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Landroid/widget/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    monitor-exit p0

    return-void

    .line 1271
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 837
    iget-object v0, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-direct {p0}, Landroid/widget/ProgressBar;->scheduleAccessibilityEventSender()V

    .line 840
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 738
    iget-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 739
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 742
    :cond_0
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 745
    :cond_1
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 746
    iget-object v1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 748
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1358
    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    .line 1359
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1361
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1362
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1363
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1347
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1348
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1350
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    .line 1351
    iget v2, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 1353
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1172
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 1173
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. set meizu LoadingView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1126
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1128
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1130
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 1133
    :cond_0
    iget v0, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    if-ne v1, v0, :cond_2

    .line 1134
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1135
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAngleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 1152
    :cond_1
    :goto_0
    return-void

    .line 1140
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    goto :goto_0

    .line 1144
    :cond_3
    iget v0, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    if-ne v1, v0, :cond_4

    .line 1145
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Landroid/widget/ProgressBar;->startMzLoadingAnimation(I)V

    goto :goto_0

    .line 1149
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 753
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 755
    :cond_0
    return-void
.end method

.method public declared-synchronized setBarColor(I)V
    .locals 2
    .param p1, "barColor"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. set bar\'s colour,add remoteview method"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1539
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ProgressBar;->mDeterminateType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1549
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1542
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mBarColor:I

    if-eq v0, p1, :cond_0

    .line 1543
    iput p1, p0, Landroid/widget/ProgressBar;->mBarColor:I

    .line 1544
    iget-object v0, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/ProgressBar;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1546
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBarWidth(F)V
    .locals 5
    .param p1, "barWidth"    # F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. set bar\'s width"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1575
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1578
    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 1581
    cmpg-float v0, p1, v4

    if-gez v0, :cond_2

    .line 1582
    iput v4, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    .line 1586
    :goto_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Landroid/widget/ProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1588
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1589
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    goto :goto_0

    .line 1584
    :cond_2
    iput p1, p0, Landroid/widget/ProgressBar;->mBarWidth:F

    goto :goto_1
.end method

.method public setCenterColor(I)V
    .locals 0
    .param p1, "colorType"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. set center icon\'s colour"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1627
    return-void
.end method

.method public declared-synchronized setCenterIcon(I)V
    .locals 3
    .param p1, "centerIconId"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. setCenterIcon"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1651
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/ProgressBar;->mDeterminateType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1661
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1654
    :cond_1
    const/4 v1, -0x1

    if-ne v1, p1, :cond_2

    .line 1655
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/widget/ProgressBar;->mCenterIcon:Landroid/graphics/Bitmap;

    .line 1660
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1651
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1657
    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1658
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ProgressBar;->mCenterIcon:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setDeterminateType(I)V
    .locals 2
    .param p1, "type"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. set ProgressBar\'s determinate type"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1599
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1602
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_0

    .line 1605
    :cond_2
    iget v0, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    if-eq p1, v0, :cond_0

    .line 1606
    iput p1, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    .line 1607
    iget v0, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    if-ne v1, v0, :cond_3

    .line 1608
    invoke-direct {p0}, Landroid/widget/ProgressBar;->initMzProgressBar()V

    .line 1610
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    goto :goto_0
.end method

.method protected setHeadSign(F)V
    .locals 0
    .param p1, "headSign"    # F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. set the property in meizu LoadingView animation"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1768
    iput p1, p0, Landroid/widget/ProgressBar;->mHeadSign:F

    .line 1769
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 605
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 606
    iput-boolean p1, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    .line 608
    if-eqz p1, :cond_2

    .line 610
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 611
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 613
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 614
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 642
    if-eqz p1, :cond_0

    .line 643
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 645
    :cond_0
    iput-object p1, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 646
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->canResolveLayoutDirection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 649
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_2

    .line 650
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 651
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 653
    :cond_2
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 1081
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1082
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1091
    iput-object p1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1092
    return-void
.end method

.method public declared-synchronized setIsOnPaused(Z)V
    .locals 0
    .param p1, "pause"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. to set isonpaused"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1643
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 986
    monitor-enter p0

    if-gez p1, :cond_0

    .line 987
    const/4 p1, 0x0

    .line 989
    :cond_0
    :try_start_0
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 990
    iput p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 991
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 993
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 994
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 996
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    :cond_2
    monitor-exit p0

    return-void

    .line 986
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 872
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    monitor-exit p0

    return-void

    .line 872
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 877
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 893
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 881
    :cond_1
    if-gez p1, :cond_2

    .line 882
    const/4 p1, 0x0

    .line 885
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 886
    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 889
    :cond_3
    iget v0, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-eq p1, v0, :cond_0

    .line 890
    iput p1, p0, Landroid/widget/ProgressBar;->mProgress:I

    .line 891
    const v0, 0x102000d

    iget v1, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 679
    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    .line 680
    iget-object v2, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 681
    const/4 v1, 0x1

    .line 686
    .local v1, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 687
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 688
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 693
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 694
    .local v0, "drawableHeight":I
    iget v2, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    if-ge v2, v0, :cond_1

    .line 695
    iput v0, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    .line 696
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 699
    .end local v0    # "drawableHeight":I
    :cond_1
    iput-object p1, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 700
    iget-boolean v2, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v2, :cond_2

    .line 701
    iput-object p1, p0, Landroid/widget/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 702
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 705
    :cond_2
    if-eqz v1, :cond_3

    .line 706
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/ProgressBar;->updateDrawableBounds(II)V

    .line 707
    invoke-direct {p0}, Landroid/widget/ProgressBar;->updateDrawableState()V

    .line 708
    const v2, 0x102000d

    iget v3, p0, Landroid/widget/ProgressBar;->mProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 709
    const v2, 0x102000f

    iget v3, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V

    .line 711
    :cond_3
    return-void

    .line 683
    .end local v1    # "needUpdate":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "needUpdate":Z
    goto :goto_0
.end method

.method public setProgressDrawableResource(I)V
    .locals 3
    .param p1, "resId"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.Feature. set Progress Drawable Resource"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1465
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1466
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/ProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1467
    .local v1, "newDrawble":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1468
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1470
    iget v2, p0, Landroid/widget/ProgressBar;->mProgress:I

    if-lez v2, :cond_0

    .line 1471
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 1472
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 1474
    :cond_0
    return-void
.end method

.method public setRimColor(I)V
    .locals 2
    .param p1, "rimColor"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.Feature. set rim\'s colour"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1557
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ProgressBar;->mDeterminateType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1560
    :cond_1
    iget v0, p0, Landroid/widget/ProgressBar;->mRimColor:I

    if-eq v0, p1, :cond_0

    .line 1561
    iput p1, p0, Landroid/widget/ProgressBar;->mRimColor:I

    .line 1562
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Landroid/widget/ProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/ProgressBar;->mRimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1564
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->invalidate()V

    goto :goto_0
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 909
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 925
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 913
    :cond_1
    if-gez p1, :cond_2

    .line 914
    const/4 p1, 0x0

    .line 917
    :cond_2
    :try_start_1
    iget v0, p0, Landroid/widget/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 918
    iget p1, p0, Landroid/widget/ProgressBar;->mMax:I

    .line 921
    :cond_3
    iget v0, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 922
    iput p1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    .line 923
    const v0, 0x102000f

    iget v1, p0, Landroid/widget/ProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ProgressBar;->refreshProgress(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1106
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1107
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    iget-boolean v0, p0, Landroid/widget/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1111
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1112
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->stopAnimation()V

    .line 1118
    :cond_1
    :goto_0
    return-void

    .line 1114
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1026
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 1031
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1058
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    goto :goto_0

    .line 1034
    :cond_1
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1036
    iget-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 1037
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1040
    :cond_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    .line 1041
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 1046
    :goto_2
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 1047
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1052
    :goto_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1053
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1054
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Landroid/widget/ProgressBar;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1055
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Landroid/widget/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1056
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1

    .line 1043
    :cond_3
    iget-object v0, p0, Landroid/widget/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_2

    .line 1049
    :cond_4
    iget-object v0, p0, Landroid/widget/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_3
.end method

.method stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1065
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mHasAnimation:Z

    .line 1066
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1068
    iput-boolean v1, p0, Landroid/widget/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1070
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 1071
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 722
    iget-object v0, p0, Landroid/widget/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
