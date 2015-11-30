.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$OnActionBarSplitChangedListener;,
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field protected mDockTabAndMenu:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mDockTabAndMenu"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mEnableActionItemBackground:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mEnableActionItemBackground"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private final mHomeResId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsable:Z

.field protected mIsCollapsableByUser:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mIsCollapsableByUser"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mIsCollapsed:Z

.field protected mIsShowing:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mIsShowing"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field protected mMzTitleLayout:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mMzTitleLayout"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarAtBottom:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mProgressBarAtBottom"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field protected mShowBackWhenOverlay:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mShowBackWhenOverlay"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mShowTabsAtBottom:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mShowTabsAtBottom"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected mShowUp:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mShowUp"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field protected mSplitChangedListener:Lcom/android/internal/widget/ActionBarView$OnActionBarSplitChangedListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mSplitChangedListener"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to load drawable according to theme"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 252
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 155
    new-instance v0, Lcom/android/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 167
    new-instance v0, Lcom/android/internal/widget/ActionBarView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 177
    new-instance v0, Lcom/android/internal/widget/ActionBarView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$3;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 204
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mShowUp:Z

    .line 210
    iput-boolean v12, p0, Lcom/android/internal/widget/ActionBarView;->mIsShowing:Z

    .line 216
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mShowBackWhenOverlay:Z

    .line 228
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mDockTabAndMenu:Z

    .line 234
    iput-boolean v12, p0, Lcom/android/internal/widget/ActionBarView;->mEnableActionItemBackground:Z

    .line 241
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mProgressBarAtBottom:Z

    .line 255
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 257
    sget-object v0, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v1, 0x10102ce

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 260
    .local v7, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 261
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 262
    .local v11, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 264
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 265
    const/16 v0, 0x9

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 266
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 267
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 273
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 275
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/16 v0, 0xf

    const v1, 0x1090018

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeResId:I

    .line 281
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    const v0, 0x1090067

    invoke-virtual {v10, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 289
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeResId:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 306
    const/16 v0, 0xb

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 307
    const/16 v0, 0xc

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 308
    invoke-virtual {v7, v12, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 309
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 312
    const/16 v0, 0xe

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 313
    const/16 v0, 0x10

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 315
    const/16 v0, 0x8

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 317
    const/16 v0, 0xa

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 318
    .local v9, "customNavId":I
    if-eqz v9, :cond_0

    .line 319
    invoke-virtual {v10, v9, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 320
    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 321
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 324
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 326
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 328
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    const v3, 0x102002c

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 335
    invoke-virtual {p0, v12}, Lcom/android/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 338
    :cond_1
    return-void

    .line 285
    .end local v9    # "customNavId":I
    :cond_2
    const v0, 0x109001a

    invoke-virtual {v10, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initExpandHomeLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 787
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 797
    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 798
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 799
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 801
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040517

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v2, v6, v8

    aput-object v0, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 811
    :goto_1
    return-object v1

    .line 790
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    .end local v2    # "subtitle":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 791
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040514

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 793
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040513

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 806
    .restart local v2    # "subtitle":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040516

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 811
    goto :goto_1
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 648
    if-eqz p1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 650
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 657
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 653
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 654
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initExpandHomeLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2513
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2514
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mHomeResId:I

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 2515
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 2516
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2517
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040514

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2522
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2523
    .local v1, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2524
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2526
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 2527
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 2528
    return-void
.end method

.method private initTitle()V
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to init title"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1061
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_4

    .line 1062
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1063
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090019

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 1067
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mMzTitleLayout:Z

    if-eqz v1, :cond_0

    .line 1068
    const v1, 0x1090066

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x102028f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 1073
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x1020290

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 1075
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v1, :cond_1

    .line 1076
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1078
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1079
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    :cond_2
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_3

    .line 1083
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1085
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 1086
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1091
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1092
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1093
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1096
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1101
    :goto_0
    return-void

    .line 1098
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private loadDrawable(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to load drawable according to theme"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2392
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2393
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2394
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 2395
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 2397
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2401
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 2402
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 2406
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    .line 2407
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 2409
    :try_start_1
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2413
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    .line 2414
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2417
    :cond_3
    return-void

    .line 2410
    :catch_0
    move-exception v3

    goto :goto_1

    .line 2398
    .restart local p1    # "context":Landroid/content/Context;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private onConfigurationChangedInner()V
    .locals 3
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to update when configuration changed "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2424
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionModeHeaderHidden:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mInActionMode:Z

    if-eqz v1, :cond_0

    .line 2425
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v1, :cond_4

    .line 2426
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->setVisibility(I)V

    .line 2427
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setAlpha(F)V

    .line 2433
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2434
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->updateUpView()V

    .line 2436
    :cond_1
    new-instance v1, Lcom/android/internal/widget/ActionBarView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ActionBarView$4;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 2444
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIsOverlay:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitWhenNarrow:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_3

    .line 2446
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 2447
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 2448
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 2451
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mOrientatinPortrait:Z

    if-eqz v1, :cond_5

    .line 2452
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 2457
    :cond_3
    :goto_1
    return-void

    .line 2429
    :cond_4
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setVisibility(I)V

    .line 2430
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setAlpha(F)V

    goto :goto_0

    .line 2454
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    goto :goto_1
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .prologue
    .line 752
    if-eqz p2, :cond_0

    .line 753
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 767
    :goto_0
    return-void

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 764
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 766
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 714
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 715
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 716
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 717
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 721
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 723
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 724
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 726
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 727
    return-void

    :cond_3
    move v0, v1

    .line 718
    goto :goto_0

    .line 721
    .restart local v0    # "visible":Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .param p1, "homeEnabled"    # Z

    .prologue
    .line 770
    if-nez p1, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 777
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 775
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateUpView()V
    .locals 2
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add updateUpView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2188
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-nez v1, :cond_1

    .line 2206
    :cond_0
    :goto_0
    return-void

    .line 2192
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mOrientatinPortrait:Z

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2193
    :cond_2
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mShowUp:Z

    .line 2194
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mShowUp:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 2196
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v0, :cond_0

    .line 2198
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mShowUp:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    goto :goto_0

    .line 2200
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 2202
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v1, :cond_0

    .line 2204
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    goto :goto_0
.end method


# virtual methods
.method public collapseActionView()V
    .locals 2

    .prologue
    .line 665
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 667
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 670
    :cond_0
    return-void

    .line 665
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1035
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1626
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1631
    if-nez p1, :cond_0

    .line 1632
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1634
    :cond_0
    return-object p1
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTabFlagDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to get tab flag drawable"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2349
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getTabFlagDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 419
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10203aa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 424
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 411
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 412
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10203ab

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 413
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 416
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to judge split actionbar is showed or not"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2244
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsShowing:Z

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1127
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return v3

    .line 1131
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1132
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 1136
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 1137
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1138
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 1139
    const/4 v3, 0x1

    goto :goto_0

    .line 1137
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to update when confiuration changed"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 346
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 348
    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 349
    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 350
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v5, v6, :cond_0

    .line 351
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 353
    :cond_0
    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 354
    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 358
    :cond_1
    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v5, :cond_2

    .line 359
    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarView;->setHomeActionContentDescription(I)V

    .line 362
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v5, :cond_4

    .line 363
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 364
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    .line 365
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 366
    const/4 v5, -0x1

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 368
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 372
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 373
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mHomeResId:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 374
    .local v3, "tempHomeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    if-eqz v3, :cond_5

    .line 375
    const v5, 0x102002c

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 376
    .local v4, "tempIconView":Landroid/widget/ImageView;
    if-eqz v4, :cond_5

    .line 377
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 378
    .local v0, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIconViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    .end local v0    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v4    # "tempIconView":Landroid/widget/ImageView;
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->onConfigurationChangedInner()V

    .line 385
    return-void

    .line 377
    .restart local v4    # "tempIconView":Landroid/widget/ImageView;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 398
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 401
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 403
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 1040
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 1042
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1043
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1045
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 1046
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1047
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 1048
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1049
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1051
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1054
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 44
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to layout backbutton and tab "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1422
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v7, v3, v4

    .line 1424
    .local v7, "contentHeight":I
    if-gtz v7, :cond_1

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->isLayoutRtl()Z

    move-result v13

    .line 1430
    .local v13, "isLayoutRtl":Z
    if-eqz v13, :cond_c

    const/16 v27, 0x1

    .line 1431
    .local v27, "direction":I
    :goto_1
    if-eqz v13, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v16

    .line 1434
    .local v16, "menuStart":I
    :goto_2
    if-eqz v13, :cond_e

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v5, v3, v4

    .line 1435
    .local v5, "x":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v6

    .line 1441
    .local v6, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    invoke-virtual {v3}, Lcom/meizu/widget/KeyBackButton;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 1442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1444
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v32, v0

    .line 1446
    .local v32, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_10

    const/16 v38, 0x1

    .line 1448
    .local v38, "showTitle":Z
    :goto_5
    const/16 v39, 0x0

    .line 1449
    .local v39, "startOffset":I
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_3

    .line 1450
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_11

    .line 1451
    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v39

    .line 1464
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move/from16 v0, v39

    invoke-static {v5, v0, v13}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v10

    move-object/from16 v8, p0

    move v11, v6

    move v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1466
    move/from16 v0, v39

    invoke-static {v5, v0, v13}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_4

    .line 1469
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 1508
    :cond_4
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_5

    .line 1509
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-nez v13, :cond_1d

    const/16 v19, 0x1

    :goto_8
    move-object/from16 v14, p0

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v27

    add-int v16, v16, v3

    .line 1513
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    .line 1515
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v13, :cond_1e

    const/16 v19, 0x1

    :goto_9
    move-object/from16 v14, p0

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v27

    add-int v16, v16, v3

    .line 1519
    :cond_6
    const/16 v25, 0x0

    .line 1520
    .local v25, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_1f

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v25, v0

    .line 1526
    :cond_7
    :goto_a
    if-eqz v25, :cond_b

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v33

    .line 1528
    .local v33, "layoutDirection":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    .line 1529
    .local v34, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v34

    instance-of v3, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_20

    check-cast v34, Landroid/app/ActionBar$LayoutParams;

    .end local v34    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v20, v34

    .line 1531
    .local v20, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_b
    if-eqz v20, :cond_21

    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v29, v0

    .line 1532
    .local v29, "gravity":I
    :goto_c
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v35

    .line 1534
    .local v35, "navWidth":I
    const/16 v40, 0x0

    .line 1535
    .local v40, "topMargin":I
    const/16 v21, 0x0

    .line 1536
    .local v21, "bottomMargin":I
    if-eqz v20, :cond_8

    .line 1537
    invoke-virtual/range {v20 .. v20}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v5, v3, v13}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1538
    invoke-virtual/range {v20 .. v20}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int v3, v3, v27

    add-int v16, v16, v3

    .line 1539
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v40, v0

    .line 1540
    move-object/from16 v0, v20

    iget v0, v0, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v21, v0

    .line 1543
    :cond_8
    const v3, 0x800007

    and-int v31, v29, v3

    .line 1545
    .local v31, "hgravity":I
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_25

    .line 1546
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v35

    div-int/lit8 v23, v3, 0x2

    .line 1547
    .local v23, "centeredLeft":I
    if-eqz v13, :cond_23

    .line 1548
    add-int v24, v23, v35

    .line 1549
    .local v24, "centeredStart":I
    move/from16 v22, v23

    .line 1550
    .local v22, "centeredEnd":I
    move/from16 v0, v24

    if-le v0, v5, :cond_22

    .line 1551
    const/16 v31, 0x5

    .line 1568
    .end local v22    # "centeredEnd":I
    .end local v23    # "centeredLeft":I
    .end local v24    # "centeredStart":I
    :cond_9
    :goto_d
    const/16 v42, 0x0

    .line 1569
    .local v42, "xpos":I
    move/from16 v0, v31

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1581
    :goto_e
    :pswitch_1
    and-int/lit8 v41, v29, 0x70

    .line 1583
    .local v41, "vgravity":I
    if-nez v29, :cond_a

    .line 1584
    const/16 v41, 0x10

    .line 1587
    :cond_a
    const/16 v43, 0x0

    .line 1588
    .local v43, "ypos":I
    sparse-switch v41, :sswitch_data_0

    .line 1602
    :goto_f
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 1603
    .local v26, "customWidth":I
    add-int v3, v42, v26

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v43

    move-object/from16 v0, v25

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1605
    move/from16 v0, v26

    invoke-static {v5, v0, v13}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1608
    .end local v20    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v21    # "bottomMargin":I
    .end local v26    # "customWidth":I
    .end local v29    # "gravity":I
    .end local v31    # "hgravity":I
    .end local v33    # "layoutDirection":I
    .end local v35    # "navWidth":I
    .end local v40    # "topMargin":I
    .end local v41    # "vgravity":I
    .end local v42    # "xpos":I
    .end local v43    # "ypos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 1609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1610
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v30, v3, 0x2

    .line 1613
    .local v30, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarAtBottom:Z

    if-eqz v3, :cond_28

    .line 1614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    sub-int v8, p5, p3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredWidth()I

    move-result v9

    sub-int v10, p5, p3

    invoke-virtual {v3, v4, v8, v9, v10}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1430
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v16    # "menuStart":I
    .end local v25    # "customView":Landroid/view/View;
    .end local v27    # "direction":I
    .end local v30    # "halfProgressHeight":I
    .end local v32    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v38    # "showTitle":Z
    .end local v39    # "startOffset":I
    :cond_c
    const/16 v27, -0x1

    goto/16 :goto_1

    .line 1431
    .restart local v27    # "direction":I
    :cond_d
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v16, v3, v4

    goto/16 :goto_2

    .line 1434
    .restart local v16    # "menuStart":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v5

    goto/16 :goto_3

    .line 1444
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v32, v0

    goto/16 :goto_4

    .line 1446
    .restart local v32    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :cond_10
    const/16 v38, 0x0

    goto/16 :goto_5

    .line 1452
    .restart local v38    # "showTitle":Z
    .restart local v39    # "startOffset":I
    :cond_11
    if-eqz v38, :cond_3

    .line 1457
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/ActionBarView;->mOrientatinPortrait:Z

    if-eqz v3, :cond_12

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v39

    :goto_10
    goto/16 :goto_6

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v39

    goto :goto_10

    .line 1473
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    .line 1474
    if-eqz v38, :cond_13

    .line 1475
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v13}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1477
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v3, p0

    move v8, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1478
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v13}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1482
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_4

    .line 1485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_18

    :cond_14
    const/16 v28, 0x1

    .line 1488
    .local v28, "flag":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_19

    :cond_15
    const/4 v3, 0x1

    :goto_12
    and-int v28, v28, v3

    .line 1490
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    if-nez v3, :cond_17

    .line 1491
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-nez v3, :cond_1a

    :cond_16
    const/4 v3, 0x1

    :goto_13
    and-int v28, v28, v3

    .line 1494
    :cond_17
    if-eqz v28, :cond_1b

    .line 1495
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    sub-int v16, v16, v3

    .line 1496
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v19, 0x1

    move-object/from16 v14, p0

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    sub-int v16, v16, v3

    .line 1497
    goto/16 :goto_7

    .line 1485
    .end local v28    # "flag":Z
    :cond_18
    const/16 v28, 0x0

    goto :goto_11

    .line 1488
    .restart local v28    # "flag":Z
    :cond_19
    const/4 v3, 0x0

    goto :goto_12

    .line 1491
    :cond_1a
    const/4 v3, 0x0

    goto :goto_13

    .line 1500
    :cond_1b
    if-eqz v38, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v13}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1501
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v3, p0

    move v8, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1502
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v13}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1509
    .end local v28    # "flag":Z
    :cond_1d
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1515
    :cond_1e
    const/16 v19, 0x0

    goto/16 :goto_9

    .line 1522
    .restart local v25    # "customView":Landroid/view/View;
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v25, v0

    goto/16 :goto_a

    .line 1529
    .restart local v33    # "layoutDirection":I
    .restart local v34    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_20
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 1531
    .end local v34    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v20    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_21
    const v29, 0x800013

    goto/16 :goto_c

    .line 1552
    .restart local v21    # "bottomMargin":I
    .restart local v22    # "centeredEnd":I
    .restart local v23    # "centeredLeft":I
    .restart local v24    # "centeredStart":I
    .restart local v29    # "gravity":I
    .restart local v31    # "hgravity":I
    .restart local v35    # "navWidth":I
    .restart local v40    # "topMargin":I
    :cond_22
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 1553
    const/16 v31, 0x3

    goto/16 :goto_d

    .line 1556
    .end local v22    # "centeredEnd":I
    .end local v24    # "centeredStart":I
    :cond_23
    move/from16 v24, v23

    .line 1557
    .restart local v24    # "centeredStart":I
    add-int v22, v23, v35

    .line 1558
    .restart local v22    # "centeredEnd":I
    move/from16 v0, v24

    if-ge v0, v5, :cond_24

    .line 1559
    const/16 v31, 0x3

    goto/16 :goto_d

    .line 1560
    :cond_24
    move/from16 v0, v22

    move/from16 v1, v16

    if-le v0, v1, :cond_9

    .line 1561
    const/16 v31, 0x5

    goto/16 :goto_d

    .line 1564
    .end local v22    # "centeredEnd":I
    .end local v23    # "centeredLeft":I
    .end local v24    # "centeredStart":I
    :cond_25
    if-nez v29, :cond_9

    .line 1565
    const v31, 0x800003

    goto/16 :goto_d

    .line 1571
    .restart local v42    # "xpos":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v35

    div-int/lit8 v42, v3, 0x2

    .line 1572
    goto/16 :goto_e

    .line 1574
    :pswitch_5
    if-eqz v13, :cond_26

    move/from16 v42, v16

    .line 1575
    :goto_14
    goto/16 :goto_e

    :cond_26
    move/from16 v42, v5

    .line 1574
    goto :goto_14

    .line 1577
    :pswitch_6
    if-eqz v13, :cond_27

    sub-int v42, v5, v35

    :goto_15
    goto/16 :goto_e

    :cond_27
    sub-int v42, v16, v35

    goto :goto_15

    .line 1590
    .restart local v41    # "vgravity":I
    .restart local v43    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v37

    .line 1591
    .local v37, "paddedTop":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v36, v3, v4

    .line 1592
    .local v36, "paddedBottom":I
    sub-int v3, v36, v37

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v43, v3, 0x2

    .line 1593
    goto/16 :goto_f

    .line 1595
    .end local v36    # "paddedBottom":I
    .end local v37    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    add-int v43, v3, v40

    .line 1596
    goto/16 :goto_f

    .line 1598
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v43, v3, v21

    goto/16 :goto_f

    .line 1619
    .end local v20    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v21    # "bottomMargin":I
    .end local v29    # "gravity":I
    .end local v31    # "hgravity":I
    .end local v33    # "layoutDirection":I
    .end local v35    # "navWidth":I
    .end local v40    # "topMargin":I
    .end local v41    # "vgravity":I
    .end local v42    # "xpos":I
    .end local v43    # "ypos":I
    .restart local v30    # "halfProgressHeight":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v0, v30

    neg-int v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v10}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    move/from16 v0, v30

    invoke-virtual {v3, v4, v8, v9, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1469
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1569
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1588
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 51
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add conditions to measure top bar "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->removeMenuIfNeed()V

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v8

    .line 1157
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    move/from16 v47, v0

    if-eqz v47, :cond_7

    .line 1158
    const/16 v45, 0x0

    .line 1159
    .local v45, "visibleChildren":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v0, v8, :cond_2

    .line 1160
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1161
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v47

    if-eqz v47, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    if-eq v7, v0, :cond_1

    .line 1164
    add-int/lit8 v45, v45, 0x1

    .line 1159
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 1170
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsableByUser:Z

    move/from16 v47, v0

    if-eqz v47, :cond_4

    if-nez v45, :cond_4

    .line 1172
    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1173
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1414
    .end local v26    # "i":I
    .end local v45    # "visibleChildren":I
    :cond_3
    :goto_1
    return-void

    .line 1177
    .restart local v26    # "i":I
    .restart local v45    # "visibleChildren":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v41

    .line 1178
    .local v41, "upChildCount":I
    const/16 v26, 0x0

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v41

    if-ge v0, v1, :cond_6

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1180
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_5

    .line 1181
    add-int/lit8 v45, v45, 0x1

    .line 1178
    :cond_5
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 1185
    .end local v7    # "child":Landroid/view/View;
    :cond_6
    if-nez v45, :cond_7

    .line 1187
    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1188
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    goto :goto_1

    .line 1192
    .end local v26    # "i":I
    .end local v41    # "upChildCount":I
    .end local v45    # "visibleChildren":I
    :cond_7
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1194
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v46

    .line 1195
    .local v46, "widthMode":I
    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_8

    .line 1196
    new-instance v47, Ljava/lang/IllegalStateException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " can only be used "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v47

    .line 1200
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1201
    .local v18, "heightMode":I
    const/high16 v47, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v47

    if-eq v0, v1, :cond_9

    .line 1202
    new-instance v47, Ljava/lang/IllegalStateException;

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " can only be used "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v47

    .line 1206
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1208
    .local v10, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v47, v0

    if-ltz v47, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v31, v0

    .line 1211
    .local v31, "maxHeight":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v47

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v48

    add-int v44, v47, v48

    .line 1212
    .local v44, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v36

    .line 1213
    .local v36, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v37

    .line 1214
    .local v37, "paddingRight":I
    sub-int v17, v31, v44

    .line 1215
    .local v17, "height":I
    const/high16 v47, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1216
    .local v9, "childSpecHeight":I
    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1218
    .local v16, "exactHeightSpec":I
    sub-int v47, v10, v36

    sub-int v6, v47, v37

    .line 1219
    .local v6, "availableWidth":I
    div-int/lit8 v28, v6, 0x2

    .line 1220
    .local v28, "leftOfCenter":I
    move/from16 v38, v28

    .line 1224
    .local v38, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    if-eqz v47, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/meizu/widget/KeyBackButton;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_a

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v6, v9, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1226
    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v48

    sub-int v48, v6, v48

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1229
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x8

    if-eqz v47, :cond_1a

    const/16 v39, 0x1

    .line 1234
    .local v39, "showTitle":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    .line 1237
    .local v20, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 1239
    .local v21, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    if-gez v47, :cond_1c

    .line 1240
    const/high16 v47, -0x80000000

    move/from16 v0, v47

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1253
    .local v24, "homeWidthSpec":I
    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 1255
    const/16 v23, 0x0

    .line 1256
    .local v23, "homeWidth":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v48, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-eq v0, v1, :cond_c

    :cond_b
    if-eqz v39, :cond_d

    .line 1258
    :cond_c
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v23

    .line 1259
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v47

    add-int v22, v23, v47

    .line 1260
    .local v22, "homeOffsetWidth":I
    const/16 v47, 0x0

    sub-int v48, v6, v22

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1261
    const/16 v47, 0x0

    sub-int v48, v6, v22

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1264
    .end local v22    # "homeOffsetWidth":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v47, v0

    if-eqz v47, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_e

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v16

    move/from16 v3, v48

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1266
    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v48

    sub-int v48, v38, v48

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 1269
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    if-eqz v47, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_f

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v6, v9, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1273
    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v48

    sub-int v48, v38, v48

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 1277
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v47, v0

    if-nez v47, :cond_10

    .line 1278
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v47, v0

    packed-switch v47, :pswitch_data_0

    .line 1308
    :cond_10
    :goto_7
    const/4 v15, 0x0

    .line 1309
    .local v15, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v47, v0

    if-eqz v47, :cond_1f

    .line 1310
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1316
    :cond_11
    :goto_8
    if-eqz v15, :cond_15

    .line 1317
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v47

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .line 1318
    .local v30, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v47, v0

    if-eqz v47, :cond_20

    move-object/from16 v47, v30

    check-cast v47, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v5, v47

    .line 1321
    .local v5, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_9
    const/16 v25, 0x0

    .line 1322
    .local v25, "horizontalMargin":I
    const/16 v43, 0x0

    .line 1323
    .local v43, "verticalMargin":I
    if-eqz v5, :cond_12

    .line 1324
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v47, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v48, v0

    add-int v25, v47, v48

    .line 1325
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v48, v0

    add-int v43, v47, v48

    .line 1331
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v47, v0

    if-gtz v47, :cond_21

    .line 1332
    const/high16 v12, -0x80000000

    .line 1337
    .local v12, "customNavHeightMode":I
    :goto_a
    const/16 v47, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v48, v0

    if-ltz v48, :cond_13

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v48, v0

    move/from16 v0, v48

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .end local v17    # "height":I
    :cond_13
    sub-int v48, v17, v43

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1340
    .local v11, "customNavHeight":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    const/16 v48, -0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_23

    const/high16 v14, 0x40000000    # 2.0f

    .line 1342
    .local v14, "customNavWidthMode":I
    :goto_b
    const/16 v48, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    if-ltz v47, :cond_24

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    move/from16 v0, v47

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v47

    :goto_c
    sub-int v47, v47, v25

    move/from16 v0, v48

    move/from16 v1, v47

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1345
    .local v13, "customNavWidth":I
    if-eqz v5, :cond_25

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v47, v0

    :goto_d
    and-int/lit8 v19, v47, 0x7

    .line 1350
    .local v19, "hgrav":I
    const/16 v47, 0x1

    move/from16 v0, v19

    move/from16 v1, v47

    if-ne v0, v1, :cond_14

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    const/16 v48, -0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_14

    .line 1351
    move/from16 v0, v28

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v47

    mul-int/lit8 v13, v47, 0x2

    .line 1354
    :cond_14
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    move/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1357
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v47

    add-int v47, v47, v25

    sub-int v6, v6, v47

    .line 1369
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v19    # "hgrav":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v43    # "verticalMargin":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    .line 1370
    .local v34, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v47, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x10500cf

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v48

    sub-int v32, v47, v48

    .line 1371
    .local v32, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    if-eqz v47, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/meizu/widget/KeyBackButton;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_16

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mBackButton:Lcom/meizu/widget/KeyBackButton;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/meizu/widget/KeyBackButton;->getMeasuredWidth()I

    move-result v47

    sub-int v32, v32, v47

    .line 1374
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    add-int v48, v6, v23

    move/from16 v0, v48

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v48

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v49, v0

    const/high16 v50, 0x40000000    # 2.0f

    invoke-static/range {v49 .. v50}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    if-eqz v47, :cond_17

    .line 1378
    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v48

    sub-int v48, v28, v48

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1381
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v47, v0

    if-gtz v47, :cond_28

    .line 1382
    const/16 v33, 0x0

    .line 1383
    .local v33, "measuredHeight":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_e
    move/from16 v0, v26

    if-ge v0, v8, :cond_26

    .line 1384
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v42

    .line 1385
    .local v42, "v":Landroid/view/View;
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getMeasuredHeight()I

    move-result v47

    add-int v35, v47, v44

    .line 1386
    .local v35, "paddedViewHeight":I
    move/from16 v0, v35

    move/from16 v1, v33

    if-le v0, v1, :cond_18

    .line 1387
    move/from16 v33, v35

    .line 1383
    :cond_18
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 1208
    .end local v6    # "availableWidth":I
    .end local v9    # "childSpecHeight":I
    .end local v15    # "customView":Landroid/view/View;
    .end local v16    # "exactHeightSpec":I
    .end local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "homeWidth":I
    .end local v24    # "homeWidthSpec":I
    .end local v26    # "i":I
    .end local v28    # "leftOfCenter":I
    .end local v31    # "maxHeight":I
    .end local v32    # "maxWidth":I
    .end local v33    # "measuredHeight":I
    .end local v34    # "metrics":Landroid/util/DisplayMetrics;
    .end local v35    # "paddedViewHeight":I
    .end local v36    # "paddingLeft":I
    .end local v37    # "paddingRight":I
    .end local v38    # "rightOfCenter":I
    .end local v39    # "showTitle":Z
    .end local v42    # "v":Landroid/view/View;
    .end local v44    # "verticalPadding":I
    :cond_19
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    goto/16 :goto_3

    .line 1229
    .restart local v6    # "availableWidth":I
    .restart local v9    # "childSpecHeight":I
    .restart local v16    # "exactHeightSpec":I
    .restart local v17    # "height":I
    .restart local v28    # "leftOfCenter":I
    .restart local v31    # "maxHeight":I
    .restart local v36    # "paddingLeft":I
    .restart local v37    # "paddingRight":I
    .restart local v38    # "rightOfCenter":I
    .restart local v44    # "verticalPadding":I
    :cond_1a
    const/16 v39, 0x0

    goto/16 :goto_4

    .line 1234
    .restart local v39    # "showTitle":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    goto/16 :goto_5

    .line 1242
    .restart local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1c
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "homeWidthSpec":I
    goto/16 :goto_6

    .line 1280
    .restart local v23    # "homeWidth":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    if-eqz v47, :cond_10

    .line 1281
    if-eqz v39, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v47, v0

    mul-int/lit8 v27, v47, 0x2

    .line 1282
    .local v27, "itemPaddingSize":I
    :goto_f
    const/16 v47, 0x0

    sub-int v48, v6, v27

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1283
    const/16 v47, 0x0

    sub-int v48, v28, v27

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    const/high16 v48, -0x80000000

    move/from16 v0, v48

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    const/high16 v49, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v49

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    invoke-virtual/range {v47 .. v49}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v29

    .line 1288
    .local v29, "listNavWidth":I
    const/16 v47, 0x0

    sub-int v48, v6, v29

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1289
    const/16 v47, 0x0

    sub-int v48, v28, v29

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1290
    goto/16 :goto_7

    .line 1281
    .end local v27    # "itemPaddingSize":I
    .end local v29    # "listNavWidth":I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_f

    .line 1293
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v47, v0

    if-eqz v47, :cond_10

    .line 1294
    if-eqz v39, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v47, v0

    mul-int/lit8 v27, v47, 0x2

    .line 1295
    .restart local v27    # "itemPaddingSize":I
    :goto_10
    const/16 v47, 0x0

    sub-int v48, v6, v27

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1296
    const/16 v47, 0x0

    sub-int v48, v28, v27

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v47, v0

    const/high16 v48, -0x80000000

    move/from16 v0, v48

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    const/high16 v49, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v49

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    invoke-virtual/range {v47 .. v49}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v40

    .line 1301
    .local v40, "tabWidth":I
    const/16 v47, 0x0

    sub-int v48, v6, v40

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1302
    const/16 v47, 0x0

    sub-int v48, v28, v40

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_7

    .line 1294
    .end local v27    # "itemPaddingSize":I
    .end local v40    # "tabWidth":I
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_10

    .line 1311
    .restart local v15    # "customView":Landroid/view/View;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v47, v0

    and-int/lit8 v47, v47, 0x10

    if-eqz v47, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v47, v0

    if-eqz v47, :cond_11

    .line 1313
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_8

    .line 1318
    .restart local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1334
    .restart local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .restart local v25    # "horizontalMargin":I
    .restart local v43    # "verticalMargin":I
    :cond_21
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v47, v0

    const/16 v48, -0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_22

    const/high16 v12, 0x40000000    # 2.0f

    .restart local v12    # "customNavHeightMode":I
    :goto_11
    goto/16 :goto_a

    .end local v12    # "customNavHeightMode":I
    :cond_22
    const/high16 v12, -0x80000000

    goto :goto_11

    .line 1340
    .end local v17    # "height":I
    .restart local v11    # "customNavHeight":I
    .restart local v12    # "customNavHeightMode":I
    :cond_23
    const/high16 v14, -0x80000000

    goto/16 :goto_b

    .restart local v14    # "customNavWidthMode":I
    :cond_24
    move/from16 v47, v6

    .line 1342
    goto/16 :goto_c

    .line 1345
    .restart local v13    # "customNavWidth":I
    :cond_25
    const v47, 0x800013

    goto/16 :goto_d

    .line 1390
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v43    # "verticalMargin":I
    .restart local v26    # "i":I
    .restart local v32    # "maxWidth":I
    .restart local v33    # "measuredHeight":I
    .restart local v34    # "metrics":Landroid/util/DisplayMetrics;
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1395
    .end local v26    # "i":I
    .end local v33    # "measuredHeight":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v47, v0

    if-eqz v47, :cond_27

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v47, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1399
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    if-eqz v47, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v47

    const/16 v48, 0x8

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_3

    .line 1402
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarAtBottom:Z

    move/from16 v47, v0

    if-eqz v47, :cond_29

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    move/from16 v0, v48

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x10500db

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v49

    const/high16 v50, 0x40000000    # 2.0f

    invoke-static/range {v49 .. v50}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    invoke-virtual/range {v47 .. v49}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_1

    .line 1392
    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_12

    .line 1410
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v48, v0

    mul-int/lit8 v48, v48, 0x2

    sub-int v48, v10, v48

    const/high16 v49, 0x40000000    # 2.0f

    invoke-static/range {v48 .. v49}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v49

    const/high16 v50, -0x80000000

    invoke-static/range {v49 .. v50}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    invoke-virtual/range {v47 .. v49}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_1

    .line 1278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1653
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1655
    .local v1, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1657
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1659
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1660
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1661
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1665
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1666
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1668
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1639
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1640
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1642
    .local v0, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1643
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1646
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1648
    return-object v0
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2490
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSmartBarConfigurationChanged()V

    .line 2491
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_smartbar_auto_hide"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2492
    .local v0, "splitActionbar":Z
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mCompulsorySplit:Z

    if-eq v2, v0, :cond_1

    .line 2493
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mCompulsorySplit:Z

    .line 2495
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mCompulsorySplit:Z

    if-nez v2, :cond_2

    .line 2496
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setShowing(Z)V

    .line 2500
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 2502
    :cond_1
    return-void

    .line 2498
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setShowing(Z)V

    goto :goto_0
.end method

.method public removeMenuIfNeed()V
    .locals 14
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add removeMenuIfNeed"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x5

    const/4 v11, 0x0

    .line 2108
    sget-object v9, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/widget/ActionBarView;->mIsOverlay:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/internal/widget/ActionBarView;->mSplitWhenNarrow:Z

    if-nez v9, :cond_1

    .line 2181
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    iget-boolean v9, p0, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    instance-of v9, v9, Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v9, :cond_7

    .line 2112
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    check-cast v6, Lcom/android/internal/widget/MzActionBarContainer;

    .line 2113
    .local v6, "splitView":Lcom/android/internal/widget/MzActionBarContainer;
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/widget/MzActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v9, :cond_0

    .line 2114
    invoke-virtual {v6}, Lcom/android/internal/widget/MzActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 2115
    .local v7, "tabContainer":Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v2

    .line 2116
    .local v2, "menuItemCount":I
    invoke-virtual {v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->getTabItemCount()I

    move-result v8

    .line 2117
    .local v8, "tabItemCount":I
    if-lez v2, :cond_2

    .line 2118
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v9, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2119
    .local v0, "child1":Landroid/view/View;
    instance-of v9, v0, Lcom/meizu/widget/KeyBackButton;

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    .line 2122
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuPresenter;->reflashMenu()V

    .line 2123
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v2

    .line 2126
    .end local v0    # "child1":Landroid/view/View;
    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/widget/ActionBarView;->mDockTabAndMenu:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, p0, :cond_3

    .line 2127
    iput-boolean v11, p0, Lcom/android/internal/widget/ActionBarView;->mDockTabAndMenu:Z

    .line 2129
    :cond_3
    iget-boolean v9, p0, Lcom/android/internal/widget/ActionBarView;->mDockTabAndMenu:Z

    if-eqz v9, :cond_5

    .line 2130
    add-int v9, v2, v8

    if-le v9, v12, :cond_0

    .line 2131
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2132
    .local v5, "parent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_4

    .line 2133
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2135
    :cond_4
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 2136
    invoke-virtual {v7, v13}, Lcom/android/internal/widget/ScrollingTabContainerView;->setMenu(Landroid/view/ViewGroup;)V

    .line 2137
    iput-boolean v11, p0, Lcom/android/internal/widget/ActionBarView;->mDockTabAndMenu:Z

    goto :goto_0

    .line 2140
    .end local v5    # "parent":Landroid/view/ViewGroup;
    :cond_5
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, p0, :cond_0

    if-lez v2, :cond_0

    add-int v9, v2, v8

    if-gt v9, v12, :cond_0

    .line 2142
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2143
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    .line 2144
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2147
    :cond_6
    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2148
    .local v1, "measureSpec":I
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v9, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measure(II)V

    .line 2149
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/ScrollingTabContainerView;->setMenu(Landroid/view/ViewGroup;)V

    .line 2150
    invoke-virtual {v7, p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setActionbarView(Lcom/android/internal/widget/ActionBarView;)V

    .line 2151
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/widget/ActionBarView;->mDockTabAndMenu:Z

    goto/16 :goto_0

    .line 2155
    .end local v1    # "measureSpec":I
    .end local v2    # "menuItemCount":I
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    .end local v6    # "splitView":Lcom/android/internal/widget/MzActionBarContainer;
    .end local v7    # "tabContainer":Lcom/android/internal/widget/ScrollingTabContainerView;
    .end local v8    # "tabItemCount":I
    :cond_7
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    instance-of v9, v9, Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v9}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/widget/ActionBarView;->mIsOverlay:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v9, :cond_0

    .line 2159
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    check-cast v6, Lcom/android/internal/widget/MzActionBarContainer;

    .line 2161
    .restart local v6    # "splitView":Lcom/android/internal/widget/MzActionBarContainer;
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2162
    .restart local v5    # "parent":Landroid/view/ViewGroup;
    iget-boolean v9, p0, Lcom/android/internal/widget/ActionBarView;->mOrientatinPortrait:Z

    if-eqz v9, :cond_8

    if-ne v5, p0, :cond_8

    .line 2164
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuPresenter;->removeOverflowButton()Landroid/view/View;

    move-result-object v4

    .line 2165
    .local v4, "overflowButton":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 2175
    invoke-virtual {v6, v4}, Lcom/android/internal/widget/MzActionBarContainer;->setMenu(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2178
    .end local v4    # "overflowButton":Landroid/view/View;
    :cond_8
    invoke-virtual {v6, v13}, Lcom/android/internal/widget/MzActionBarContainer;->setMenu(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public setActionBarSplitChangedListener(Lcom/android/internal/widget/ActionBarView$OnActionBarSplitChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ActionBarView$OnActionBarSplitChangedListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setActionBarSplitChangedListener"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2233
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitChangedListener:Lcom/android/internal/widget/ActionBarView$OnActionBarSplitChangedListener;

    .line 2234
    return-void
.end method

.method public setActionItemBackgroundEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add Action item background"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2089
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mEnableActionItemBackground:Z

    .line 2090
    return-void
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    .line 532
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 2
    .param p1, "collapsable"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add conditions"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1112
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 1115
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsableByUser:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 1117
    return-void
.end method

.method public setCollapsableByUser(Z)V
    .locals 0
    .param p1, "collapsable"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to set Collapsable by user "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2384
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsableByUser:Z

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 2385
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1105
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 673
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 674
    .local v0, "showCustom":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 675
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 678
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 680
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 681
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 682
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 684
    :cond_2
    return-void

    .line 673
    .end local v0    # "showCustom":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 12
    .param p1, "options"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to update up view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 819
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_7

    .line 820
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 822
    and-int/lit8 v9, v0, 0x3f

    if-eqz v9, :cond_14

    .line 823
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 825
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_1

    .line 826
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_8

    move v4, v7

    .line 827
    .local v4, "setUp":Z
    :goto_1
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 833
    if-eqz v4, :cond_0

    .line 834
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 838
    :cond_0
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->isDeviceDefaultTheme()Z

    move-result v9

    if-nez v9, :cond_9

    .line 839
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->updateUpView()V

    .line 852
    .end local v4    # "setUp":Z
    :cond_1
    :goto_2
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_2

    .line 853
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_a

    .line 854
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 860
    :cond_2
    :goto_3
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_b

    move v5, v7

    .line 861
    .local v5, "showHome":Z
    :goto_4
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_c

    move v1, v7

    .line 862
    .local v1, "homeAsUp":Z
    :goto_5
    if-nez v5, :cond_d

    if-eqz v1, :cond_d

    move v6, v7

    .line 863
    .local v6, "titleUp":Z
    :goto_6
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 865
    if-nez v5, :cond_3

    if-eqz v6, :cond_e

    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_e

    move v2, v8

    .line 867
    .local v2, "homeVis":I
    :goto_7
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 869
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 870
    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_f

    .line 871
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 877
    :cond_4
    :goto_8
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 879
    and-int/lit8 v9, p1, 0x20

    if-eqz v9, :cond_10

    .line 880
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 881
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 890
    :cond_5
    :goto_9
    if-eqz v5, :cond_13

    .line 891
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 893
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 894
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 895
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/internal/widget/ActionBarView;->loadDrawable(Landroid/content/Context;)V

    .line 896
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_6

    .line 897
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_11

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_11

    move v3, v7

    .line 898
    .local v3, "logoVis":Z
    :goto_a
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_12

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_b
    invoke-virtual {v8, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 908
    .end local v3    # "logoVis":Z
    :cond_6
    :goto_c
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 914
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :goto_d
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 915
    return-void

    .line 819
    .end local v0    # "flagsChanged":I
    :cond_7
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_8
    move v4, v8

    .line 826
    goto/16 :goto_1

    .line 841
    .restart local v4    # "setUp":Z
    :cond_9
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    goto/16 :goto_2

    .line 856
    .end local v4    # "setUp":Z
    :cond_a
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_b
    move v5, v8

    .line 860
    goto/16 :goto_4

    .restart local v5    # "showHome":Z
    :cond_c
    move v1, v8

    .line 861
    goto/16 :goto_5

    .restart local v1    # "homeAsUp":Z
    :cond_d
    move v6, v8

    .line 862
    goto/16 :goto_6

    .line 865
    .restart local v6    # "titleUp":Z
    :cond_e
    const/16 v2, 0x8

    goto/16 :goto_7

    .line 873
    .restart local v2    # "homeVis":I
    :cond_f
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto/16 :goto_8

    .line 883
    :cond_10
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 884
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_9

    :cond_11
    move v3, v8

    .line 897
    goto :goto_a

    .line 898
    .restart local v3    # "logoVis":Z
    :cond_12
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    .line 901
    .end local v3    # "logoVis":Z
    :cond_13
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 903
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v11}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    goto :goto_c

    .line 910
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    goto :goto_d
.end method

.method public setDockTabAndMenu(Z)V
    .locals 0
    .param p1, "dockTabAndMenu"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add to set the flag of mDockTabAndMenu"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2509
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mDockTabAndMenu:Z

    .line 2510
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 1002
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1005
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1013
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 5
    .param p1, "tabs"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to update back button"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 512
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 515
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 516
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 517
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 518
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 519
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 520
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 521
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 522
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 525
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setBackButtonEnable(Z)V

    .line 528
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 516
    goto :goto_0
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
    .line 2465
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mEnableBackButton:Z

    if-eq v0, p1, :cond_0

    .line 2466
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mEnableBackButton:Z

    .line 2467
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->updateSplitBackButton()V

    .line 2468
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 2469
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->reflashMenu()V

    .line 2473
    :cond_0
    return-void
.end method

.method public setEnabledBackWhenOverlay(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to enable backbutton when overlay"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2213
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mShowBackWhenOverlay:Z

    if-eq v0, p1, :cond_0

    .line 2214
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mShowBackWhenOverlay:Z

    .line 2215
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->updateSplitBackButton()V

    .line 2218
    :cond_0
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1684
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 1685
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1686
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1687
    return-void

    .line 1685
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1679
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1680
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1681
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1676
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1672
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 748
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 749
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 932
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 933
    return-void

    .line 932
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 919
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 925
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-nez v0, :cond_3

    .line 929
    :cond_2
    :goto_0
    return-void

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 947
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 948
    return-void

    .line 947
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 940
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 941
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 944
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to update background \uff0cback button and limit action item counts"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 543
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v5, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v5, :cond_2

    .line 546
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 547
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_2
    move-object v0, p1

    .line 550
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 551
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 552
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v5, :cond_3

    .line 553
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 554
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_3

    .line 555
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 558
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-nez v5, :cond_4

    .line 559
    new-instance v5, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 560
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, p2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 561
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v6, 0x1020264

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 562
    new-instance v5, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 566
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mOverFlowButtonIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setOverFlowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mIsOverlay:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mSplitWhenNarrow:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v5, :cond_5

    .line 572
    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mOrientatinPortrait:Z

    if-eqz v5, :cond_a

    .line 573
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 581
    :cond_5
    :goto_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 587
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    if-eqz v5, :cond_b

    .line 589
    :cond_6
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 592
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 595
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarView;->mEnableActionItemBackground:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setActionItemBackgroundEnable(Z)V

    .line 596
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->updateSplitBackButton()V

    .line 598
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 599
    .local v2, "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 600
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_7

    if-eq v3, p0, :cond_7

    .line 601
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 603
    :cond_7
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    sget-boolean v5, Lcom/android/internal/widget/ActionBarView;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 605
    const-string v5, "ActionBarView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add Menu, configuration.orientation :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", is splitActionBar :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_8
    :goto_2
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    .line 641
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v5, :cond_0

    .line 642
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarView;->mInActionMode:Z

    if-eqz v6, :cond_9

    const/16 v4, 0x8

    :cond_9
    invoke-virtual {v5, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setVisibility(I)V

    goto/16 :goto_0

    .line 575
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    :cond_a
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, v8}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    goto/16 :goto_1

    .line 607
    .restart local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 609
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 612
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 615
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 618
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 619
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 622
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->updateSplitBackButton()V

    .line 624
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v5, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 625
    .restart local v2    # "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_d

    .line 626
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 627
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_c

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eq v3, v5, :cond_c

    .line 628
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 630
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 631
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v2, v1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 634
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_d
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    .line 536
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 955
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 956
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_2

    .line 957
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 958
    packed-switch v0, :pswitch_data_0

    .line 970
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 995
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 996
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 998
    :cond_2
    return-void

    .line 960
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 961
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 965
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 966
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 972
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    .line 973
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 975
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    const v3, 0x1020267

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setId(I)V

    .line 976
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102f4

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 978
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 980
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 981
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 984
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 986
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 987
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 990
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 991
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 958
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 970
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setProgressBarShowAtBottom(Z)V
    .locals 1
    .param p1, "showAtBottom"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to setProgressBarShowAtBottom "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2480
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressBarAtBottom:Z

    if-eq v0, p1, :cond_0

    .line 2481
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mProgressBarAtBottom:Z

    .line 2482
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 2484
    :cond_0
    return-void
.end method

.method public setShowing(Z)V
    .locals 0
    .param p1, "isShowing"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to show split actionbar "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2252
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsShowing:Z

    .line 2253
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 6
    .param p1, "splitActionBar"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to conditions for split actionbar "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 433
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_7

    .line 434
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_2

    .line 435
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 436
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 443
    :cond_0
    if-eqz p1, :cond_8

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    if-nez v2, :cond_8

    .line 445
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_1

    .line 446
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v5, -0x1

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 453
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 455
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_4

    .line 456
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_9

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 459
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mIsShowing:Z

    if-eqz v5, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 463
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v2, :cond_6

    .line 464
    if-nez p1, :cond_a

    .line 466
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 467
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    if-eqz v0, :cond_5

    .line 468
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 470
    :cond_5
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 486
    .end local v0    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 490
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitChangedListener:Lcom/android/internal/widget/ActionBarView$OnActionBarSplitChangedListener;

    if-eqz v2, :cond_7

    .line 491
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitChangedListener:Lcom/android/internal/widget/ActionBarView$OnActionBarSplitChangedListener;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ActionBarView$OnActionBarSplitChangedListener;->onSplitChanged(Z)V

    .line 495
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->updateSplitBackButton()V

    .line 497
    return-void

    .line 450
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_8
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 451
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_9
    move v2, v4

    .line 456
    goto :goto_1

    .line 474
    :cond_a
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 476
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 479
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 482
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 734
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 735
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 736
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 742
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 744
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 745
    return-void

    :cond_2
    move v1, v3

    .line 738
    goto :goto_0

    :cond_3
    move v0, v2

    .line 739
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_4
    move v2, v3

    .line 742
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 698
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 699
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 393
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 709
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 711
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowAsActionMenu()Z
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to judge menu showed as ActionMenu or not"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2100
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mDockTabAndMenu:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showTabsAtBottom(Z)V
    .locals 3
    .param p1, "showAtBottom"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to set tab show at bottom "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2317
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    if-eq v1, p1, :cond_2

    .line 2318
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    .line 2319
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_1

    .line 2320
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2321
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2322
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2324
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    if-nez v1, :cond_3

    .line 2325
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 2326
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 2327
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2335
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->updateSplitBackButton()V

    .line 2337
    :cond_2
    return-void

    .line 2330
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 2331
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public updateSplitBackButton()V
    .locals 9
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to update backbutton on split actionbar "
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2260
    sget-object v7, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2307
    :cond_0
    :goto_0
    return-void

    .line 2264
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    .line 2265
    .local v2, "splitActionBar":Z
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    instance-of v7, v7, Lcom/android/internal/widget/MzActionBarContainer;

    if-eqz v7, :cond_0

    .line 2266
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    check-cast v3, Lcom/android/internal/widget/MzActionBarContainer;

    .line 2267
    .local v3, "splitView":Lcom/android/internal/widget/MzActionBarContainer;
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mOrientatinPortrait:Z

    if-nez v7, :cond_5

    .line 2268
    invoke-virtual {v3, v5, v5}, Lcom/android/internal/widget/MzActionBarContainer;->setBackButtonEnable(ZZ)V

    .line 2269
    move v1, v2

    .line 2271
    .local v1, "barVisible":Z
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mIsOverlay:Z

    if-eqz v7, :cond_2

    .line 2272
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getWindowSystemUiVisibility()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_3

    :goto_1
    and-int/2addr v1, v4

    .line 2275
    :cond_2
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 2276
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v4, :cond_0

    .line 2277
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v5, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setBackButtonEnable(ZZ)V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 2272
    goto :goto_1

    :cond_4
    move v4, v6

    .line 2275
    goto :goto_2

    .line 2280
    .end local v1    # "barVisible":Z
    :cond_5
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mEnableBackButton:Z

    if-eqz v7, :cond_9

    if-eqz v2, :cond_9

    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v7, :cond_9

    move v0, v4

    .line 2282
    .local v0, "addToMenu":Z
    :goto_3
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v7, :cond_6

    .line 2283
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mIsOverlay:Z

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mShowBackWhenOverlay:Z

    if-nez v7, :cond_a

    move v7, v4

    :goto_4
    invoke-virtual {v8, v0, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setBackButtonEnable(ZZ)V

    .line 2286
    :cond_6
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mIsOverlay:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mShowBackWhenOverlay:Z

    if-eqz v7, :cond_8

    .line 2287
    :cond_7
    if-eqz v0, :cond_b

    move v7, v5

    :goto_5
    iget-boolean v8, p0, Lcom/android/internal/widget/ActionBarView;->mShowTabsAtBottom:Z

    if-nez v8, :cond_c

    :goto_6
    invoke-virtual {v3, v7, v4}, Lcom/android/internal/widget/MzActionBarContainer;->setBackButtonEnable(ZZ)V

    .line 2290
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarView;->mIsOverlay:Z

    if-nez v4, :cond_f

    .line 2295
    invoke-static {}, Landroid/app/ActivityThread;->isCtsTestPackage()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2296
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "addToMenu":Z
    :cond_9
    move v0, v5

    .line 2280
    goto :goto_3

    .restart local v0    # "addToMenu":Z
    :cond_a
    move v7, v5

    .line 2283
    goto :goto_4

    .line 2287
    :cond_b
    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mEnableBackButton:Z

    goto :goto_5

    :cond_c
    move v4, v5

    goto :goto_6

    .line 2298
    :cond_d
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mIsShowing:Z

    if-eqz v7, :cond_e

    :goto_7
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto/16 :goto_0

    :cond_e
    move v5, v6

    goto :goto_7

    .line 2302
    :cond_f
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIsShowing:Z

    .line 2303
    .restart local v1    # "barVisible":Z
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_10

    :goto_8
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    move v5, v6

    goto :goto_8
.end method

.method public useMzTitleLayout(Z)V
    .locals 2
    .param p1, "used"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to custom title layout"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2363
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mMzTitleLayout:Z

    .line 2364
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 2365
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 2367
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2368
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 2370
    :cond_0
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 2371
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 2372
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 2374
    :cond_1
    return-void
.end method
