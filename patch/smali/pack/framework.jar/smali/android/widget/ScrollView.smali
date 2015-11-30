.class public Landroid/widget/ScrollView;
.super Landroid/widget/FrameLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ScrollView$OnScrollListener;,
        Landroid/widget/ScrollView$SavedState;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static CHECK_SPRINGBACK_DURATION:I = 0x0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static DRAW_ARC_VIEW:I = 0x0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static DRAW_LINE_VIEW:I = 0x0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static final INVALID_POINTER:I = -0x1

.field private static INVALID_VALUE:I = 0x0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static MPULL_SPRING_OFFSET:I = 0x0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static SPRINGBACK_DELAY_DURATION:I = 0x0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ScrollView"


# instance fields
.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mCurrentOverScrollDistance:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDefaultTouchSlop:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mDelaySpringBack:Ljava/lang/Runnable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDelaySpringBackEnabled:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mEnableTopShadow:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable for  the flag of enable top shadow"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFling:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHoldDistance:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mHoldIndicatorOffset:I

.field protected mIsAnimation:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mIsListAtWindowTop:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mIsRefresh:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollState:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mLastScrollY:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mListWindowTop:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field protected mNeedRestoreOverScroll:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mOnScrollListener:Landroid/widget/ScrollView$OnScrollListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mOverFling:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field protected mPullAnimationDistance:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mPullEnd:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mPullHoldDistance:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mPullRefreshDrawType:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mPullRefreshEnabled:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mPullRefreshListener:Lcom/meizu/widget/PullRefreshNetData;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mRefreshDelaySpringBack:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mSavedState:Landroid/widget/ScrollView$SavedState;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Lcom/meizu/widget/OverScrollerExt;

.field protected mShouldDelaySpringBack:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature add variable "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 241
    const/4 v0, 0x0

    sput v0, Landroid/widget/ScrollView;->DRAW_LINE_VIEW:I

    .line 246
    sput v1, Landroid/widget/ScrollView;->DRAW_ARC_VIEW:I

    .line 251
    sput v1, Landroid/widget/ScrollView;->MPULL_SPRING_OFFSET:I

    .line 292
    const v0, -0x989680

    sput v0, Landroid/widget/ScrollView;->INVALID_VALUE:I

    .line 331
    const/16 v0, 0x3e8

    sput v0, Landroid/widget/ScrollView;->SPRINGBACK_DELAY_DURATION:I

    .line 337
    const/16 v0, 0x32

    sput v0, Landroid/widget/ScrollView;->CHECK_SPRINGBACK_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 368
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 371
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 372
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature enable TopShadow when set Theme.Light"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 379
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 110
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 117
    iput-object v3, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 124
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 141
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 154
    iput v4, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 162
    iput-object v3, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 163
    iput-object v3, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 173
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mEnableTopShadow:Z

    .line 194
    iput v2, p0, Landroid/widget/ScrollView;->mLastScrollState:I

    .line 214
    iput-object v3, p0, Landroid/widget/ScrollView;->mPullRefreshListener:Lcom/meizu/widget/PullRefreshNetData;

    .line 220
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mPullRefreshEnabled:Z

    .line 226
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    .line 232
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsRefresh:Z

    .line 259
    iput v4, p0, Landroid/widget/ScrollView;->mPullRefreshDrawType:I

    .line 264
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsAnimation:Z

    .line 276
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mPullEnd:Z

    .line 282
    sget v1, Landroid/widget/ScrollView;->INVALID_VALUE:I

    iput v1, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    .line 299
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 308
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    .line 314
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mIsListAtWindowTop:Z

    .line 321
    iput v2, p0, Landroid/widget/ScrollView;->mListWindowTop:I

    .line 339
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 348
    iput v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 354
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 360
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mFling:Z

    .line 2355
    new-instance v1, Landroid/widget/ScrollView$1;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView$1;-><init>(Landroid/widget/ScrollView;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    .line 2494
    iput v2, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    .line 380
    invoke-direct {p0}, Landroid/widget/ScrollView;->initScrollView()V

    .line 382
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 385
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 387
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 389
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ScrollView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/ScrollView;)Lcom/meizu/widget/OverScrollerExt;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 82
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ScrollView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 82
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/ScrollView;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/ScrollView;

    .prologue
    .line 82
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/ScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/ScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mOverFling:Z

    return p1
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 511
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 512
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 514
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    .line 516
    .end local v1    # "childHeight":I
    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 2186
    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    .line 2202
    :cond_0
    const/4 p0, 0x0

    .line 2212
    .end local p0    # "n":I
    :cond_1
    :goto_0
    return p0

    .line 2204
    .restart local p0    # "n":I
    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    .line 2210
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1516
    if-eqz p1, :cond_0

    .line 1517
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 1518
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1523
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature cancel edge glow"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2084
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 2086
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 2097
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 2098
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 2099
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2101
    :cond_0
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1262
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1263
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1272
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1274
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1275
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1276
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1277
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1278
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1280
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 1286
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    .line 1289
    .local v8, "viewIsFullyContained":Z
    :goto_1
    if-nez v1, :cond_2

    .line 1291
    move-object v1, v5

    .line 1292
    move v3, v8

    .line 1275
    .end local v8    # "viewIsFullyContained":Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1286
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1294
    .restart local v8    # "viewIsFullyContained":Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 1299
    .local v7, "viewIsCloserToBoundary":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1300
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 1306
    move-object v1, v5

    goto :goto_2

    .line 1294
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1309
    .restart local v7    # "viewIsCloserToBoundary":Z
    :cond_6
    if-eqz v8, :cond_7

    .line 1311
    move-object v1, v5

    .line 1312
    const/4 v3, 0x1

    goto :goto_2

    .line 1313
    :cond_7
    if-eqz v7, :cond_0

    .line 1318
    move-object v1, v5

    goto :goto_2

    .line 1325
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_8
    return-object v1
.end method

.method private getHolderAlphaScale()F
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.AbsListView.Feature get the Holder delta according to the CurrentOverScrollDistance"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2865
    iget v2, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-ltz v2, :cond_1

    .line 2877
    :cond_0
    :goto_0
    return v1

    .line 2868
    :cond_1
    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2869
    .local v0, "absCurrentOverScrollDistance":I
    iget v2, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    if-lt v0, v2, :cond_2

    .line 2870
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2872
    :cond_2
    iget v2, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    if-lt v0, v2, :cond_0

    .line 2875
    iget v2, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    iget v4, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 2877
    .local v1, "delta":F
    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1233
    const/4 v2, 0x0

    .line 1234
    .local v2, "scrollRange":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1235
    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1237
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1238
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1242
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return v2
.end method

