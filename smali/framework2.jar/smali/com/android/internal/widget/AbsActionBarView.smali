.class public abstract Lcom/android/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field protected static DEBUG:Z = false

.field private static final FADE_DURATION:I = 0xc8

.field protected static final MAX_ACTIONS_ITEM:I = 0x5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add MAX_ACTIONS_ITEM"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field protected mActionModeHeaderHidden:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mActionModeHeaderHidden"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mBackButton:Lcom/meizu/widget/KeyBackButton;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mBackButton"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mBackIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mBackIcon"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public mCompulsorySplit:Z

.field protected mContentHeight:I

.field private mCustomHeight:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mCustomHeight"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mEnableBackButton:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mEnableBackButton"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mInActionMode:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mInActionMode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mIsOverlay:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mIsOverlay"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mMaxTitleWidth:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mMaxTitleWidth"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

.field protected mOrientatinPortrait:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mOrientatinPortrait"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mOverFlowButtonIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mOverFlowButtonIcon"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mSplitActionBar:Z

.field protected mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;

.field private mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mVisiblilityAnimationListener"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/widget/AbsActionBarView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to initView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 66
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 78
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 101
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 119
    iput-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mEnableBackButton:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mCompulsorySplit:Z

    .line 143
    invoke-direct {p0}, Lcom/android/internal/widget/AbsActionBarView;->initView()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to initView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 66
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 78
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 101
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 119
    iput-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mEnableBackButton:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mCompulsorySplit:Z

    .line 155
    invoke-direct {p0}, Lcom/android/internal/widget/AbsActionBarView;->initView()V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to initView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    .line 66
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 78
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 101
    iput v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMaxTitleWidth:I

    .line 119
    iput-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mEnableBackButton:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mCompulsorySplit:Z

    .line 167
    invoke-direct {p0}, Lcom/android/internal/widget/AbsActionBarView;->initView()V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/AbsActionBarView;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/AbsActionBarView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onAnimationStartInner(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/AbsActionBarView;Landroid/animation/Animator;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/AbsActionBarView;
    .param p1, "x1"    # Landroid/animation/Animator;
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AbsActionBarView;->onAnimationEndInner(Landroid/animation/Animator;I)V

    return-void
.end method

.method private animateToVisibilityForMeizu(I)V
    .locals 11
    .param p1, "visibility"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add animateToVisibilityForMeizu"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const-wide/16 v7, 0xc8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 698
    if-nez p1, :cond_4

    .line 699
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 700
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/AbsActionBarView;->setAlpha(F)V

    .line 701
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_0

    .line 702
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v9}, Lcom/android/internal/view/menu/ActionMenuView;->setAlpha(F)V

    .line 705
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_2

    .line 706
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_1

    .line 707
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 708
    .local v2, "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 709
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 710
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 753
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    :goto_0
    return-void

    .line 713
    :cond_2
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v10, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 714
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 715
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 716
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_3

    .line 717
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 718
    .local v1, "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v10, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 719
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 720
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 721
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 722
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 724
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 725
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 729
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz v3, :cond_5

    .line 730
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_1

    .line 731
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 732
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 733
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 734
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 737
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_5
    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v9, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 738
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 739
    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 740
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_6

    .line 741
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 742
    .restart local v1    # "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    const-string v4, "alpha"

    new-array v5, v5, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 743
    .restart local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 744
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 745
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 746
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 748
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    .end local v2    # "splitAnim":Landroid/animation/ObjectAnimator;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 749
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0
.end method

.method private initView()V
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add initView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 655
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 656
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mz_smartbar_auto_hide"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mCompulsorySplit:Z

    .line 657
    return-void

    :cond_0
    move v1, v3

    .line 655
    goto :goto_0

    :cond_1
    move v2, v3

    .line 656
    goto :goto_1
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .prologue
    .line 385
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method

.method private onAnimationEndInner(Landroid/animation/Animator;I)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;
    .param p2, "finalVisibility"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add onAnimationEndInner"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 479
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    invoke-interface {v0, p2}, Landroid/app/ActionBar$VisibilityAnimationListener;->onAnimationEnd(I)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, p2}, Lcom/android/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    invoke-interface {v0, p2}, Landroid/app/ActionBar$VisibilityAnimationListener;->onAnimationEnd(I)V

    goto :goto_0
.end method

