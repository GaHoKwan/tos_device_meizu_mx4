.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mActionBarView:Lcom/android/internal/widget/ActionBarView;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add mActionBarView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mAllowCollapse:Z

.field private mBackButton:Lcom/meizu/widget/KeyBackButton;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mBackButton"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mBackIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mBackIcon"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mContentHeight:I

.field private mEnableBackButton:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mEnableBackButton"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mExpandedTouchWidth:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mExpandedTouchWidth"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mExtraPadding:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mExtraPadding"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mExtraPaddingFor4:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mExtraPaddingFor4"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mItemPadding:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mItemPadding"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mMaxTabWidth:I

.field private mMeasureWithLargestChild:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mMeasureWithLargestChild"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mMenuView:Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mMenuView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mSelectedTabIndex:I

.field private mShouldDectePaddingAjustment:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mShouldDectePaddingAjustment"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mShowAtBottom:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mShowAtBottom"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mSmartBarConfig"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mSplitActionBar:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mSplitActionBar"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mStackedTabMaxWidth:I

.field private mTabCellWidth:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mTabCellWidth"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabFlagDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mTabFlagDrawable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mTabHeight:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mTabHeight"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field private mTabWidth:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mTabWidth"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to init "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 199
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v3, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 98
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    .line 104
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    .line 110
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    .line 116
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    .line 122
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    .line 128
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 140
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    .line 152
    iput v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExpandedTouchWidth:I

    .line 158
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    .line 182
    iput-boolean v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShouldDectePaddingAjustment:Z

    .line 188
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    .line 200
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 202
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 203
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 206
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 207
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->View:[I

    const v6, 0x10102f3

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 214
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 215
    .local v1, "bgId":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    const v3, 0x108075d

    if-ne v1, v3, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10804aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->setClipChildren(Z)V

    .line 220
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->setClipToPadding(Z)V

    .line 223
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Landroid/app/ActionBar$Tab;
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private addBackButton(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add addBackButton"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1184
    :cond_0
    return-void
.end method

.method private addExtraViews(Z)V
    .locals 3
    .param p1, "add"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add addExtraViews"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1559
    if-nez p1, :cond_2

    .line 1560
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1574
    :cond_1
    :goto_0
    return-void

    .line 1567
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_3

    .line 1568
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1570
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1571
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 411
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 413
    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 416
    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to change configuration of tabLayout"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 394
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 396
    .local v0, "tabLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 397
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 398
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 403
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 404
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 405
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 407
    return-object v0
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "forAdapter"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to change configuration of tabLayout"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 520
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    .line 521
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p2, :cond_0

    .line 522
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 523
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    :goto_0
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 537
    return-object v0

    .line 526
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 528
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    .line 529
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 535
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    goto :goto_1
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutTabs(II)V
    .locals 18
    .param p1, "t"    # I
    .param p2, "b"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add layoutTabs"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 1240
    .local v3, "childCount":I
    add-int v14, p1, p2

    div-int/lit8 v9, v14, 0x2

    .line 1241
    .local v9, "midVertical":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    .line 1242
    .local v12, "tabRight":I
    const/4 v2, 0x0

    .line 1243
    .local v2, "child":Landroid/view/View;
    const/4 v11, 0x0

    .line 1244
    .local v11, "startLeft":I
    const/4 v6, 0x0

    .line 1245
    .local v6, "endRight":I
    const/4 v4, 0x0

    .line 1246
    .local v4, "childLeft":I
    const/4 v5, 0x0

    .line 1247
    .local v5, "childRight":I
    const/4 v7, 0x0

    .line 1248
    .local v7, "height":I
    const/4 v13, 0x0

    .line 1250
    .local v13, "top":I
    sget-object v14, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_a

    .line 1251
    if-lez v3, :cond_3

    const/4 v14, 0x5

    if-gt v3, v14, :cond_3

    .line 1252
    const/4 v14, 0x1

    if-eq v3, v14, :cond_0

    const/4 v14, 0x5

    if-ne v3, v14, :cond_2

    .line 1253
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    div-int v1, v14, v3

    .line 1254
    .local v1, "cellWidth":I
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 1255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1256
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1257
    add-int/lit8 v14, v8, 0x1

    mul-int v6, v14, v1

    .line 1258
    add-int v14, v11, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    add-int v4, v14, v15

    .line 1259
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1260
    const/4 v14, 0x1

    if-ne v3, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1261
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1265
    :goto_1
    move v11, v6

    .line 1254
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1263
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1267
    .end local v1    # "cellWidth":I
    .end local v8    # "index":I
    :cond_2
    const/4 v14, 0x2

    if-ne v3, v14, :cond_6

    .line 1268
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v14, :cond_5

    .line 1270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1271
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1272
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1273
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1277
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1278
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1279
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v15, v12, v15

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1418
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShouldDectePaddingAjustment:Z

    if-eqz v14, :cond_12

    .line 1419
    const/4 v14, 0x1

    if-ne v3, v14, :cond_f

    .line 1420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1421
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1442
    :cond_4
    if-lez v3, :cond_13

    const/4 v14, 0x5

    if-ge v3, v14, :cond_13

    .line 1443
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_3
    if-ge v8, v3, :cond_13

    .line 1444
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1445
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExpandedTouchWidth:I

    invoke-virtual {v2, v14}, Landroid/view/View;->expandTouchWidth(I)V

    .line 1443
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1282
    .end local v8    # "index":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1283
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v10, v14, 0x2

    .line 1284
    .local v10, "perMaxWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1285
    div-int/lit8 v14, v7, 0x2

    sub-int p1, v9, v14

    .line 1286
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v4, v14, 0x2

    .line 1287
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1291
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1292
    div-int/lit8 v14, v7, 0x2

    sub-int p1, v9, v14

    .line 1293
    add-int v14, v12, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v4, v14, 0x2

    .line 1294
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1297
    .end local v10    # "perMaxWidth":I
    :cond_6
    const/4 v14, 0x3

    if-ne v3, v14, :cond_8

    .line 1298
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v14, :cond_7

    .line 1300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1301
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1302
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1303
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1307
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1308
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int v14, v12, v14

    div-int/lit8 v4, v14, 0x2

    .line 1309
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1310
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1314
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1315
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1316
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v15, v12, v15

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1319
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1320
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v14, v14, 0x2

    sub-int v14, v12, v14

    div-int/lit8 v10, v14, 0x3

    .line 1321
    .restart local v10    # "perMaxWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1322
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1323
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    mul-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v4, v14, 0x2

    .line 1324
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1328
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1329
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int v14, v12, v14

    div-int/lit8 v4, v14, 0x2

    .line 1330
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1331
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1335
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1336
    mul-int/lit8 v14, v10, 0x2

    add-int/2addr v14, v12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v4, v14, 0x2

    .line 1337
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1338
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1340
    .end local v10    # "perMaxWidth":I
    :cond_8
    const/4 v14, 0x4

    if-ne v3, v14, :cond_3

    .line 1341
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_4
    if-ge v8, v3, :cond_3

    .line 1342
    div-int/lit8 v14, v3, 0x2

    if-ge v8, v14, :cond_9

    .line 1343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1344
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1345
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    move/from16 v16, v0

    add-int v15, v15, v16

    mul-int/2addr v15, v8

    add-int v4, v14, v15

    .line 1346
    div-int/lit8 v14, v7, 0x2

    sub-int p1, v9, v14

    .line 1347
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, p1, v7

    move/from16 v0, p1

    invoke-virtual {v2, v4, v0, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1341
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1349
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1350
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1351
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v12, v14

    add-int/lit8 v15, v3, -0x1

    sub-int/2addr v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    move/from16 v17, v0

    add-int v16, v16, v17

    mul-int v15, v15, v16

    sub-int v5, v14, v15

    .line 1353
    div-int/lit8 v14, v7, 0x2

    sub-int p1, v9, v14

    .line 1354
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int v14, v5, v14

    add-int v15, p1, v7

    move/from16 v0, p1

    invoke-virtual {v2, v14, v0, v5, v15}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 1360
    .end local v8    # "index":I
    :cond_a
    if-lez v3, :cond_3

    const/4 v14, 0x5

    if-gt v3, v14, :cond_3

    .line 1361
    const/4 v14, 0x1

    if-eq v3, v14, :cond_b

    const/4 v14, 0x5

    if-ne v3, v14, :cond_c

    .line 1362
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    div-int v1, v14, v3

    .line 1363
    .restart local v1    # "cellWidth":I
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_6
    if-ge v8, v3, :cond_3

    .line 1364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1365
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1366
    add-int/lit8 v14, v8, 0x1

    mul-int v6, v14, v1

    .line 1367
    add-int v14, v11, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    add-int v4, v14, v15

    .line 1368
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1369
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1370
    move v11, v6

    .line 1363
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1372
    .end local v1    # "cellWidth":I
    .end local v8    # "index":I
    :cond_c
    const/4 v14, 0x2

    if-ne v3, v14, :cond_d

    .line 1374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1375
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1376
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1377
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1381
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1382
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1383
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v15, v12, v15

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1384
    :cond_d
    const/4 v14, 0x3

    if-ne v3, v14, :cond_e

    .line 1386
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1387
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1388
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1389
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1393
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1394
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int v14, v12, v14

    div-int/lit8 v4, v14, 0x2

    .line 1395
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1396
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1400
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1401
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1402
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v14, v12, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    sub-int v15, v12, v15

    add-int v16, v13, v7

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1403
    :cond_e
    const/4 v14, 0x4

    if-ne v3, v14, :cond_3

    .line 1404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    div-int v1, v14, v3

    .line 1405
    .restart local v1    # "cellWidth":I
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_7
    if-ge v8, v3, :cond_3

    .line 1406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1407
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1408
    add-int/lit8 v14, v8, 0x1

    mul-int v6, v14, v1

    .line 1409
    add-int v14, v11, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    add-int v4, v14, v15

    .line 1410
    div-int/lit8 v14, v7, 0x2

    sub-int v13, v9, v14

    .line 1411
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    add-int/2addr v14, v4

    add-int v15, v13, v7

    invoke-virtual {v2, v4, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1412
    move v11, v6

    .line 1405
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1423
    .end local v1    # "cellWidth":I
    .end local v8    # "index":I
    :cond_f
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_8
    if-ge v8, v3, :cond_4

    .line 1424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1426
    if-nez v8, :cond_10

    .line 1427
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1423
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1428
    :cond_10
    add-int/lit8 v14, v3, -0x1

    if-ne v8, v14, :cond_11

    .line 1429
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_9

    .line 1431
    :cond_11
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_9

    .line 1436
    .end local v8    # "index":I
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_a
    if-ge v8, v3, :cond_4

    .line 1437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1438
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1436
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 1448
    .end local v8    # "index":I
    :cond_13
    return-void
.end method

.method private measureTabandMenuView(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add measureTabandMenuView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1535
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1536
    .local v1, "childCount":I
    iget-boolean v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v5, :cond_1

    .line 1537
    const/4 v0, 0x0

    .line 1538
    .local v0, "child":Landroid/view/View;
    const/4 v4, 0x0

    .line 1539
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1540
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1541
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1542
    if-eqz v4, :cond_0

    .line 1543
    iget v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1539
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1547
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "index":I
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 1548
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1550
    .local v3, "menuWidthSpec":I
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 1552
    .end local v3    # "menuWidthSpec":I
    :cond_2
    return-void
.end method

.method private performCollapse()V
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to remove backbutton and menuview when collapse "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 302
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->addExtraViews(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 320
    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to add backbutton and menuview when expand "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 330
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return v4

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 335
    invoke-direct {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->addExtraViews(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method

.method private removeBackButton(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add removeBackButton"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1168
    if-eqz p1, :cond_0

    .line 1169
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1170
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1174
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private removeMenuIfNeed()V
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add to remove the menu view if needed"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1622
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    if-nez v3, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1623
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1624
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-ne v1, v3, :cond_0

    .line 1625
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1626
    .local v0, "menuItemCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getTabItemCount()I

    move-result v2

    .line 1627
    .local v2, "tabItemCount":I
    add-int v3, v0, v2

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    .line 1628
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1629
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1630
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setMenu(Landroid/view/ViewGroup;)V

    .line 1631
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarView;->setDockTabAndMenu(Z)V

    goto :goto_0
.end method

.method private setChildLayoutPosition(Landroid/view/View;I)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutPosition"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setChildLayoutPosition"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1455
    instance-of v3, p1, Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, p1

    .line 1457
    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1458
    .local v2, "overflowButton":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1459
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v3, :cond_0

    .line 1460
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 1461
    .local v0, "isOverflowButton":Z
    if-eqz v0, :cond_0

    .line 1462
    move-object p1, v2

    .line 1466
    .end local v0    # "isOverflowButton":Z
    .end local v2    # "overflowButton":Landroid/view/View;
    :cond_0
    instance-of v3, p1, Lcom/meizu/widget/LayoutPositionState;

    if-eqz v3, :cond_1

    .line 1467
    check-cast p1, Lcom/meizu/widget/LayoutPositionState;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1, p2}, Lcom/meizu/widget/LayoutPositionState;->setLayoutPosition(I)V

    .line 1469
    :cond_1
    return-void
.end method

.method private updateSmartBarConfiguration()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add updateSmartBarConfiguration"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    .line 1515
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    .line 1516
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    .line 1517
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPaddingFor4()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 1518
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonPadding()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    .line 1519
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getExpandedTouchWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExpandedTouchWidth:I

    .line 1521
    sget-object v0, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1522
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShouldDectePaddingAjustment:Z

    .line 1528
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to minus the backbutton position"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 562
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v1, :cond_0

    .line 563
    add-int/lit8 p2, p2, 0x1

    .line 567
    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 568
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 570
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    .line 571
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 573
    :cond_1
    if-eqz p3, :cond_2

    .line 574
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 576
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_3

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 579
    :cond_3
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    .line 541
    invoke-direct {p0, p1, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .line 542
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 547
    :cond_0
    if-eqz p2, :cond_1

    .line 548
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 550
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    .line 551
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 553
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 6
    .param p1, "position"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to judge whether need to scroll "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 474
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 475
    .local v2, "tabCount":I
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_0

    if-lez v2, :cond_0

    .line 476
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 477
    .local v0, "first":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 478
    .local v1, "last":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 496
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 485
    .local v3, "tabView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    .line 486
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 488
    :cond_1
    new-instance v4, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v4, p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 495
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public animateToVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 444
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 447
    :cond_0
    if-nez p1, :cond_2

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    .line 451
    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 452
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 453
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 455
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 456
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 465
    :goto_0
    return-void

    .line 458
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 459
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 460
    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 462
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 463
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public getTabFlagDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add getTabFlagDrawable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabItemCount()I
    .locals 3
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add getTabItemCount"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 1119
    const/4 v0, 0x0

    .line 1125
    :cond_0
    :goto_0
    return v0

    .line 1121
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1122
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-ne v1, v2, :cond_0

    .line 1123
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public isShowAtBottom()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add isShowAtBottom"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 500
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 505
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to set content height"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 430
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 433
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v1, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 440
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 441
    return-void

    .line 436
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    if-lez v1, :cond_0

    .line 437
    iget v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 510
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 513
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add fix bug like #101004.When it can\'t scroll, don\'t intercept the moving event"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1583
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1584
    .local v4, "superResult":Z
    move v3, v4

    .line 1585
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1586
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1600
    :cond_0
    :goto_0
    return v3

    .line 1588
    :pswitch_0
    if-eqz v4, :cond_0

    .line 1589
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 1590
    .local v5, "tabCount":I
    iget-boolean v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v6, :cond_0

    if-lez v5, :cond_0

    .line 1591
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1592
    .local v1, "first":Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1593
    .local v2, "last":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 1594
    const/4 v3, 0x0

    goto :goto_0

    .line 1586
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 636
    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    .line 637
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add onLayout"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1209
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 1211
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, p0, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1214
    .local v3, "parent":Landroid/view/View;
    instance-of v4, v3, Lcom/android/internal/widget/ActionBarView;

    if-eqz v4, :cond_2

    .line 1215
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1221
    .end local v3    # "parent":Landroid/view/View;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    if-eqz v4, :cond_3

    .line 1222
    invoke-direct {p0, p3, p5}, Lcom/android/internal/widget/ScrollingTabContainerView;->layoutTabs(II)V

    .line 1232
    :cond_1
    return-void

    .line 1217
    .restart local v3    # "parent":Landroid/view/View;
    :cond_2
    instance-of v4, v3, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_0

    .line 1218
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabFlagDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 1223
    .end local v3    # "parent":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 1224
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1226
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1227
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1228
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0, v9}, Lcom/android/internal/widget/ScrollingTabContainerView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1229
    invoke-virtual {v0, v9}, Landroid/view/View;->expandTouchWidth(I)V

    .line 1226
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to measure tab and MenuView "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 231
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 232
    .local v5, "widthMode":I
    if-ne v5, v10, :cond_3

    move v2, v6

    .line 233
    .local v2, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 235
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 236
    .local v1, "childCount":I
    if-le v1, v6, :cond_5

    if-eq v5, v10, :cond_0

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_5

    .line 238
    :cond_0
    const/4 v8, 0x2

    if-le v1, v8, :cond_4

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 243
    :goto_1
    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v9, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 248
    :goto_2
    iget v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 251
    iget-boolean v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v8, :cond_1

    if-nez v1, :cond_1

    .line 252
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 256
    :cond_1
    if-nez v2, :cond_6

    iget-boolean v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v8, :cond_6

    move v0, v6

    .line 258
    .local v0, "canCollapse":Z
    :goto_3
    if-eqz v0, :cond_8

    .line 260
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 261
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    if-le v6, v7, :cond_7

    .line 262
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 270
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v4

    .line 271
    .local v4, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v3

    .line 275
    .local v3, "newWidth":I
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->measureTabandMenuView(II)V

    .line 278
    if-eqz v2, :cond_2

    if-eq v4, v3, :cond_2

    .line 280
    iget v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 282
    :cond_2
    return-void

    .end local v0    # "canCollapse":Z
    .end local v1    # "childCount":I
    .end local v2    # "lockedExpanded":Z
    .end local v3    # "newWidth":I
    .end local v4    # "oldWidth":I
    :cond_3
    move v2, v7

    .line 232
    goto :goto_0

    .line 241
    .restart local v1    # "childCount":I
    .restart local v2    # "lockedExpanded":Z
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 245
    :cond_5
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_6
    move v0, v7

    .line 256
    goto :goto_3

    .line 264
    .restart local v0    # "canCollapse":Z
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 267
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add onSmartBarConfigurationChanged"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1505
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateSmartBarConfiguration()V

    .line 1506
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 1507
    return-void
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 625
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 628
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 631
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to minus the backbutton position"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_0

    .line 610
    add-int/lit8 p1, p1, 0x1

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 615
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 618
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 619
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 621
    :cond_2
    return-void
.end method

.method public setActionbarView(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .param p1, "actionBarView"    # Lcom/android/internal/widget/ActionBarView;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add to keep the reference of actionBarView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mActionBarView:Lcom/android/internal/widget/ActionBarView;

    .line 1615
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 295
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
    .line 1491
    if-eqz p1, :cond_0

    .line 1492
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 1494
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1498
    :cond_0
    return-void
.end method

.method public setBackButtonEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setBackButtonEnable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1145
    sget-object v0, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    .line 1149
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_3

    .line 1150
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-nez v0, :cond_2

    .line 1151
    new-instance v0, Lcom/meizu/widget/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/widget/KeyBackButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    .line 1152
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/KeyBackButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeBackButton(Landroid/view/View;)V

    .line 1155
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->addBackButton(Landroid/view/View;)V

    .line 1156
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeMenuIfNeed()V

    goto :goto_0

    .line 1157
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeBackButton(Landroid/view/View;)V

    .line 1159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    goto :goto_0
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    .line 385
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 387
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
    .line 1092
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabHeight:I

    .line 1093
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 1094
    return-void
.end method

.method public setMeasureWithLargestChildEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setMeasureWithLargestChildEnable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1104
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMeasureWithLargestChild:Z

    .line 1105
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    .line 1108
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setMenu"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1191
    if-eqz p1, :cond_0

    .line 1192
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1193
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1197
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 1198
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1200
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMenuView:Landroid/view/ViewGroup;

    .line 1201
    return-void
.end method

.method public setShowAtBottom(ZZ)V
    .locals 5
    .param p1, "atBottom"    # Z
    .param p2, "splitActionBar"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setShowAtBottom"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1046
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-ne v4, p1, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    if-ne v4, p2, :cond_1

    .line 1074
    :cond_0
    return-void

    .line 1049
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    .line 1050
    iput-boolean p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSplitActionBar:Z

    .line 1051
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1052
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x1050197

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabWidth:I

    .line 1054
    const v4, 0x10500cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabCellWidth:I

    .line 1056
    const v4, 0x10500c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPadding:I

    .line 1058
    const v4, 0x10500ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mExtraPaddingFor4:I

    .line 1060
    const v4, 0x10500c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mItemPadding:I

    .line 1062
    const v4, 0x1050198

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 1064
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateSmartBarConfiguration()V

    .line 1065
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 1066
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1067
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1068
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1069
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v4, :cond_2

    .line 1070
    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setShowAtBottom(Z)V

    .line 1067
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setTabSelected(I)V
    .locals 8
    .param p1, "position"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to select tab and requestlayout when showed at bottom"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 348
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 351
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v6, :cond_1

    if-ltz p1, :cond_1

    .line 352
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 353
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lt v6, v4, :cond_2

    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 360
    add-int/lit8 p1, p1, 0x1

    .line 363
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 364
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 365
    iget-object v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_4

    move v2, v4

    .line 367
    .local v2, "isSelected":Z
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 368
    if-eqz v2, :cond_3

    .line 369
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 364
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "isSelected":Z
    :cond_4
    move v2, v5

    .line 366
    goto :goto_2

    .line 378
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v4, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add shouldDelayChildPressedState"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1476
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mShowAtBottom:Z

    if-eqz v0, :cond_0

    .line 1477
    const/4 v0, 0x0

    .line 1479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. modify to minus the backbutton position"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mEnableBackButton:Z

    if-eqz v0, :cond_0

    .line 589
    add-int/lit8 p1, p1, 0x1

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 594
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 597
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 598
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 600
    :cond_2
    return-void
.end method