.method private inChild(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 649
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 650
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 651
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 652
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    .line 657
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 662
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 666
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature initial variables"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 444
    new-instance v1, Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/meizu/widget/OverScrollerExt;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    .line 446
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 447
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 448
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->setWillNotDraw(Z)V

    .line 449
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 450
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 451
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    .line 452
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    .line 453
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 454
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 458
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    iput v1, p0, Landroid/widget/ScrollView;->mDefaultTouchSlop:I

    .line 459
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    .line 460
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mHoldDistance:I

    .line 462
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mPullAnimationDistance:I

    .line 464
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050178

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mPullHoldDistance:I

    .line 466
    iget v1, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    iput v1, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    .line 467
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mListWindowTop:I

    .line 469
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 670
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 672
    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1495
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2037
    if-ne p0, p1, :cond_1

    .line 2042
    :cond_0
    :goto_0
    return v1

    .line 2041
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2042
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    .line 1503
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1504
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1506
    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onOverScrolledForMeizu(I)V
    .locals 12
    .param p1, "scrollY"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature on overscrolled"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2703
    iput v8, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 2704
    const/4 v3, 0x0

    .line 2705
    .local v3, "overScrollEdgeChanged":Z
    iget v9, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v9, :cond_5

    .line 2706
    iput p1, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 2740
    :cond_0
    :goto_0
    iget-object v9, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v9, :cond_1

    .line 2753
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mIsListAtWindowTop:Z

    if-eqz v9, :cond_7

    iget v9, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-gez v9, :cond_7

    iget v9, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    if-lt v9, v10, :cond_7

    .line 2755
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 2760
    :cond_1
    :goto_1
    sget v9, Landroid/widget/ScrollView;->INVALID_VALUE:I

    iget v10, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    if-ne v9, v10, :cond_2

    .line 2761
    iget v9, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v9, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    .line 2763
    :cond_2
    iget-object v9, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    if-eqz v9, :cond_4

    .line 2764
    iget v9, p0, Landroid/widget/ScrollView;->mScrollY:I

    iget v10, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    sub-int/2addr v9, v10

    if-lez v9, :cond_8

    move v6, v7

    .line 2765
    .local v6, "up":Z
    :goto_2
    iget v9, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v9, p0, Landroid/widget/ScrollView;->mLastScrollY:I

    .line 2766
    if-eqz v3, :cond_f

    .line 2767
    iget-boolean v9, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v9, :cond_a

    iget v9, p0, Landroid/widget/ScrollView;->mPullRefreshDrawType:I

    sget v10, Landroid/widget/ScrollView;->DRAW_ARC_VIEW:I

    if-ne v9, v10, :cond_a

    .line 2768
    iget v9, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/widget/ScrollView;->mPullHoldDistance:I

    if-lt v9, v10, :cond_9

    .line 2769
    iget-object v8, p0, Landroid/widget/ScrollView;->mPullRefreshListener:Lcom/meizu/widget/PullRefreshNetData;

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsRefresh:Z

    if-nez v8, :cond_3

    .line 2770
    iget-object v8, p0, Landroid/widget/ScrollView;->mPullRefreshListener:Lcom/meizu/widget/PullRefreshNetData;

    invoke-interface {v8}, Lcom/meizu/widget/PullRefreshNetData;->startGetNetData()V

    .line 2772
    :cond_3
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    .line 2773
    iget-object v8, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    invoke-virtual {v8}, Lcom/meizu/widget/MzPullRefreshView;->setStartTime()V

    .line 2774
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsRefresh:Z

    .line 2803
    .end local v6    # "up":Z
    :cond_4
    :goto_3
    return-void

    .line 2723
    :cond_5
    iget v9, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v9, :cond_0

    .line 2724
    invoke-virtual {p0, v8}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2725
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2726
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 2727
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v5

    .line 2728
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v4

    .line 2729
    .local v4, "paddingBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2731
    .local v1, "childHeight":I
    sub-int v9, v2, v5

    sub-int/2addr v9, v4

    if-le v1, v9, :cond_6

    iget v9, p0, Landroid/widget/ScrollView;->mScrollY:I

    neg-int v9, v9

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v10, v2, v4

    if-ge v9, v10, :cond_6

    .line 2733
    sub-int v9, v2, v4

    iget v10, p0, Landroid/widget/ScrollView;->mScrollY:I

    neg-int v10, v10

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    goto/16 :goto_0

    .line 2734
    :cond_6
    sub-int v9, v2, v5

    sub-int/2addr v9, v4

    if-gt v1, v9, :cond_0

    .line 2735
    iget v9, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v9, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    goto/16 :goto_0

    .line 2757
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "height":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    :cond_7
    iput-boolean v8, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    goto/16 :goto_1

    :cond_8
    move v6, v8

    .line 2764
    goto :goto_2

    .line 2776
    .restart local v6    # "up":Z
    :cond_9
    iput-boolean v8, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    .line 2777
    iput-boolean v8, p0, Landroid/widget/ScrollView;->mIsRefresh:Z

    goto :goto_3

    .line 2779
    :cond_a
    iget v9, p0, Landroid/widget/ScrollView;->mPullRefreshDrawType:I

    sget v10, Landroid/widget/ScrollView;->DRAW_LINE_VIEW:I

    if-ne v9, v10, :cond_4

    .line 2780
    iget v9, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/widget/ScrollView;->mPullAnimationDistance:I

    sget v11, Landroid/widget/ScrollView;->MPULL_SPRING_OFFSET:I

    add-int/2addr v10, v11

    if-gt v9, v10, :cond_c

    iget v9, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/widget/ScrollView;->mPullAnimationDistance:I

    sget v11, Landroid/widget/ScrollView;->MPULL_SPRING_OFFSET:I

    sub-int/2addr v10, v11

    if-lt v9, v10, :cond_c

    iget-boolean v9, p0, Landroid/widget/ScrollView;->mPullEnd:Z

    if-eqz v9, :cond_c

    if-eqz v6, :cond_c

    .line 2782
    iget-object v8, p0, Landroid/widget/ScrollView;->mPullRefreshListener:Lcom/meizu/widget/PullRefreshNetData;

    if-eqz v8, :cond_b

    iget-boolean v8, p0, Landroid/widget/ScrollView;->mIsRefresh:Z

    if-nez v8, :cond_b

    .line 2783
    iget-object v8, p0, Landroid/widget/ScrollView;->mPullRefreshListener:Lcom/meizu/widget/PullRefreshNetData;

    invoke-interface {v8}, Lcom/meizu/widget/PullRefreshNetData;->startGetNetData()V

    .line 2785
    :cond_b
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    .line 2786
    iget-object v8, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    invoke-virtual {v8}, Lcom/meizu/widget/MzPullRefreshView;->setStartTime()V

    .line 2787
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mIsAnimation:Z

    goto/16 :goto_3

    .line 2788
    :cond_c
    iget v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v9, p0, Landroid/widget/ScrollView;->mPullAnimationDistance:I

    sget v10, Landroid/widget/ScrollView;->MPULL_SPRING_OFFSET:I

    sub-int/2addr v9, v10

    if-lt v7, v9, :cond_d

    iget v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v9, p0, Landroid/widget/ScrollView;->mPullAnimationDistance:I

    sget v10, Landroid/widget/ScrollView;->MPULL_SPRING_OFFSET:I

    add-int/2addr v9, v10

    if-le v7, v9, :cond_4

    :cond_d
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mIsAnimation:Z

    if-nez v7, :cond_4

    .line 2790
    iget-boolean v7, p0, Landroid/widget/ScrollView;->mPullEnd:Z

    if-eqz v7, :cond_e

    if-eqz v6, :cond_e

    iget v7, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v9, p0, Landroid/widget/ScrollView;->mPullAnimationDistance:I

    sget v10, Landroid/widget/ScrollView;->MPULL_SPRING_OFFSET:I

    sub-int/2addr v9, v10

    if-ge v7, v9, :cond_e

    .line 2791
    invoke-virtual {p0}, Landroid/widget/ScrollView;->stopRefresh()V

    goto/16 :goto_3

    .line 2793
    :cond_e
    iput-boolean v8, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    .line 2794
    iget-object v7, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    invoke-virtual {v7}, Lcom/meizu/widget/MzPullRefreshView;->stopDrawLineAnimation()V

    goto/16 :goto_3

    .line 2799
    :cond_f
    iput-boolean v8, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    .line 2800
    iget-object v7, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    invoke-virtual {v7}, Lcom/meizu/widget/MzPullRefreshView;->stopDrawLineAnimation()V

    goto/16 :goto_3
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1077
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1079
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1080
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1084
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1085
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1086
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1087
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1088
    iget-object v3, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1091
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1084
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processSpringBack()V
    .locals 11
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.ScrollView.Feature on overscrolled"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 2811
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v8

    .line 2812
    .local v8, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v9, v9}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 2813
    iget v0, p0, Landroid/widget/ScrollView;->mPullRefreshDrawType:I

    sget v2, Landroid/widget/ScrollView;->DRAW_LINE_VIEW:I

    if-ne v0, v2, :cond_2

    .line 2814
    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/widget/ScrollView;->mPullAnimationDistance:I

    if-le v0, v2, :cond_1

    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-gez v0, :cond_1

    .line 2815
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    iget v3, p0, Landroid/widget/ScrollView;->mPullAnimationDistance:I

    neg-int v5, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPullAnimationDistance:I

    neg-int v6, v3

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/OverScrollerExt;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2816
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 2817
    iput-boolean v9, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 2818
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2834
    :cond_0
    :goto_0
    return-void

    .line 2821
    :cond_1
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v2 .. v8}, Lcom/meizu/widget/OverScrollerExt;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2822
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 2823
    iput-boolean v9, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 2824
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 2828
    :cond_2
    iget-object v2, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v2 .. v8}, Lcom/meizu/widget/OverScrollerExt;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2829
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 2830
    iput-boolean v9, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 2831
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 679
    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1408
    const/4 v3, 0x1

    .line 1410
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    .line 1411
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 1412
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1413
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    .line 1415
    .local v6, "up":Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Landroid/widget/ScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1416
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_0

    .line 1417
    move-object v5, p0

    .line 1420
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 1421
    const/4 v3, 0x0

    .line 1427
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1429
    :cond_1
    return v3

    .line 1413
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1423
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    .line 1424
    .local v2, "delta":I
    :goto_2
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1

    .line 1423
    .end local v2    # "delta":I
    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollIfNeededForMeiZu(I)I
    .locals 7
    .param p1, "deltaY"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.AbsListView.Feature spring back after overscrolling"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 2899
    move v2, p1

    .line 2900
    .local v2, "incrementalDeltaY":I
    iget v4, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    if-eqz v4, :cond_2

    .line 2901
    iget v4, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    mul-int/2addr v4, v2

    if-gez v4, :cond_6

    .line 2902
    move v1, v2

    .line 2903
    .local v1, "delta":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2904
    .local v0, "coeff":F
    if-lez v1, :cond_3

    .line 2905
    const v4, 0x3f4ccccd    # 0.8f

    iget v5, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v0, v6, v4

    .line 2906
    cmpg-float v4, v0, v3

    if-gez v4, :cond_0

    move v0, v3

    .line 2907
    :cond_0
    int-to-float v3, v2

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 2908
    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 2916
    :cond_1
    :goto_0
    iget v3, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    if-lt v3, v4, :cond_2

    .line 2917
    const/4 v2, 0x0

    .line 2923
    .end local v0    # "coeff":F
    .end local v1    # "delta":I
    :cond_2
    :goto_1
    return v2

    .line 2910
    .restart local v0    # "coeff":F
    .restart local v1    # "delta":I
    :cond_3
    iget v4, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v0, v6, v4

    .line 2911
    cmpg-float v4, v0, v3

    if-gez v4, :cond_4

    move v0, v3

    .line 2912
    :cond_4
    int-to-float v3, v2

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 2913
    if-nez v2, :cond_5

    const/4 v2, -0x1

    :cond_5
    goto :goto_0

    .line 2920
    .end local v0    # "coeff":F
    .end local v1    # "delta":I
    :cond_6
    div-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.ScrollView.Feature springback if need"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1720
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1723
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1725
    iget-object v1, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1728
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-gez v1, :cond_1

    .line 1729
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->springBackDelay(I)V

    .line 1736
    :cond_0
    :goto_0
    return-void

    .line 1733
    :cond_1
    if-eqz v0, :cond_0

    .line 1734
    invoke-virtual {p0, v2, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.ScrollView.Feature springback if need"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1751
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1752
    .local v0, "delta":I
    if-eqz v0, :cond_1

    move v1, v2

    .line 1755
    .local v1, "scroll":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-gez v4, :cond_2

    .line 1756
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->springBackDelay(I)V

    move v1, v2

    .line 1767
    .end local v1    # "scroll":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v3

    .line 1752
    goto :goto_0

    .line 1760
    .restart local v1    # "scroll":Z
    :cond_2
    if-eqz v1, :cond_0

    .line 1761
    if-eqz p2, :cond_3

    .line 1762
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1764
    :cond_3
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 478
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 487
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 501
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 505
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1441
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1442
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1444
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1446
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1448
    .local v3, "maxJump":I
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1449
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1450
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1451
    iget-object v7, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1452
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/ScrollView;->doScrollY(I)V

    .line 1453
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1475
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1482
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1483
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1484
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 1485
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    .line 1487
    .end local v2    # "descendantFocusability":I
    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    .line 1456
    .end local v6    # "scrollDelta":I
    :cond_3
    move v6, v3

    .line 1458
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    .line 1459
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    .line 1469
    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    .line 1472
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_0

    .line 1460
    :cond_5
    if-ne p1, v10, :cond_4

    .line 1461
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    .line 1462
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1463
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1464
    .local v5, "screenBottom":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    .line 1465
    sub-int v6, v1, v5

    goto :goto_1

    .line 1472
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method protected clearOverScroll()V
    .locals 8
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature Clear the over scroll, using animation."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2525
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    if-nez v0, :cond_0

    .line 2526
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 2527
    .local v6, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v7, v7}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 2528
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/OverScrollerExt;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 2530
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2533
    .end local v6    # "bottom":I
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 15
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature compute scroll"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 1633
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0}, Lcom/meizu/widget/OverScrollerExt;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1650
    iget v3, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1651
    .local v3, "oldX":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1652
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0}, Lcom/meizu/widget/OverScrollerExt;->getCurrX()I

    move-result v13

    .line 1653
    .local v13, "x":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0}, Lcom/meizu/widget/OverScrollerExt;->getCurrY()I

    move-result v14

    .line 1655
    .local v14, "y":I
    if-ne v3, v13, :cond_0

    if-eq v4, v14, :cond_3

    .line 1656
    :cond_0
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1657
    .local v6, "range":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v12

    .line 1658
    .local v12, "overscrollMode":I
    if-eqz v12, :cond_1

    if-ne v12, v11, :cond_5

    if-lez v6, :cond_5

    .line 1675
    .local v11, "canOverscroll":Z
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFling:Z

    if-eqz v0, :cond_6

    move v8, v5

    .line 1676
    .local v8, "overflingDistance":I
    :goto_1
    sub-int v1, v13, v3

    sub-int v2, v14, v4

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v10

    .line 1678
    .local v10, "atEdge":Z
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1680
    if-eqz v10, :cond_2

    if-nez v11, :cond_2

    .line 1681
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0}, Lcom/meizu/widget/OverScrollerExt;->abortAnimation()V

    .line 1684
    :cond_2
    if-eqz v10, :cond_3

    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFling:Z

    if-eqz v0, :cond_3

    .line 1685
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0}, Lcom/meizu/widget/OverScrollerExt;->abortAnimation()V

    .line 1686
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mFling:Z

    .line 1691
    .end local v6    # "range":I
    .end local v8    # "overflingDistance":I
    .end local v10    # "atEdge":Z
    .end local v11    # "canOverscroll":Z
    .end local v12    # "overscrollMode":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1693
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1708
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_4
    :goto_2
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v12    # "overscrollMode":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_5
    move v11, v5

    .line 1658
    goto :goto_0

    .line 1675
    .restart local v11    # "canOverscroll":Z
    :cond_6
    iget v8, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    goto :goto_1

    .line 1696
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v11    # "canOverscroll":Z
    .end local v12    # "overscrollMode":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_7
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_8

    .line 1697
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1698
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1702
    :cond_8
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 1703
    iget v0, p0, Landroid/widget/ScrollView;->mLastScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1704
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 11
    .param p1, "rect"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Feature.ScrollView.Feature consider blur cover rect for child\'s rect"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/16 v10, 0x22

    const/4 v7, 0x0

    .line 1783
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 1847
    :cond_0
    :goto_0
    return v6

    .line 1785
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    .line 1786
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 1787
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 1789
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1792
    .local v2, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    .line 1793
    add-int/2addr v5, v2

    .line 1797
    :cond_2
    iget-object v8, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->isThemeLight()Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, p0, Landroid/widget/ScrollView;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    if-eq v8, v10, :cond_3

    .line 1798
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v8

    add-int/2addr v5, v8

    .line 1802
    :cond_3
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 1803
    sub-int/2addr v4, v2

    .line 1807
    :cond_4
    iget-object v8, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->isThemeLight()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, p0, Landroid/widget/ScrollView;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    if-eq v8, v10, :cond_5

    .line 1808
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v4, v8

    .line 1811
    :cond_5
    const/4 v6, 0x0

    .line 1813
    .local v6, "scrollYDelta":I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_7

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_7

    .line 1818
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_6

    .line 1820
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1827
    :goto_1
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1828
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 1829
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1831
    goto :goto_0

    .line 1823
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_6
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    .line 1831
    :cond_7
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    .line 1836
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_8

    .line 1838
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1845
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_0

    .line 1841
    :cond_8
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1595
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1575
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    .line 1576
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1577
    .local v0, "contentHeight":I
    if-nez v1, :cond_0

    .line 1590
    .end local v0    # "contentHeight":I
    :goto_0
    return v0

    .line 1581
    .restart local v0    # "contentHeight":I
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1582
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1583
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1584
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2

    .line 1585
    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    .line 1590
    goto :goto_0

    .line 1586
    :cond_2
    if-le v4, v2, :cond_1

    .line 1587
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature draw top shadow"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2682
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2684
    iget-boolean v1, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsListAtWindowTop:Z

    if-eqz v1, :cond_0

    .line 2685
    invoke-direct {p0}, Landroid/widget/ScrollView;->getHolderAlphaScale()F

    move-result v0

    .line 2686
    .local v0, "alphaScale":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2687
    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/MzListHoldIndicator;->setHoldDrawableAlpha(F)V

    .line 2688
    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v1, p1}, Lcom/meizu/widget/MzListHoldIndicator;->draw(Landroid/graphics/Canvas;)V

    .line 2692
    .end local v0    # "alphaScale":F
    :cond_0
    iget-object v1, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    if-eqz v1, :cond_1

    .line 2693
    iget-object v1, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-virtual {v1, v2, p1}, Lcom/meizu/widget/MzPullRefreshView;->setCurrentOverScrollDistance(ILandroid/graphics/Canvas;)V

    .line 2695
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 595
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchStatusBarTap()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2565
    invoke-virtual {p0}, Landroid/widget/ScrollView;->onStatusBarTapScrollTop()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2433
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2434
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2467
    .local v0, "action":I
    iget-boolean v2, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    if-eqz v2, :cond_0

    .line 2469
    if-nez v0, :cond_3

    .line 2470
    iget v2, p0, Landroid/widget/ScrollView;->mPullRefreshDrawType:I

    sget v3, Landroid/widget/ScrollView;->DRAW_ARC_VIEW:I

    if-ne v2, v3, :cond_1

    .line 2471
    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPullHoldDistance:I

    if-ge v2, v3, :cond_0

    .line 2472
    iput-boolean v6, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 2473
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    .line 2474
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mIsRefresh:Z

    .line 2491
    :cond_0
    :goto_0
    return v1

    .line 2476
    :cond_1
    iget v2, p0, Landroid/widget/ScrollView;->mPullRefreshDrawType:I

    sget v3, Landroid/widget/ScrollView;->DRAW_LINE_VIEW:I

    if-ne v2, v3, :cond_0

    .line 2477
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mIsAnimation:Z

    .line 2478
    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPullAnimationDistance:I

    sget v4, Landroid/widget/ScrollView;->MPULL_SPRING_OFFSET:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/widget/ScrollView;->mPullEnd:Z

    if-nez v2, :cond_2

    .line 2479
    iput-boolean v6, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 2480
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    .line 2482
    :cond_2
    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-lez v2, :cond_0

    .line 2483
    iput-boolean v5, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    goto :goto_0

    .line 2485
    :cond_3
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v6, :cond_0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature cancel edge glow"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2150
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2183
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 607
    iget-object v6, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 609
    invoke-direct {p0}, Landroid/widget/ScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    .line 610
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    .line 611
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 612
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 613
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 615
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 645
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 622
    :cond_2
    const/4 v1, 0x0

    .line 623
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 624
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    .line 645
    goto :goto_0

    .line 626
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 627
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 629
    :cond_4
    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 631
    goto :goto_1

    .line 633
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 634
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 636
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v1

    .line 638
    goto :goto_1

    .line 640
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    .line 624
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13
    .param p1, "velocityY"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2057
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2060
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 2062
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 2063
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 2066
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v3, v3}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 2068
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Lcom/meizu/widget/OverScrollerExt;->fling(IIIIIIIIII)V

    .line 2071
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    .line 2072
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2075
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2077
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1377
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1378
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1380
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1381
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1383
    if-eqz v1, :cond_0

    .line 1384
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1385
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1386
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1387
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1388
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1392
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1377
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 413
    const/4 v3, 0x0

    .line 423
    :goto_0
    return v3

    .line 416
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 417
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 418
    .local v0, "bottomEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 419
    .local v2, "span":I
    if-ge v2, v1, :cond_1

    .line 420
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 423
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 431
    const/high16 v0, 0x3f000000    # 0.5f

    iget v1, p0, Landroid/widget/ScrollView;->mBottom:I

    iget v2, p0, Landroid/widget/ScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getScrollRangeMz()I
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature get scroll range"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2554
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 399
    const/4 v1, 0x0

    .line 407
    :goto_0
    return v1

    .line 402
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 403
    .local v0, "length":I
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 404
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 407
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public isDelayTopOverScrollEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2425
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1600
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1605
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1608
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1610
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1611
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1616
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1618
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1621
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1624
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1625
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2351
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2352
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 2353
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1919
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1921
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1923
    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1925
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    .line 1926
    iget-object v0, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1927
    iput-object v1, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1931
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 1933
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1095
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 1096
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1119
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1098
    :pswitch_0
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    .line 1099
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 1100
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    .line 1101
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1102
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v3

    .line 1103
    .local v3, "range":I
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1104
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 1105
    .local v1, "newScrollY":I
    if-gez v1, :cond_2

    .line 1106
    const/4 v1, 0x0

    .line 1110
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    .line 1111
    iget v5, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1112
    const/4 v5, 0x1

    goto :goto_0

    .line 1107
    :cond_2
    if-le v1, v3, :cond_1

    .line 1108
    move v1, v3

    goto :goto_1

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1223
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1224
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1225
    .local v0, "scrollable":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1226
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1227
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1228
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1229
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1230
    return-void

    .line 1224
    .end local v0    # "scrollable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1205
    const-class v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1206
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1207
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1208
    .local v0, "scrollRange":I
    if-lez v0, :cond_1

    .line 1209
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1210
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v1, :cond_0

    .line 1211
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1213
    :cond_0
    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 1214
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1218
    .end local v0    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature report scroll state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 707
    .local v7, "action":I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 830
    :goto_0
    return v0

    .line 714
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 715
    goto :goto_0

    .line 718
    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 830
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 729
    :pswitch_1
    iget v8, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 730
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_2

    .line 735
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 736
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_3

    .line 737
    const-string v0, "ScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 742
    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 743
    .local v11, "y":I
    iget v1, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 744
    .local v12, "yDiff":I
    iget v1, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    .line 747
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 749
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 750
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 751
    invoke-direct {p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 752
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 753
    iget-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_4

    .line 754
    const-string v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 756
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 757
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_5

    .line 758
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 762
    :cond_5
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-eqz v0, :cond_2

    .line 763
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->springBackDelay(I)V

    goto :goto_1

    .line 771
    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 772
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Landroid/widget/ScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_6

    .line 773
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 774
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    goto :goto_1

    .line 782
    :cond_6
    iput v11, p0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 783
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 785
    invoke-direct {p0}, Landroid/widget/ScrollView;->initOrResetVelocityTracker()V

    .line 786
    iget-object v1, p0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 792
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v1}, Lcom/meizu/widget/OverScrollerExt;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    move v3, v0

    :cond_7
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 793
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    .line 794
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    .line 802
    .end local v11    # "y":I
    :pswitch_3
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 803
    iput v2, p0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 804
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 807
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v0, :cond_2

    .line 810
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    if-nez v0, :cond_2

    .line 815
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v3, v3}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 817
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/OverScrollerExt;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 822
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1943
    const/4 v2, 0x0

    .line 1944
    .local v2, "restoreOffset":I
    invoke-virtual {p0}, Landroid/widget/ScrollView;->shouldRestoreOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    iget v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 1949
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1950
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1952
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/widget/ScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1953
    iget-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1955
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1957
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1958
    iget-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    if-eqz v0, :cond_2

    .line 1959
    iget-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    iget v0, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    iput v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1960
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 1963
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1964
    .local v10, "childHeight":I
    :goto_0
    const/4 v0, 0x0

    sub-int v1, p5, p3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v3

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v3

    sub-int v1, v10, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1968
    .local v13, "scrollRange":I
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-le v0, v13, :cond_6

    .line 1969
    iput v13, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1976
    .end local v10    # "childHeight":I
    .end local v13    # "scrollRange":I
    :cond_3
    :goto_1
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1979
    if-eqz v2, :cond_4

    .line 1981
    iget v11, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1982
    .local v11, "oldX":I
    iget v12, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1983
    .local v12, "oldY":I
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 1984
    .local v6, "range":I
    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1986
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v11, v12}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 1989
    .end local v6    # "range":I
    .end local v11    # "oldX":I
    .end local v12    # "oldY":I
    :cond_4
    return-void

    .line 1963
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 1970
    .restart local v10    # "childHeight":I
    .restart local v13    # "scrollRange":I
    :cond_6
    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-gez v0, :cond_3

    .line 1971
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 563
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 565
    iget-boolean v6, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 570
    .local v4, "heightMode":I
    if-eqz v4, :cond_0

    .line 574
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 575
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 576
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    .line 577
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 578
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 580
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Landroid/widget/ScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 582
    .local v2, "childWidthMeasureSpec":I
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 583
    iget v6, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 584
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 587
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 5
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature deal with overscroll"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1133
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v1}, Lcom/meizu/widget/OverScrollerExt;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1147
    iput p1, p0, Landroid/widget/ScrollView;->mScrollX:I

    .line 1148
    iput p2, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1150
    iget v1, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mOverFling:Z

    if-nez v1, :cond_0

    .line 1151
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 1152
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v0

    .line 1154
    .local v0, "bottom":I
    iget v1, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-gez v1, :cond_1

    .line 1155
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/meizu/widget/OverScrollerExt;->notifyVerticalEdgeReached(III)V

    .line 1159
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 1168
    .end local v0    # "bottom":I
    :cond_0
    :goto_1
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->onOverScrolledForMeizu(I)V

    .line 1170
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    .line 1171
    return-void

    .line 1157
    .restart local v0    # "bottom":I
    :cond_1
    iget-object v1, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iget v3, p0, Landroid/widget/ScrollView;->mOverflingDistance:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/meizu/widget/OverScrollerExt;->notifyVerticalEdgeReached(III)V

    goto :goto_0

    .line 1163
    .end local v0    # "bottom":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1875
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1876
    const/16 p1, 0x82

    .line 1881
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1886
    .local v0, "nextFocus":Landroid/view/View;
    :goto_1
    if-nez v0, :cond_4

    .line 1894
    :cond_1
    :goto_2
    return v1

    .line 1877
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1878
    const/16 p1, 0x21

    goto :goto_0

    .line 1881
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1890
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/ScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1894
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2217
    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    .line 2220
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2227
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 2223
    check-cast v0, Landroid/widget/ScrollView$SavedState;

    .line 2224
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2225
    iput-object v0, p0, Landroid/widget/ScrollView;->mSavedState:Landroid/widget/ScrollView$SavedState;

    .line 2226
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 2231
    iget-object v2, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_0

    .line 2234
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2239
    :goto_0
    return-object v0

    .line 2236
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2237
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2238
    .local v0, "ss":Landroid/widget/ScrollView$SavedState;
    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    iput v2, v0, Landroid/widget/ScrollView$SavedState;->scrollPosition:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1997
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2001
    iget-boolean v5, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    if-eqz v5, :cond_0

    .line 2003
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 2004
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 2005
    aget v5, v1, v3

    iget v6, p0, Landroid/widget/ScrollView;->mListWindowTop:I

    if-gt v5, v6, :cond_3

    :goto_0
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsListAtWindowTop:Z

    .line 2011
    .end local v1    # "location":[I
    :cond_0
    iget v3, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    if-nez v3, :cond_1

    .line 2012
    iget-object v3, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v3, :cond_1

    .line 2013
    iget-object v3, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    .line 2018
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2019
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_2

    if-ne p0, v0, :cond_4

    .line 2031
    :cond_2
    :goto_1
    return-void

    .end local v0    # "currentFocused":Landroid/view/View;
    .restart local v1    # "location":[I
    :cond_3
    move v3, v4

    .line 2005
    goto :goto_0

    .line 2025
    .end local v1    # "location":[I
    .restart local v0    # "currentFocused":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v0, v4, p4}, Landroid/widget/ScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2026
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2027
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2028
    iget-object v3, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 2029
    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Landroid/widget/ScrollView;->doScrollY(I)V

    goto :goto_1