.method private onAnimationStartInner(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add onAnimationStartInner"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 462
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "animation":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onConfigurationChangedForMeizu(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add onConfigurationChangedForMeizu"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 687
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    if-lez v0, :cond_0

    .line 688
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->updateBackButton()V

    .line 691
    return-void
.end method

.method private updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add updateConfiguration"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 664
    const/4 v0, 0x1

    .line 665
    .local v0, "portrait":Z
    if-eqz p1, :cond_0

    if-eqz p1, :cond_4

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-nez v4, :cond_4

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 668
    .local v1, "resConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_1

    .line 669
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_3

    move v0, v2

    .line 674
    .end local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    if-eq v2, v0, :cond_2

    .line 675
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 676
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    .line 679
    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    .line 680
    return-void

    .restart local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_3
    move v0, v3

    .line 669
    goto :goto_0

    .line 672
    .end local v1    # "resConfig":Landroid/content/res/Configuration;
    :cond_4
    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_5

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to animate"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->animateToVisibilityForMeizu(I)V

    .line 264
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 371
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 249
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompulsorySplit()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mCompulsorySplit:Z

    return v0
.end method

.method public isInActionMode()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add whether is in actionMode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 763
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverlay()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add isOverlay"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    return v0
.end method

.method public isSplitWhenNarrow()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add whether Split When Narrow"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .prologue
    .line 375
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 379
    sub-int/2addr p2, p4

    .line 381
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to initView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 187
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 188
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChangedForMeizu(Landroid/content/res/Configuration;)V

    .line 206
    return-void

    .line 196
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add onFinishInflate"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 550
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 551
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->updateBackButton()V

    .line 552
    return-void
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add onSmartBarConfigurationChanged"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->onSmartBarConfigurationChanged()V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->onSmartBarConfigurationChanged()V

    .line 647
    :cond_1
    return-void
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 390
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 391
    .local v0, "childHeight":I
    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    .line 393
    .local v1, "childTop":I
    if-eqz p5, :cond_1

    .line 394
    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    .line 399
    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    .end local v2    # "childWidth":I
    :cond_0
    return v2

    .line 396
    .restart local v2    # "childWidth":I
    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$1;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method

.method public setActionModeHeaderHidden(Z)V
    .locals 0
    .param p1, "hidden"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setActionModeHeaderHidden"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionModeHeaderHidden:Z

    .line 504
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backIcon"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setBackButtonDrawable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 606
    if-eqz p1, :cond_1

    .line 607
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 609
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    :cond_1
    return-void
.end method

.method public setContentHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 228
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setMaxItemHeight(I)V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->requestLayout()V

    .line 232
    return-void
.end method

.method public setEnableBackButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to enable backbutton "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mEnableBackButton:Z

    if-eq v0, p1, :cond_0

    .line 792
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEnableBackButton:Z

    .line 794
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setHeight"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 594
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mCustomHeight:I

    .line 595
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 596
    return-void
.end method

.method public setInActionMode(Z)V
    .locals 0
    .param p1, "inActionMode"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setInActionMode"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mInActionMode:Z

    .line 526
    return-void
.end method

.method public setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setOverFlowButtonDrawable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 627
    if-eqz p1, :cond_0

    .line 628
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mOverFlowButtonIcon:Landroid/graphics/drawable/Drawable;

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 633
    :cond_0
    return-void
.end method

.method public setOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setOverlay"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mIsOverlay:Z

    .line 534
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 3
    .param p1, "split"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    .line 214
    sget-boolean v0, Lcom/android/internal/widget/AbsActionBarView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "AbsActionBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set SplitActionBar, configuration.orientation :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is splitActionBar :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    return-void
.end method

.method public setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V
    .locals 0
    .param p1, "splitView"    # Lcom/android/internal/widget/ActionBarContainer;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 240
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0
    .param p1, "splitWhenNarrow"    # Z

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    .line 224
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to set visibility"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 323
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibilityAnimationListener(Landroid/app/ActionBar$VisibilityAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/ActionBar$VisibilityAnimationListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setVisibilityAnimationListener"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisiblilityAnimationListener:Landroid/app/ActionBar$VisibilityAnimationListener;

    .line 515
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateBackButton()V
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add updateBackButton"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 559
    sget-object v1, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mOrientatinPortrait:Z

    if-eqz v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/meizu/widget/KeyBackButton;->setVisibility(I)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v1, :cond_4

    .line 569
    new-instance v1, Lcom/meizu/widget/KeyBackButton;

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    .line 570
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4, v4}, Lcom/meizu/widget/KeyBackButton;->setPadding(IIII)V

    .line 572
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/KeyBackButton;->setMinimumWidth(I)V

    .line 579
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->addView(Landroid/view/View;)V

    .line 580
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1, v4}, Lcom/meizu/widget/KeyBackButton;->setVisibility(I)V

    .line 581
    sget-boolean v1, Lcom/android/internal/widget/AbsActionBarView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 582
    const-string v1, "AbsActionBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add KeyBackButton, configuration.orientation :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is splitActionBar :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v1}, Lcom/meizu/widget/KeyBackButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 575
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 576
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method
