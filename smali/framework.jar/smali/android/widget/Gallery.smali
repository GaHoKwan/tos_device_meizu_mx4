.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$PerformClick;,
        Landroid/widget/Gallery$WindowRunnnable;,
        Landroid/widget/Gallery$AdapterContextMenuInfo;,
        Landroid/widget/Gallery$ListViewDragShadowBuilder;,
        Landroid/widget/Gallery$DragShadowItem;,
        Landroid/widget/Gallery$MultiChoiceModeWrapper;,
        Landroid/widget/Gallery$MultiChoiceModeListener;,
        Landroid/widget/Gallery$OnScrollListener;,
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$FlingRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public static final CHOICE_MODE_MULTIPLE:I = 0x1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable for choice mode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public static final CHOICE_MODE_SINGLE:I = 0x0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable for choice mode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mChangeChildAlphaWhenDragView:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable for show whether or not hide the dragged view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mCheckStates:Landroid/util/SparseBooleanArray;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable for checked item count"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mChoiceActionMode:Landroid/view/ActionMode;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable for aciton mode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mChoiceMode:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mContextMenuInfo:Landroid/widget/Gallery$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragAndDropPosition:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragEnable:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragOffsetX:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragOffsetY:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragScrollY:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragViewBackground:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable for background"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragViewBackgroundDelete:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mDragViewBackgroundFilter:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLastScrollState:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mLeftMost:I

.field mMotionX:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mMotionY:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mPerformClick:Landroid/widget/Gallery$PerformClick;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShadowBuilder:Landroid/widget/Gallery$ListViewDragShadowBuilder;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchFrame:Landroid/graphics/Rect;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature add variable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 418
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 421
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 422
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 425
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    iput v6, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 102
    const/16 v5, 0x190

    iput v5, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 139
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 145
    new-instance v5, Landroid/widget/Gallery$1;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 170
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 175
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 201
    iput-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 240
    iput v6, p0, Landroid/widget/Gallery;->mChoiceMode:I

    .line 303
    iput-boolean v6, p0, Landroid/widget/Gallery;->mChangeChildAlphaWhenDragView:Z

    .line 309
    const v5, 0x1080633

    iput v5, p0, Landroid/widget/Gallery;->mDragViewBackground:I

    .line 316
    const v5, 0x1080632

    iput v5, p0, Landroid/widget/Gallery;->mDragViewBackgroundFilter:I

    .line 323
    const v5, 0x1080631

    iput v5, p0, Landroid/widget/Gallery;->mDragViewBackgroundDelete:I

    .line 348
    iput v6, p0, Landroid/widget/Gallery;->mDragScrollY:I

    .line 354
    iput v8, p0, Landroid/widget/Gallery;->mDragAndDropPosition:I

    .line 360
    iput v6, p0, Landroid/widget/Gallery;->mDragOffsetX:I

    .line 366
    iput v6, p0, Landroid/widget/Gallery;->mDragOffsetY:I

    .line 390
    iput-boolean v6, p0, Landroid/widget/Gallery;->mDragEnable:Z

    .line 406
    iput v6, p0, Landroid/widget/Gallery;->mLastScrollState:I

    .line 427
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 428
    iget-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 430
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 433
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 434
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 435
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setGravity(I)V

    .line 438
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 440
    .local v1, "animationDuration":I
    if-lez v1, :cond_1

    .line 441
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 444
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 446
    .local v3, "spacing":I
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 448
    const/4 v5, 0x3

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 450
    .local v4, "unselectedAlpha":F
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 452
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 456
    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    .line 458
    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    .line 459
    return-void
.end method

.method static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/Gallery;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/widget/Gallery;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 81
    iput-object p1, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/widget/Gallery;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/widget/Gallery;->clearChoices()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/Gallery;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/widget/Gallery;->invalidateViews()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mDragViewBackground:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mDragViewBackgroundFilter:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mDragViewBackgroundDelete:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mDragScrollY:I

    return v0
.end method