.end method

.method protected onStatusBarTapScrollTop()Z
    .locals 8
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2577
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-lez v0, :cond_0

    .line 2578
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v7, v7}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 2579
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/OverScrollerExt;->springBack(IIIIII)Z

    .line 2580
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    move v3, v7

    .line 2583
    :cond_0
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature deal over scroll"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 839
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->initVelocityTrackerIfNotExists()V

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 842
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 844
    .local v13, "action":I
    and-int/lit16 v3, v13, 0xff

    packed-switch v3, :pswitch_data_0

    .line 1073
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 846
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 847
    const/4 v3, 0x0

    goto :goto_1

    .line 849
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v3}, Lcom/meizu/widget/OverScrollerExt;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    .line 850
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 851
    .local v22, "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_2

    .line 852
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 860
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v3}, Lcom/meizu/widget/OverScrollerExt;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v3}, Lcom/meizu/widget/OverScrollerExt;->abortAnimation()V

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_3

    .line 863
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 864
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 868
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 873
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 874
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 878
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mFling:Z

    goto :goto_0

    .line 849
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 883
    :pswitch_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mPullEnd:Z

    .line 884
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 885
    .local v14, "activePointerIndex":I
    const/4 v3, -0x1

    if-ne v14, v3, :cond_6

    .line 886
    const-string v3, "ScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid pointerId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in onTouchEvent MOVE"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 890
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v25, v0

    .line 891
    .local v25, "y":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    sub-int v16, v3, v25

    .line 892
    .local v16, "deltaY":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_8

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_8

    .line 893
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 894
    .restart local v22    # "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_7

    .line 895
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 899
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 901
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    .line 902
    if-lez v16, :cond_b

    .line 903
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    sub-int v16, v16, v3

    .line 909
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-eqz v3, :cond_8

    .line 910
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->springBackDelay(I)V

    .line 914
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 916
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 936
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;->scrollIfNeededForMeiZu(I)I

    move-result v5

    .line 939
    .local v5, "incrementalDeltaY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollX:I

    move/from16 v19, v0

    .line 940
    .local v19, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ScrollView;->mScrollY:I

    move/from16 v20, v0

    .line 941
    .local v20, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v9

    .line 942
    .local v9, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v21

    .line 943
    .local v21, "overscrollMode":I
    if-eqz v21, :cond_9

    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_c

    if-lez v9, :cond_c

    :cond_9
    const/4 v15, 0x1

    .line 956
    .local v15, "canOverscroll":Z
    :goto_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/ScrollView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/ScrollView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 959
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 961
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    goto/16 :goto_0

    .line 905
    .end local v5    # "incrementalDeltaY":I
    .end local v9    # "range":I
    .end local v15    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .restart local v22    # "parent":Landroid/view/ViewParent;
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mTouchSlop:I

    add-int v16, v16, v3

    goto :goto_3

    .line 943
    .end local v22    # "parent":Landroid/view/ViewParent;
    .restart local v5    # "incrementalDeltaY":I
    .restart local v9    # "range":I
    .restart local v19    # "oldX":I
    .restart local v20    # "oldY":I
    .restart local v21    # "overscrollMode":I
    :cond_c
    const/4 v15, 0x0

    goto :goto_4

    .line 989
    .end local v5    # "incrementalDeltaY":I
    .end local v9    # "range":I
    .end local v14    # "activePointerIndex":I
    .end local v16    # "deltaY":I
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v25    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    .line 990
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mPullEnd:Z

    .line 991
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    if-eqz v3, :cond_e

    .line 992
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mPullRefreshDrawType:I

    sget v4, Landroid/widget/ScrollView;->DRAW_ARC_VIEW:I

    if-ne v3, v4, :cond_e

    .line 993
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mPullRefreshListener:Lcom/meizu/widget/PullRefreshNetData;

    if-eqz v3, :cond_d

    .line 994
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mPullRefreshListener:Lcom/meizu/widget/PullRefreshNetData;

    invoke-interface {v3}, Lcom/meizu/widget/PullRefreshNetData;->startGetNetData()V

    .line 995
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    if-eqz v3, :cond_e

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    invoke-virtual {v3}, Lcom/meizu/widget/MzPullRefreshView;->setStartTime()V

    .line 999
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 1000
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1001
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v18, v0

    .line 1003
    .local v18, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_f

    .line 1015
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/ScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_11

    .line 1016
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-nez v3, :cond_10

    .line 1017
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mFling:Z

    .line 1018
    move/from16 v0, v18

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->fling(I)V

    .line 1019
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    .line 1034
    :cond_f
    :goto_5
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1035
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 1020
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    if-nez v3, :cond_f

    .line 1021
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->processSpringBack()V

    goto :goto_5

    .line 1025
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    if-nez v3, :cond_12

    .line 1026
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->processSpringBack()V

    goto :goto_5

    .line 1028
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->reportScrollStateChange(I)V

    goto :goto_5

    .line 1039
    .end local v18    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1046
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    if-nez v3, :cond_13

    .line 1047
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->processSpringBack()V

    .line 1050
    :cond_13
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    .line 1051
    invoke-direct/range {p0 .. p0}, Landroid/widget/ScrollView;->endDrag()V

    goto/16 :goto_0

    .line 1055
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    .line 1056
    .local v17, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    .line 1057
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 1061
    .end local v17    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/widget/ScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1064
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v23

    .line 1065
    .local v23, "pointerIndex":I
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_14

    .line 1066
    const-string v3, "ScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid pointerId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/ScrollView;->mActivePointerId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in onTouchEvent POINTER_UP"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1070
    :cond_14
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/ScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 844
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2328
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2330
    if-eqz p1, :cond_1

    .line 2331
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    .line 2343
    :cond_0
    :goto_0
    return-void

    .line 2332
    :cond_1
    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    .line 2339
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-eqz v0, :cond_0

    .line 2340
    sget v0, Landroid/widget/ScrollView;->SPRINGBACK_DELAY_DURATION:I

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->springBackDelay(I)V

    goto :goto_0
.end method

.method public pageScroll(I)Z
    .locals 7
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1341
    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    .line 1342
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    .line 1344
    .local v2, "height":I
    if-eqz v1, :cond_2

    .line 1345
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1346
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    .line 1347
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 1348
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1349
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1350
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1359
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1361
    iget-object v4, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/ScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_1
    move v1, v4

    .line 1341
    goto :goto_0

    .line 1354
    .restart local v1    # "down":Z
    .restart local v2    # "height":I
    :cond_2
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1355
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    .line 1356
    iget-object v5, p0, Landroid/widget/ScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1175
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1199
    :goto_0
    return v2

    .line 1178
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 1179
    goto :goto_0

    .line 1181
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 1199
    goto :goto_0

    .line 1183
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v4, v5

    .line 1184
    .local v1, "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1185
    .local v0, "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v4, :cond_2

    .line 1186
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1189
    goto :goto_0

    .line 1191
    .end local v0    # "targetScrollY":I
    .end local v1    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v1, v4, v5

    .line 1192
    .restart local v1    # "viewportHeight":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1193
    .restart local v0    # "targetScrollY":I
    iget v4, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq v0, v4, :cond_3

    .line 1194
    invoke-virtual {p0, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 1197
    goto :goto_0

    .line 1181
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature report scroll state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2614
    iget v0, p0, Landroid/widget/ScrollView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2615
    iput p1, p0, Landroid/widget/ScrollView;->mLastScrollState:I

    .line 2616
    iget-object v0, p0, Landroid/widget/ScrollView;->mOnScrollListener:Landroid/widget/ScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2617
    iget-object v0, p0, Landroid/widget/ScrollView;->mOnScrollListener:Landroid/widget/ScrollView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/ScrollView$OnScrollListener;->onScrollStateChanged(Landroid/widget/ScrollView;I)V

    .line 2621
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1852
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1853
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1858
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1859
    return-void

    .line 1856
    :cond_0
    iput-object p2, p0, Landroid/widget/ScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1901
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1904
    invoke-direct {p0, p2, p3}, Landroid/widget/ScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 683
    if-eqz p1, :cond_0

    .line 684
    invoke-direct {p0}, Landroid/widget/ScrollView;->recycleVelocityTracker()V

    .line 686
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 687
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1909
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mIsLayoutDirty:Z

    .line 1910
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1911
    return-void
.end method

.method public resetOverScrollState()V
    .locals 3
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.ScrollView.Feature clean the overscroll state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2934
    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 2935
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v0}, Lcom/meizu/widget/MzListHoldIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2936
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MzListHoldIndicator;->setHoldDrawableAlpha(F)V

    .line 2938
    :cond_0
    iput v2, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 2939
    iput-boolean v2, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 2941
    :cond_1
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2111
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2112
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2113
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p1

    .line 2114
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/ScrollView;->clamp(III)I

    move-result p2

    .line 2115
    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 2116
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2119
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setDelayTopOverScrollEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2381
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mDelaySpringBackEnabled:Z

    .line 2383
    if-eqz p1, :cond_1

    .line 2384
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-nez v0, :cond_0

    .line 2385
    new-instance v0, Lcom/meizu/widget/MzListHoldIndicator;

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/meizu/widget/MzListHoldIndicator;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    .line 2386
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    iget v1, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    .line 2392
    :cond_0
    :goto_0
    return-void

    .line 2389
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    goto :goto_0
.end method