.method static synthetic access$2102(Landroid/widget/Gallery;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Landroid/widget/Gallery;->mDragScrollY:I

    return p1
.end method

.method static synthetic access$2200(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mDragOffsetX:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mDragOffsetY:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/Gallery;Landroid/view/View;IJ)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->performItemClicks(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/Gallery;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/widget/Gallery;->mChangeChildAlphaWhenDragView:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/Gallery;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/Gallery;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget v0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/Gallery;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/Gallery;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$702(Landroid/widget/Gallery;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$802(Landroid/widget/Gallery;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/Gallery;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$900(Landroid/widget/Gallery;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/Gallery;

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    .prologue
    .line 1230
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Gallery;->getMeasuredHeight()I

    move-result v3

    .line 1231
    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1233
    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    .line 1235
    .local v2, "childTop":I
    iget v4, p0, Landroid/widget/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 1248
    :goto_2
    return v2

    .line 1230
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 1231
    .restart local v3    # "myHeight":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 1237
    .restart local v1    # "childHeight":I
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 1238
    goto :goto_2

    .line 1240
    :sswitch_1
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 1242
    .local v0, "availableSpace":I
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 1243
    goto :goto_2

    .line 1245
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 1235
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private clearChoices()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2229
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2232
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 2233
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2235
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    .line 2236
    return-void
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .param p1, "toLeft"    # Z

    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v7

    .line 724
    .local v7, "numChildren":I
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 725
    .local v2, "firstPosition":I
    const/4 v8, 0x0

    .line 726
    .local v8, "start":I
    const/4 v1, 0x0

    .line 728
    .local v1, "count":I
    if-eqz p1, :cond_5

    .line 729
    iget v3, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 730
    .local v3, "galleryLeft":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 731
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_3

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 732
    .local v6, "n":I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 733
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_4

    .line 741
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_0
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v9, :cond_1

    .line 742
    const/4 v8, 0x0

    .line 762
    .end local v3    # "galleryLeft":I
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v1}, Landroid/widget/Gallery;->detachViewsFromParent(II)V

    .line 764
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v9, :cond_2

    .line 765
    iget v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 767
    :cond_2
    return-void

    .restart local v3    # "galleryLeft":I
    :cond_3
    move v6, v5

    .line 731
    goto :goto_1

    .line 736
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "n":I
    :cond_4
    move v8, v6

    .line 737
    add-int/lit8 v1, v1, 0x1

    .line 738
    iget-object v9, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 730
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 745
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v4, v9, v10

    .line 746
    .local v4, "galleryRight":I
    add-int/lit8 v5, v7, -0x1

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_6

    .line 747
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_7

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 748
    .restart local v6    # "n":I
    :goto_4
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 749
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v4, :cond_8

    .line 757
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_6
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_1

    .line 758
    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    move v6, v5

    .line 747
    goto :goto_4

    .line 752
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "n":I
    :cond_8
    move v8, v6

    .line 753
    add-int/lit8 v1, v1, 0x1

    .line 754
    iget-object v9, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 746
    add-int/lit8 v5, v5, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1554
    const/4 v6, 0x0

    .line 1556
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1561
    :cond_0
    if-nez v6, :cond_1

    .line 1562
    new-instance v0, Landroid/widget/Gallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/Gallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/Gallery$AdapterContextMenuInfo;

    .line 1563
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1566
    :cond_1
    if-eqz v6, :cond_2

    .line 1567
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1570
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 1490
    if-eqz p1, :cond_0

    .line 1491
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1494
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1495
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1499
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1500
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1499
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1503
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1504
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    .line 972
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 973
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    .line 977
    :goto_0
    return-void

    .line 975
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1011
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 1012
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 1015
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1019
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1020
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 1021
    .local v0, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 1029
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 1030
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 1034
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 1037
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 1038
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1024
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    .line 1025
    .restart local v0    # "curPosition":I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 1026
    .restart local v1    # "curRightEdge":I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1040
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 9

    .prologue
    .line 980
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 981
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 982
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    .line 983
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 986
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 990
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 991
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v0, v7, v4

    .line 992
    .local v0, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 1000
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v0, v7, :cond_1

    .line 1001
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v0, v7

    const/4 v8, 0x0

    invoke-direct {p0, v0, v7, v1, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 1005
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .restart local v0    # "curPosition":I
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 996
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 997
    .restart local v1    # "curRightEdge":I
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1008
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    .line 1043
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 1044
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    .line 1048
    :goto_0
    return-void

    .line 1046
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1082
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 1083
    .local v3, "itemSpacing":I
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 1084
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    .line 1085
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 1088
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1092
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 1093
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 1094
    .local v1, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 1101
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 1102
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 1106
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 1107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1096
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1    # "curPosition":I
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 1097
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 1098
    .restart local v0    # "curLeftEdge":I
    iput-boolean v9, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1109
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1051
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 1052
    .local v3, "itemSpacing":I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 1055
    .local v2, "galleryRight":I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1059
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 1060
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 1061
    .local v1, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 1068
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz v1, :cond_1

    .line 1069
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 1073
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 1076
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 1077
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1063
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    const/4 v1, 0x0

    .line 1064
    .restart local v1    # "curPosition":I
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 1065
    .restart local v0    # "curLeftEdge":I
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1079
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 713
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private invalidateViews()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2357
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Gallery;->mDataChanged:Z

    .line 2358
    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 2359
    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    .line 2360
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 2361
    return-void
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    .prologue
    .line 1129
    iget-boolean v3, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 1130
    iget-object v3, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 1131
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1136
    .local v2, "childLeft":I
    iget v3, p0, Landroid/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 1138
    iget v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 1141
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1153
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childLeft":I
    .local v1, "child":Landroid/view/View;
    :goto_0
    return-object v1

    .line 1148
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1151
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1153
    .end local v0    # "child":Landroid/view/View;
    .restart local v1    # "child":Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 697
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 698
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 697
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 700
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 812
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 813
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 816
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 818
    :cond_0
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 819
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 820
    return-void
.end method

.method private performItemClicks(Landroid/view/View;IJ)Z
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2844
    const/4 v15, 0x0

    .line 2845
    .local v15, "handled":Z
    const/4 v14, 0x1

    .line 2847
    .local v14, "dispatchItemClick":Z
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v1, :cond_3

    .line 2848
    const/4 v15, 0x1

    .line 2849
    const/4 v13, 0x0

    .line 2851
    .local v13, "checkedStateChanged":Z
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mChoiceMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 2852
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v6, 0x1

    .line 2853
    .local v6, "checked":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    move/from16 v0, p2

    invoke-virtual {v1, v0, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2854
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2855
    if-eqz v6, :cond_6

    .line 2856
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2861
    :cond_0
    :goto_1
    if-eqz v6, :cond_7

    .line 2862
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    .line 2866
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 2867
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Gallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2869
    const/4 v14, 0x0

    .line 2871
    :cond_1
    const/4 v13, 0x1

    .line 2874
    .end local v6    # "checked":Z
    :cond_2
    if-eqz v13, :cond_3

    .line 2875
    invoke-direct/range {p0 .. p0}, Landroid/widget/Gallery;->updateOnScreenCheckedViews()V

    .line 2879
    .end local v13    # "checkedStateChanged":Z
    :cond_3
    if-eqz v14, :cond_8

    .line 2880
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_8

    .line 2881
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    .line 2882
    if-eqz p1, :cond_4

    .line 2883
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2885
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/Gallery;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-wide/from16 v11, p3

    invoke-interface/range {v7 .. v12}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2886
    const/4 v1, 0x1

    .line 2890
    :goto_3
    return v1

    .line 2852
    .restart local v13    # "checkedStateChanged":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2858
    .restart local v6    # "checked":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 2864
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    goto :goto_2

    .line 2890
    .end local v6    # "checked":Z
    .end local v13    # "checkedStateChanged":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private scrollIntoSlots()V
    .locals 6
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature report scroll state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 780
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 781
    :cond_0
    iget v3, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eqz v3, :cond_1

    .line 782
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 786
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_3

    .line 809
    :cond_2
    :goto_0
    return-void

    .line 788
    :cond_3
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 789
    .local v1, "selectedCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    .line 791
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    .line 794
    .local v0, "scrollAmount":I
    if-eqz v0, :cond_5

    .line 795
    iget v3, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eq v3, v5, :cond_4

    .line 796
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 804
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 805
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 799
    :cond_5
    iget v3, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eqz v3, :cond_4

    .line 800
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    goto :goto_1

    .line 807
    :cond_6
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 5
    .param p1, "childPosition"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature report scroll state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1657
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1659
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1660
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v3

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v4

    sub-int v1, v3, v4

    .line 1663
    .local v1, "distance":I
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 1665
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 1669
    .end local v1    # "distance":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 835
    iget-object v7, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 836
    .local v7, "selView":Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v3

    .line 841
    .local v3, "galleryCenter":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 846
    :cond_2
    const v2, 0x7fffffff

    .line 847
    .local v2, "closestEdgeDistance":I
    const/4 v6, 0x0

    .line 848
    .local v6, "newSelectedChildIndex":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 850
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 852
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 854
    move v6, v4

    .line 866
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    iget v8, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v5, v8, v6

    .line 868
    .local v5, "newPos":I
    iget v8, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 869
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 870
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 871
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    goto :goto_0

    .line 858
    .end local v5    # "newPos":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 860
    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_5

    .line 861
    move v2, v1

    .line 862
    move v6, v4

    .line 848
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1176
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 1177
    .local v6, "lp":Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 1178
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 1181
    .restart local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    :cond_0
    iget-boolean v8, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p4, v8, :cond_2

    const/4 v8, -0x1

    :goto_0
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v8, v6, v9}, Landroid/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1186
    iget v8, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-nez v8, :cond_1

    .line 1187
    if-nez p2, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1191
    :cond_1
    iget v8, p0, Landroid/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1193
    .local v1, "childHeightSpec":I
    iget v8, p0, Landroid/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1197
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1203
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1204
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 1206
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1207
    .local v7, "width":I
    if-eqz p4, :cond_4

    .line 1208
    move v2, p3

    .line 1209
    .local v2, "childLeft":I
    add-int v3, v2, v7

    .line 1215
    .local v3, "childRight":I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1219
    invoke-direct {p0, p1}, Landroid/widget/Gallery;->setUpChildForMeizu(Landroid/view/View;)V

    .line 1221
    return-void

    .line 1181
    .end local v0    # "childBottom":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidthSpec":I
    .end local v7    # "width":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 1187
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1211
    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v7    # "width":I
    :cond_4
    sub-int v2, p3, v7

    .line 1212
    .restart local v2    # "childLeft":I
    move v3, p3

    .restart local v3    # "childRight":I
    goto :goto_2
.end method

.method private setUpChildForMeizu(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature for multi choice"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2974
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/Gallery;->mDragEnable:Z

    if-eqz v0, :cond_0

    .line 2975
    new-instance v0, Landroid/widget/Gallery$3;

    invoke-direct {v0, p0}, Landroid/widget/Gallery$3;-><init>(Landroid/widget/Gallery;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 3063
    :cond_0
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2953
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 2954
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    .line 2955
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 2957
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2958
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2959
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 2961
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 2962
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2957
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2955
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2963
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 2964
    iget-object v6, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 2967
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private updateSelectedItemMetadata()V
    .locals 6
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1686
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1688
    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1689
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1718
    :cond_0
    :goto_0
    return-void

    .line 1694
    :cond_1
    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-nez v2, :cond_0

    .line 1699
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1700
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1702
    invoke-virtual {p0}, Landroid/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1703
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1708
    :cond_2
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    .line 1711
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1715
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public changeChildAlphaWhenDragView(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature set flag for enable hide the view which is dragged"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2616
    iput-boolean p1, p0, Landroid/widget/Gallery;->mChangeChildAlphaWhenDragView:Z

    .line 2617
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 560
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 17
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature update checked id after data changed"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2898
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2900
    const/4 v7, 0x0

    .line 2901
    .local v7, "checkedCountChanged":Z
    const/4 v8, 0x0

    .local v8, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_6

    .line 2902
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 2903
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2904
    .local v3, "lastPos":I
    const-wide/16 v11, -0x1

    .line 2905
    .local v11, "lastPosId":J
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v3, v1, :cond_0

    .line 2906
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v11

    .line 2908
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v3, v1, :cond_1

    cmp-long v1, v4, v11

    if-eqz v1, :cond_5

    .line 2910
    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 2911
    .local v16, "start":I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Gallery;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2912
    .local v9, "end":I
    const/4 v10, 0x0

    .line 2913
    .local v10, "found":Z
    move/from16 v15, v16

    .local v15, "searchPos":I
    :goto_1
    if-ge v15, v9, :cond_2

    .line 2914
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v15}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v13

    .line 2915
    .local v13, "searchId":J
    cmp-long v1, v4, v13

    if-nez v1, :cond_4

    .line 2916
    const/4 v10, 0x1

    .line 2917
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2918
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 2923
    .end local v13    # "searchId":J
    :cond_2
    if-nez v10, :cond_3

    .line 2924
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2925
    add-int/lit8 v8, v8, -0x1

    .line 2926
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/widget/Gallery;->mCheckedItemCount:I

    .line 2927
    const/4 v7, 0x1

    .line 2928
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2929
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Gallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2901
    .end local v9    # "end":I
    .end local v10    # "found":Z
    .end local v15    # "searchPos":I
    .end local v16    # "start":I
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 2913
    .restart local v9    # "end":I
    .restart local v10    # "found":Z
    .restart local v13    # "searchId":J
    .restart local v15    # "searchPos":I
    .restart local v16    # "start":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2934
    .end local v9    # "end":I
    .end local v10    # "found":Z
    .end local v13    # "searchId":J
    .end local v15    # "searchPos":I
    .end local v16    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 2938
    .end local v3    # "lastPos":I
    .end local v4    # "id":J
    .end local v11    # "lastPosId":J
    :cond_6
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7

    .line 2939
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 2941
    :cond_7
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2752
    new-instance v0, Landroid/widget/Gallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/Gallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 1576
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 1519
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1522
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1513
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 578
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 570
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 565
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature get checked item count"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2384
    iget v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2450
    iget v4, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v4, :cond_2

    .line 2451
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 2461
    :cond_1
    return-object v3

    .line 2454
    :cond_2
    iget-object v2, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2455
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2456
    .local v0, "count":I
    new-array v3, v0, [J

    .line 2458
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2459
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 2458
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2403
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 2404
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1736
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1739
    .local v0, "selectedIndex":I
    if-gez v0, :cond_1

    .line 1749
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 1741
    .restart local p2    # "i":I
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1743
    goto :goto_0

    .line 1744
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1746
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 597
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature only support CHOICE_MODE_SINGLE"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 530
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 537
    :goto_0
    return v1

    .line 534
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 535
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_1
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/Gallery$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    .prologue
    const/4 v5, 0x0

    .line 659
    iget-boolean v6, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v6, :cond_1

    iget v6, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 660
    .local v3, "extremeItemPosition":I
    :goto_0
    iget v6, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 662
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 685
    :cond_0
    :goto_1
    return v5

    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_1
    move v3, v5

    .line 659
    goto :goto_0

    .line 666
    .restart local v1    # "extremeChild":Landroid/view/View;
    .restart local v3    # "extremeItemPosition":I
    :cond_2
    invoke-static {v1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 667
    .local v2, "extremeChildCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v4

    .line 669
    .local v4, "galleryCenter":I
    if-eqz p1, :cond_4

    .line 670
    if-le v2, v4, :cond_0

    .line 683
    :cond_3
    sub-int v0, v4, v2

    .line 685
    .local v0, "centerDifference":I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 676
    .end local v0    # "centerDifference":I
    :cond_4
    if-lt v2, v4, :cond_3

    goto :goto_1

    .line 685
    .restart local v0    # "centerDifference":I
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method invokeOnItemScrollListener()V
    .locals 4
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1987
    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/Gallery$OnScrollListener;->onScroll(Landroid/widget/Gallery;III)V

    .line 1991
    :cond_0
    return-void
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2427
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 8
    .param p1, "delta"    # I
    .param p2, "animate"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature update variables and invoke listener"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 892
    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 894
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 895
    .local v0, "childrenLeft":I
    iget v4, p0, Landroid/widget/Gallery;->mRight:I

    iget v5, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 897
    .local v1, "childrenWidth":I
    iget-boolean v4, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 898
    invoke-virtual {p0}, Landroid/widget/Gallery;->handleDataChanged()V

    .line 902
    :cond_0
    iget-boolean v4, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 903
    invoke-virtual {p0}, Landroid/widget/Gallery;->confirmCheckedPositionsById()V

    .line 909
    :cond_1
    iget v4, p0, Landroid/widget/Gallery;->mItemCount:I

    if-nez v4, :cond_2

    .line 910
    invoke-virtual {p0}, Landroid/widget/Gallery;->resetList()V

    .line 913
    invoke-virtual {p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    .line 969
    :goto_0
    return-void

    .line 919
    :cond_2
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    if-ltz v4, :cond_3

    .line 920
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 924
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Gallery;->recycleAllViews()V

    .line 928
    invoke-virtual {p0}, Landroid/widget/Gallery;->detachAllViewsFromParent()V

    .line 934
    iput v6, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 935
    iput v6, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 943
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 944
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-direct {p0, v4, v6, v6, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 947
    .local v2, "sel":Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    add-int v3, v4, v5

    .line 949
    .local v3, "selectedOffset":I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 951
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 952
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 955
    iget-object v4, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 957
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 958
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    .line 960
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->setDataChanged(Z)Z

    .line 961
    iput-boolean v6, p0, Landroid/widget/Gallery;->mNeedSync:Z

    .line 962
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 964
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 967
    invoke-virtual {p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1644
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1645
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1646
    const/4 v0, 0x1

    .line 1648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1635
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1636
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1637
    const/4 v0, 0x1

    .line 1639
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1439
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 1440
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature save x and y for multiple choice"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1394
    iget v0, p0, Landroid/widget/Gallery;->mLastScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1395
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 1400
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1405
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 1406
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1407
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1411
    :cond_1
    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Gallery;->mMotionX:I

    .line 1416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Gallery;->mMotionY:I

    .line 1420
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature report scroll state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1317
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1321
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1324
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1328
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 1332
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1334
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature Multiple choice"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1759
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1762
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v0, v1, :cond_1

    .line 1776
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1773
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1780
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1781
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1782
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 1786
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1787
    const-class v1, Landroid/widget/Gallery;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1788
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1789
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1790
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1791
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1793
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_1

    .line 1794
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1797
    :cond_1
    return-void

    .line 1788
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1585
    sparse-switch p1, :sswitch_data_0

    .line 1605
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 1588
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1589
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1594
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1595
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1601
    :sswitch_2
    iput-boolean v0, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1585
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1610
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1611
    iget-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1612
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v1, :cond_0

    .line 1613
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1614
    new-instance v1, Landroid/widget/Gallery$2;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1621
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1622
    .local v0, "selectedIndex":I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1628
    .end local v0    # "selectedIndex":I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1629
    const/4 v1, 0x1

    .line 1631
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 584
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Gallery;->mInLayout:Z

    .line 591
    invoke-virtual {p0, v1, v1}, Landroid/widget/Gallery;->layout(IZ)V

    .line 592
    iput-boolean v1, p0, Landroid/widget/Gallery;->mInLayout:Z

    .line 593
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature multiple choice"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1449
    iget v9, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v9, :cond_0

    .line 1478
    :goto_0
    return-void

    .line 1455
    :cond_0
    iget v9, p0, Landroid/widget/Gallery;->mChoiceMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1456
    iget v7, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1457
    .local v7, "motionPosition":I
    iget v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v9, v7, v9

    invoke-virtual {p0, v9}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1458
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1459
    iget v6, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1460
    .local v6, "longPressPosition":I
    iget-object v9, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v10, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v9, v10}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1462
    .local v4, "longPressId":J
    const/4 v1, 0x0

    .line 1463
    .local v1, "handled":Z
    const/4 v8, 0x1

    .line 1464
    .local v8, "perforLongPress":Z
    if-eqz v8, :cond_1

    iget-boolean v9, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-nez v9, :cond_1

    .line 1465
    invoke-virtual {p0, v0, v6, v4, v5}, Landroid/widget/Gallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 1467
    :cond_1
    if-eqz v1, :cond_2

    .line 1468
    invoke-virtual {p0, v11}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1469
    invoke-virtual {v0, v11}, Landroid/view/View;->setPressed(Z)V

    .line 1475
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "handled":Z
    .end local v4    # "longPressId":J
    .end local v6    # "longPressPosition":I
    .end local v7    # "motionPosition":I
    .end local v8    # "perforLongPress":Z
    :cond_2
    invoke-virtual {p0, v11}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1476
    iget v9, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v9}, Landroid/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 1477
    .local v2, "id":J
    iget-object v9, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v10, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v9, v10, v2, v3}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature report scroll state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1355
    iget-object v0, p0, Landroid/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1359
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_3

    .line 1360
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1366
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1367
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1374
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_2

    .line 1375
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->reportScrollStateChange(I)V

    .line 1380
    :cond_2
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1382
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1383
    return v3

    .line 1370
    :cond_3
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1484
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature for multiple choice"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1275
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v2, :cond_5

    .line 1278
    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v2, v1, :cond_3

    .line 1279
    iget-object v2, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_0

    .line 1281
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1284
    :cond_0
    iget-object v2, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    if-nez v2, :cond_1

    .line 1285
    new-instance v2, Landroid/widget/Gallery$PerformClick;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/Gallery$PerformClick;-><init>(Landroid/widget/Gallery;Landroid/widget/Gallery$1;)V

    iput-object v2, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    .line 1289
    :cond_1
    iget-object v0, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    .line 1290
    .local v0, "performClick":Landroid/widget/Gallery$PerformClick;
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iput v2, v0, Landroid/widget/Gallery$PerformClick;->mClickMotionPosition:I

    .line 1291
    invoke-virtual {v0}, Landroid/widget/Gallery$PerformClick;->rememberWindowAttachCount()V

    .line 1292
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    .line 1307
    .end local v0    # "performClick":Landroid/widget/Gallery$PerformClick;
    :cond_2
    :goto_0
    return v1

    .line 1297
    :cond_3
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1300
    iget-boolean v2, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v2, :cond_4

    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ne v2, v3, :cond_2

    .line 1301
    :cond_4
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v4, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v5, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v4, v5}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0

    .line 1307
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1255
    iget-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1257
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1258
    .local v0, "action":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1260
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 1265
    :cond_0
    :goto_0
    return v1

    .line 1261
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1262
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    # getter for: Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$300(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 1432
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    .line 1433
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 1801
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1802
    const/4 v1, 0x1

    .line 1818
    :cond_0
    :goto_0
    return v1

    .line 1804
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1806
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 1807
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1808
    .local v0, "currentChildIndex":I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .line 1812
    .end local v0    # "currentChildIndex":I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v2, :cond_0

    .line 1813
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1814
    .restart local v0    # "currentChildIndex":I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .line 1804
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2469
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 2470
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2473
    :cond_0
    iput p2, p0, Landroid/widget/Gallery;->mDragAndDropPosition:I

    .line 2474
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2475
    .local v6, "checkbox":Landroid/view/View;
    if-eqz v6, :cond_1

    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    move-object v0, v6

    .line 2476
    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2479
    :cond_1
    iget-object v7, p0, Landroid/widget/Gallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2480
    .local v7, "frame":Landroid/graphics/Rect;
    if-nez v7, :cond_2

    .line 2481
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Gallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2482
    iget-object v7, p0, Landroid/widget/Gallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2484
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2486
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/Gallery;->mMotionX:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDragOffsetX:I

    .line 2487
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/Gallery;->mMotionY:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDragOffsetY:I

    .line 2489
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 2490
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2492
    iget-boolean v0, p0, Landroid/widget/Gallery;->mDragEnable:Z

    if-eqz v0, :cond_b

    .line 2493
    instance-of v0, p1, Landroid/widget/Gallery$DragShadowItem;

    if-eqz v0, :cond_6

    move-object v9, p1

    .line 2494
    check-cast v9, Landroid/widget/Gallery$DragShadowItem;

    .line 2495
    .local v9, "item":Landroid/widget/Gallery$DragShadowItem;
    new-instance v0, Landroid/widget/Gallery$ListViewDragShadowBuilder;

    invoke-interface {v9}, Landroid/widget/Gallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v9}, Landroid/widget/Gallery$DragShadowItem;->needBackground()Z

    move-result v2

    invoke-interface {v9}, Landroid/widget/Gallery$DragShadowItem;->getDragViewShowPosition()Landroid/graphics/Point;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/Gallery$ListViewDragShadowBuilder;-><init>(Landroid/widget/Gallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mShadowBuilder:Landroid/widget/Gallery$ListViewDragShadowBuilder;

    .line 2500
    .end local v9    # "item":Landroid/widget/Gallery$DragShadowItem;
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Gallery;->mShadowBuilder:Landroid/widget/Gallery$ListViewDragShadowBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p0, v2}, Landroid/widget/Gallery;->startDragMz(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2501
    if-eqz v6, :cond_3

    instance-of v0, v6, Landroid/widget/Checkable;

    if-eqz v0, :cond_3

    .line 2502
    check-cast v6, Landroid/widget/Checkable;

    .end local v6    # "checkbox":Landroid/view/View;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2504
    :cond_3
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2505
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Gallery;->mDragAndDropPosition:I

    .line 2507
    iget-object v0, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    if-nez v0, :cond_4

    .line 2508
    new-instance v0, Landroid/widget/Gallery$PerformClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Gallery$PerformClick;-><init>(Landroid/widget/Gallery;Landroid/widget/Gallery$1;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    .line 2511
    :cond_4
    iget-object v10, p0, Landroid/widget/Gallery;->mPerformClick:Landroid/widget/Gallery$PerformClick;

    .line 2512
    .local v10, "performClick":Landroid/widget/Gallery$PerformClick;
    iput p2, v10, Landroid/widget/Gallery$PerformClick;->mClickMotionPosition:I

    .line 2513
    invoke-virtual {v10}, Landroid/widget/Gallery$PerformClick;->rememberWindowAttachCount()V

    .line 2514
    invoke-virtual {p0, v10}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    .line 2515
    const/4 v8, 0x1

    .line 2549
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v10    # "performClick":Landroid/widget/Gallery$PerformClick;
    :cond_5
    :goto_1
    return v8

    .line 2497
    .restart local v6    # "checkbox":Landroid/view/View;
    .restart local v7    # "frame":Landroid/graphics/Rect;
    :cond_6
    new-instance v0, Landroid/widget/Gallery$ListViewDragShadowBuilder;

    invoke-direct {v0, p0, p1}, Landroid/widget/Gallery$ListViewDragShadowBuilder;-><init>(Landroid/widget/Gallery;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mShadowBuilder:Landroid/widget/Gallery$ListViewDragShadowBuilder;

    goto :goto_0

    .line 2518
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 2519
    instance-of v0, p1, Landroid/widget/Gallery$DragShadowItem;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 2520
    check-cast v0, Landroid/widget/Gallery$DragShadowItem;

    invoke-interface {v0}, Landroid/widget/Gallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v11

    .line 2521
    .local v11, "v":Landroid/view/View;
    if-eqz v11, :cond_8

    .line 2522
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2524
    :cond_8
    iget-boolean v0, p0, Landroid/widget/Gallery;->mChangeChildAlphaWhenDragView:Z

    if-eqz v0, :cond_9

    .line 2525
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2535
    .end local v6    # "checkbox":Landroid/view/View;
    .end local v7    # "frame":Landroid/graphics/Rect;
    .end local v11    # "v":Landroid/view/View;
    :cond_9
    :goto_2
    const/4 v8, 0x1

    goto :goto_1

    .line 2528
    .restart local v6    # "checkbox":Landroid/view/View;
    .restart local v7    # "frame":Landroid/graphics/Rect;
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 2531
    :cond_b
    iget v0, p0, Landroid/widget/Gallery;->mDragAndDropPosition:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Gallery;->setItemChecked(IZ)V

    goto :goto_2

    .line 2538
    .end local v6    # "checkbox":Landroid/view/View;
    .end local v7    # "frame":Landroid/graphics/Rect;
    :cond_c
    const/4 v8, 0x0

    .line 2539
    .local v8, "handled":Z
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_d

    .line 2540
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v8

    .line 2542
    :cond_d
    if-nez v8, :cond_e

    .line 2543
    invoke-virtual/range {p0 .. p4}, Landroid/widget/Gallery;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery$AdapterContextMenuInfo;

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/Gallery$AdapterContextMenuInfo;

    .line 2544
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v8

    .line 2546
    :cond_e
    if-eqz v8, :cond_5

    .line 2547
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .param p1, "newState"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2005
    iget v0, p0, Landroid/widget/Gallery;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2006
    iput p1, p0, Landroid/widget/Gallery;->mLastScrollState:I

    .line 2007
    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/Gallery$OnScrollListener;->onScrollStateChanged(Landroid/widget/Gallery;I)V

    .line 2012
    :cond_0
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 825
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 827
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 79
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature override setAdapter"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2090
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2091
    if-eqz p1, :cond_2

    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v0, :cond_2

    .line 2092
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 2093
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2095
    :cond_0
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 2096
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2098
    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->clearChoices()V

    .line 2100
    :cond_2
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    .prologue
    .line 497
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 498
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 472
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    .prologue
    .line 484
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 485
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .param p1, "choiceMode"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature set choice mode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2201
    iput p1, p0, Landroid/widget/Gallery;->mChoiceMode:I

    .line 2202
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2203
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2206
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 2207
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 2208
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2210
    :cond_1
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2211
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2214
    :cond_2
    iget v0, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v0, v1, :cond_3

    .line 2215
    invoke-direct {p0}, Landroid/widget/Gallery;->clearChoices()V

    .line 2216
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setLongClickable(Z)V

    .line 2219
    :cond_3
    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature whether or not drag when multiple choice"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2081
    iput-boolean p1, p0, Landroid/widget/Gallery;->mDragEnable:Z

    .line 2082
    return-void
.end method

.method public setDragItemBackgroundResources([I)V
    .locals 3
    .param p1, "bgres"    # [I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2594
    if-eqz p1, :cond_2

    .line 2595
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2596
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Landroid/widget/Gallery;->mDragViewBackground:I

    .line 2598
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 2599
    aget v0, p1, v1

    iput v0, p0, Landroid/widget/Gallery;->mDragViewBackgroundFilter:I

    .line 2601
    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 2602
    aget v0, p1, v2

    iput v0, p0, Landroid/widget/Gallery;->mDragViewBackgroundDelete:I

    .line 2605
    :cond_2
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1728
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1729
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 1730
    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    .line 1732
    :cond_0
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "value"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature set item check state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2118
    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 2184
    :cond_0
    :goto_0
    return-void

    .line 2123
    :cond_1
    if-eqz p2, :cond_4

    iget-object v2, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v2, v0, :cond_4

    .line 2125
    iget-object v2, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/Gallery$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2127
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StaggeredGridView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2131
    :cond_3
    iget-object v2, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2134
    :cond_4
    iget v2, p0, Landroid/widget/Gallery;->mChoiceMode:I

    if-ne v2, v0, :cond_a

    .line 2135
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 2136
    .local v6, "oldValue":Z
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2137
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2138
    if-eqz p2, :cond_8

    .line 2139
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2144
    :cond_5
    :goto_1
    if-eq v6, p2, :cond_6

    .line 2145
    if-eqz p2, :cond_9

    .line 2146
    iget v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    .line 2151
    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 2152
    iget-object v0, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    .line 2153
    .local v3, "id":J
    iget-object v0, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    iget-object v1, p0, Landroid/widget/Gallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Gallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2180
    .end local v3    # "id":J
    .end local v6    # "oldValue":Z
    :cond_7
    :goto_3
    iget-boolean v0, p0, Landroid/widget/Gallery;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2181
    invoke-direct {p0}, Landroid/widget/Gallery;->invalidateViews()V

    goto :goto_0

    .line 2141
    .restart local v6    # "oldValue":Z
    :cond_8
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 2148
    :cond_9
    iget v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    goto :goto_2

    .line 2157
    .end local v6    # "oldValue":Z
    :cond_a
    iget-object v2, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_e

    move v7, v0

    .line 2160
    .local v7, "updateIds":Z
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2161
    :cond_b
    iget-object v2, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2162
    if-eqz v7, :cond_c

    .line 2163
    iget-object v2, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 2168
    :cond_c
    if-eqz p2, :cond_f

    .line 2169
    iget-object v1, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2170
    if-eqz v7, :cond_d

    .line 2171
    iget-object v1, p0, Landroid/widget/Gallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2173
    :cond_d
    iput v0, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    goto :goto_3

    .end local v7    # "updateIds":Z
    :cond_e
    move v7, v1

    .line 2157
    goto :goto_4

    .line 2174
    .restart local v7    # "updateIds":Z
    :cond_f
    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/Gallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2175
    :cond_10
    iput v1, p0, Landroid/widget/Gallery;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Landroid/widget/Gallery$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/Gallery$MultiChoiceModeListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2255
    iget-object v0, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 2256
    new-instance v0, Landroid/widget/Gallery$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/Gallery$MultiChoiceModeWrapper;-><init>(Landroid/widget/Gallery;)V

    iput-object v0, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    .line 2258
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mMultiChoiceModeCallback:Landroid/widget/Gallery$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/Gallery$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/Gallery$MultiChoiceModeListener;)V

    .line 2259
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/Gallery$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/Gallery$OnScrollListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1973
    iput-object p1, p0, Landroid/widget/Gallery;->mOnScrollListener:Landroid/widget/Gallery$OnScrollListener;

    .line 1974
    invoke-virtual {p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    .line 1975
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1674
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1677
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1678
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 508
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 509
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .param p1, "unselectedAlpha"    # F

    .prologue
    .line 519
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    .line 520
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1544
    invoke-virtual {p0}, Landroid/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1545
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1546
    .local v0, "index":I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1547
    .local v1, "v":Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/Gallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1550
    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 1532
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1533
    .local v2, "longPressPosition":I
    if-gez v2, :cond_0

    .line 1534
    const/4 v3, 0x0

    .line 1538
    :goto_0
    return v3

    .line 1537
    :cond_0
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1538
    .local v0, "longPressId":J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 8
    .param p1, "deltaX"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "zhangxin@SDK.Gallery.Feature invoke on item scroll listener"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 612
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    .line 656
    :goto_0
    return-void

    .line 616
    :cond_0
    if-gez p1, :cond_3

    const/4 v5, 0x1

    .line 618
    .local v5, "toLeft":Z
    :goto_1
    invoke-virtual {p0, v5, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v3

    .line 619
    .local v3, "limitedDeltaX":I
    if-eq v3, p1, :cond_1

    .line 621
    iget-object v7, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    # invokes: Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v7, v6}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 622
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 625
    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 627
    invoke-direct {p0, v5}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 629
    if-eqz v5, :cond_4

    .line 631
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 638
    :goto_2
    iget-object v7, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 640
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 642
    iget-object v4, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 643
    .local v4, "selChild":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 644
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 645
    .local v1, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v0, v7, 0x2

    .line 646
    .local v0, "childCenter":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v7

    div-int/lit8 v2, v7, 0x2

    .line 647
    .local v2, "galleryCenter":I
    add-int v7, v1, v0

    sub-int/2addr v7, v2

    iput v7, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    .line 651
    .end local v0    # "childCenter":I
    .end local v1    # "childLeft":I
    .end local v2    # "galleryCenter":I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->invokeOnItemScrollListener()V

    .line 653
    invoke-virtual {p0, v6, v6, v6, v6}, Landroid/widget/Gallery;->onScrollChanged(IIII)V

    .line 655
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    goto :goto_0

    .end local v3    # "limitedDeltaX":I
    .end local v4    # "selChild":Landroid/view/View;
    .end local v5    # "toLeft":Z
    :cond_3
    move v5, v6

    .line 616
    goto :goto_1

    .line 634
    .restart local v3    # "limitedDeltaX":I
    .restart local v5    # "toLeft":Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method