.method public setDelayTopOverScrollOffset(I)V
    .locals 1
    .param p1, "offset"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2505
    iput p1, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    .line 2506
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v0, :cond_0

    .line 2507
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzListHoldIndicator;->setExtraOffset(I)V

    .line 2510
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    if-eqz v0, :cond_1

    .line 2511
    iget-object v0, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzPullRefreshView;->setExtraOffset(I)V

    .line 2513
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .param p1, "fillViewport"    # Z

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 541
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mFillViewport:Z

    .line 542
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 544
    :cond_0
    return-void
.end method

.method public setFriction(F)V
    .locals 2
    .param p1, "friction"    # F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2292
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    if-nez v0, :cond_0

    .line 2298
    new-instance v0, Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/widget/OverScrollerExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    .line 2301
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/OverScrollerExt;->setFriction(F)V

    .line 2302
    return-void
.end method

.method public setHoldDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "holdDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.ScrollView.Feature set custom hold Drawable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2951
    iget-object v0, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/MzListHoldIndicator;->setHoldDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2952
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidate()V

    .line 2953
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/ScrollView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ScrollView$OnScrollListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature setOnScrollListener"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2599
    iput-object p1, p0, Landroid/widget/ScrollView;->mOnScrollListener:Landroid/widget/ScrollView$OnScrollListener;

    .line 2600
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2141
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2142
    return-void
.end method

.method public setPullRefreshEnabled(ZII)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "colorValue"    # I
    .param p3, "animationType"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.AbsListView.Feature"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2403
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mPullRefreshEnabled:Z

    .line 2404
    iput p3, p0, Landroid/widget/ScrollView;->mPullRefreshDrawType:I

    .line 2405
    if-eqz p1, :cond_1

    .line 2406
    iget-object v0, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    if-nez v0, :cond_0

    .line 2407
    new-instance v0, Lcom/meizu/widget/MzPullRefreshView;

    iget-object v1, p0, Landroid/widget/ScrollView;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/widget/ScrollView;->mPullRefreshDrawType:I

    invoke-direct {v0, v1, p2, v2, p0}, Lcom/meizu/widget/MzPullRefreshView;-><init>(Landroid/content/Context;IILandroid/view/View;)V

    iput-object v0, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    .line 2408
    iget-object v0, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    iget v1, p0, Landroid/widget/ScrollView;->mHoldIndicatorOffset:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MzPullRefreshView;->setExtraOffset(I)V

    .line 2410
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    .line 2414
    :goto_0
    return-void

    .line 2412
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mSmoothScrollingEnabled:Z

    .line 559
    return-void
.end method

.method public setTopShadowEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature enable top shadow"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2673
    iput-boolean p1, p0, Landroid/widget/ScrollView;->mEnableTopShadow:Z

    .line 2674
    return-void
.end method

.method public setTouchSlopScale(F)V
    .locals 1
    .param p1, "scale"    # F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature set the Scaling of mTouchSlop"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2543
    iget v0, p0, Landroid/widget/ScrollView;->mDefaultTouchSlop:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/ScrollView;->mTouchSlop:I

    .line 2544
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldRestoreOverScroll()Z
    .locals 3
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.ScrollView.Feature whether or not restore overscroll"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2312
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 2313
    iput v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    .line 2314
    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    invoke-virtual {v1}, Lcom/meizu/widget/MzListHoldIndicator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2315
    iget-object v1, p0, Landroid/widget/ScrollView;->mHoldIndicator:Lcom/meizu/widget/MzListHoldIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/widget/MzListHoldIndicator;->setHoldDrawableAlpha(F)V

    .line 2317
    :cond_0
    iput-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    .line 2319
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mNeedRestoreOverScroll:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mIsBeingDragged:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mOverFling:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1532
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 1557
    :goto_0
    return-void

    .line 1536
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/ScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 1537
    .local v1, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 1538
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1539
    .local v3, "height":I
    invoke-virtual {p0, v10}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1540
    .local v0, "bottom":I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1541
    .local v4, "maxY":I
    iget v5, p0, Landroid/widget/ScrollView;->mScrollY:I

    .line 1542
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1544
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v7, p0, Landroid/widget/ScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Lcom/meizu/widget/OverScrollerExt;->startScroll(IIII)V

    .line 1545
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 1556
    .end local v0    # "bottom":I
    .end local v3    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView;->mLastScroll:J

    goto :goto_0

    .line 1547
    :cond_1
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v6}, Lcom/meizu/widget/OverScrollerExt;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1548
    iget-object v6, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v6}, Lcom/meizu/widget/OverScrollerExt;->abortAnimation()V

    .line 1549
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    .line 1550
    iget-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1551
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/ScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1554
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1566
    iget v0, p0, Landroid/widget/ScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/widget/ScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    .line 1567
    return-void
.end method

.method public springBackDelay(I)V
    .locals 3
    .param p1, "delayTime"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiayu@SDK.AbsListView.Feature spring back after overscrolling"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2888
    iget-boolean v0, p0, Landroid/widget/ScrollView;->mShouldDelaySpringBack:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/ScrollView;->mCurrentOverScrollDistance:I

    if-gez v0, :cond_0

    .line 2889
    iget-object v0, p0, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2890
    iget-object v0, p0, Landroid/widget/ScrollView;->mDelaySpringBack:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2892
    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 8
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "jiangjunlei@SDK.ScrollView.Feature on overscrolled"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2842
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mRefreshDelaySpringBack:Z

    .line 2843
    iget-object v0, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    if-nez v0, :cond_0

    .line 2858
    :goto_0
    return-void

    .line 2845
    :cond_0
    iget v0, p0, Landroid/widget/ScrollView;->mPullRefreshDrawType:I

    sget v1, Landroid/widget/ScrollView;->DRAW_ARC_VIEW:I

    if-ne v0, v1, :cond_2

    .line 2846
    iget-object v0, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    invoke-virtual {v0}, Lcom/meizu/widget/MzPullRefreshView;->stopDrawArcAnimation()V

    .line 2850
    :goto_1
    invoke-direct {p0}, Landroid/widget/ScrollView;->getScrollRange()I

    move-result v6

    .line 2851
    .local v6, "bottom":I
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    invoke-virtual {v0, v7, v7}, Lcom/meizu/widget/OverScrollerExt;->setEnableMZOverScroll(ZZ)V

    .line 2852
    iget-object v0, p0, Landroid/widget/ScrollView;->mScroller:Lcom/meizu/widget/OverScrollerExt;

    iget v1, p0, Landroid/widget/ScrollView;->mScrollX:I

    iget v2, p0, Landroid/widget/ScrollView;->mScrollY:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/widget/OverScrollerExt;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2853
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    .line 2854
    iput-boolean v7, p0, Landroid/widget/ScrollView;->mOverFling:Z

    .line 2856
    :cond_1
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mIsRefresh:Z

    .line 2857
    iput-boolean v3, p0, Landroid/widget/ScrollView;->mPullEnd:Z

    goto :goto_0

    .line 2848
    .end local v6    # "bottom":I
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollView;->mPullRefreshView:Lcom/meizu/widget/MzPullRefreshView;

    invoke-virtual {v0}, Lcom/meizu/widget/MzPullRefreshView;->stopDrawLineAnimation()V

    goto :goto_1
.end method
