.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static mEllipsize:Landroid/text/TextUtils$TruncateAt;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add list content ellipsis type, default at the end"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# instance fields
.field private BIT_BUTTON_NEGATIVE:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add BIT_BUTTON_NEGATIVE"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private BIT_BUTTON_NEUTRAL:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add BIT_BUTTON_NEUTRAL"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private BIT_BUTTON_POSITIVE:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add BIT_BUTTON_POSITIVE"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add checkBoxListener"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected isChecked:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the checked state of CheckBox"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field protected labelOfCheckBox:Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add labelOfCheckBox"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mAnchorView:Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add the anchor view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mAutoShowSoftInput:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add mAutoShowSoftInput"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mButtonHandler:Landroid/view/View$OnClickListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. modify determine whether the dialog can be dismiss when every button is clicked"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDismiss:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add determine whether the dialog can be dismiss when negative button is clicked"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNegativeTextColorId:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the negative button textColor"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDismiss:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add determine whether the dialog can be dismiss when neutral button is clicked"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonNeutralTextColorId:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the neutral button textColor"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDismiss:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add determine whether the dialog can be dismiss when positive button is clicked"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mButtonPositiveTextColorId:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the posivive button textColor"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustEditHasMargin:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add mCustEditHasMargin"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mCustomTitleView:Landroid/view/View;

.field private mDialog:Landroid/app/Dialog;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add the dealog\'s reference"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mListViewWidth:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add mListViewWidth"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mMaxHeight:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add max height"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMsgALignType:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add message text align type"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleStyle:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add the title style"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private mWidth:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. add the width of dialog"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private final mWindow:Landroid/view/Window;

.field private mXCoordinate:Ljava/lang/Integer;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the x-coordinate of anchorView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private whichButtons:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add Buttons you have setuped"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    sput-object v0, Lcom/android/internal/app/AlertController;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 135
    iput v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 151
    iput v4, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 179
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveDismiss:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeDismiss:Z

    .line 191
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralDismiss:Z

    .line 197
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mAutoShowSoftInput:Z

    .line 203
    iput-object v5, p0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    .line 215
    iput v3, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    .line 221
    iput v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_POSITIVE:I

    .line 227
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEGATIVE:I

    .line 233
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEUTRAL:I

    .line 267
    iput v3, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveTextColorId:I

    .line 273
    iput v3, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeTextColorId:I

    .line 279
    iput v3, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralTextColorId:I

    .line 289
    iput v4, p0, Lcom/android/internal/app/AlertController;->mMsgALignType:I

    .line 295
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 335
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mCustEditHasMargin:Z

    .line 381
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 382
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 383
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 384
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 386
    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v2, 0x101005d

    invoke-virtual {p1, v5, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 390
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, 0x1090024

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 392
    const/16 v1, 0xb

    const v2, 0x10900ed

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 395
    const/16 v1, 0xc

    const v2, 0x1090013

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 398
    const/16 v1, 0xd

    const v2, 0x1090012

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 401
    const/16 v1, 0xe

    const v2, 0x1090011

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 405
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/internal/app/AlertController;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/AlertController;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/app/AlertController;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/app/AlertController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/app/AlertController;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/app/AlertController;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/app/AlertController;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController;->dismissDialogOnClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method private adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 29
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. adjust the layout of the dialog window"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2066
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 2067
    .local v25, "windowLocation":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2069
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 2070
    .local v10, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "input_method"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    .line 2073
    .local v11, "iMM":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 2075
    .local v20, "res":Landroid/content/res/Resources;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 2078
    .end local v20    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 2080
    .local v16, "mCurrentOrientation":I
    const/16 v26, 0x2

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    const/4 v4, 0x0

    .line 2083
    .local v4, "actionButtonMinHeight":I
    :goto_0
    const/16 v21, 0x0

    .line 2084
    .local v21, "topShadowHeight":I
    const/4 v6, 0x0

    .line 2085
    .local v6, "bottomShadowHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v26, v0

    const v27, 0x1020297

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 2086
    .local v17, "parentPanel":Landroid/widget/LinearLayout;
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v26, v0

    const v27, 0x102029f

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 2088
    .local v9, "contentPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMinimumHeight(I)V

    .line 2089
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2090
    .local v5, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 2091
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 2092
    .local v19, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2093
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 2094
    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 2098
    .end local v19    # "rect":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getDividerHeight()I

    .line 2099
    const/4 v8, 0x0

    .line 2100
    .local v8, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    if-lez v26, :cond_5

    .line 2101
    const/4 v12, 0x0

    .line 2102
    .local v12, "itemHeight":I
    const/16 v18, 0x0

    .line 2104
    .local v18, "position":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 2105
    .local v13, "itemView":Landroid/view/View;
    if-eqz v13, :cond_3

    .line 2106
    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 2107
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 2109
    :cond_3
    add-int/lit8 v18, v18, 0x1

    .line 2110
    if-gtz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    .line 2111
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v26

    add-int v26, v26, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/widget/ListAdapter;->getCount()I

    move-result v27

    mul-int v26, v26, v27

    add-int v26, v26, v21

    add-int v8, v26, v6

    .line 2116
    .end local v12    # "itemHeight":I
    .end local v13    # "itemView":Landroid/view/View;
    .end local v18    # "position":I
    :cond_5
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v26, v26, v4

    const/16 v27, 0x1

    aget v27, v25, v27

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getHeight()I

    move-result v27

    sub-int v7, v26, v27

    .line 2117
    .local v7, "bottomSpecHeight":I
    const/16 v26, 0x1

    aget v26, v25, v26

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v22, v26, v27

    .line 2119
    .local v22, "topSpecHeight":I
    if-le v8, v7, :cond_9

    move/from16 v0, v22

    if-le v0, v7, :cond_9

    .line 2120
    const/16 v26, 0x51

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2121
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    const/16 v27, 0x1

    aget v27, v25, v27

    sub-int v26, v26, v27

    sub-int v26, v26, v6

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2122
    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 2130
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 2131
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v26, v0

    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    add-int v26, v26, v27

    iget v0, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v27, v0

    add-int v24, v26, v27

    .line 2132
    .local v24, "width":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, -0x2

    const v27, 0x800003

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mXCoordinate:Ljava/lang/Integer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v26, v0

    const/16 v27, 0x200

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->addFlags(I)V

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mXCoordinate:Ljava/lang/Integer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2147
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v23

    .line 2148
    .local v23, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v23, :cond_7

    .line 2149
    new-instance v14, Lcom/android/internal/app/AlertController$4;

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v14, v0, v1, v2}, Lcom/android/internal/app/AlertController$4;-><init>(Lcom/android/internal/app/AlertController;ILandroid/view/ViewTreeObserver;)V

    .line 2161
    .local v14, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2165
    .end local v14    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_7
    return-void

    .line 2080
    .end local v4    # "actionButtonMinHeight":I
    .end local v5    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "bottomShadowHeight":I
    .end local v7    # "bottomSpecHeight":I
    .end local v8    # "contentHeight":I
    .end local v9    # "contentPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "parentPanel":Landroid/widget/LinearLayout;
    .end local v21    # "topShadowHeight":I
    .end local v22    # "topSpecHeight":I
    .end local v23    # "vto":Landroid/view/ViewTreeObserver;
    .end local v24    # "width":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x1050198

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    .line 2124
    .restart local v4    # "actionButtonMinHeight":I
    .restart local v5    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "bottomShadowHeight":I
    .restart local v7    # "bottomSpecHeight":I
    .restart local v8    # "contentHeight":I
    .restart local v9    # "contentPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    .restart local v17    # "parentPanel":Landroid/widget/LinearLayout;
    .restart local v21    # "topShadowHeight":I
    .restart local v22    # "topSpecHeight":I
    :cond_9
    const/16 v26, 0x31

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2125
    const/16 v26, 0x1

    aget v26, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getHeight()I

    move-result v27

    add-int v26, v26, v27

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    sub-int v26, v26, v21

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2126
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto/16 :goto_1

    .line 2137
    .restart local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v24    # "width":I
    :cond_a
    const/16 v26, 0x0

    aget v26, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getWidth()I

    move-result v27

    sub-int v27, v27, v24

    div-int/lit8 v27, v27, 0x2

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2138
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v26, v0

    if-gez v26, :cond_b

    .line 2139
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2141
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v26, v0

    if-lez v26, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v26, v0

    add-int v26, v26, v24

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 2142
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2143
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v26, v0

    const v27, -0x800004

    and-int v26, v26, v27

    const v27, 0x800005

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_2
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. modify if the view is\'t visible, return false"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v2

    .line 421
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 422
    goto :goto_0

    .line 425
    :cond_2
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, p0

    .line 429
    check-cast v1, Landroid/view/ViewGroup;

    .line 430
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 431
    .local v0, "i":I
    :cond_3
    if-lez v0, :cond_0

    .line 432
    add-int/lit8 v0, v0, -0x1

    .line 433
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 434
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 435
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 854
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 855
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 856
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 857
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102029d

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 859
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 862
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102029e

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 863
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 864
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 866
    :cond_1
    return-void
.end method

.method private clickOnPaddingDismiss(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "parentPanel"    # Landroid/widget/LinearLayout;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. touch on paddings area, the dialog dismiss"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2327
    new-instance v0, Lcom/android/internal/app/AlertController$6;

    invoke-direct {v0, p0}, Lcom/android/internal/app/AlertController$6;-><init>(Lcom/android/internal/app/AlertController;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2348
    return-void
.end method

.method private createColorList(I)Landroid/content/res/ColorStateList;
    .locals 10
    .param p1, "colorId"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add."
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2362
    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2368
    .local v0, "color":I
    const/16 v5, 0x4d

    invoke-static {v5, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 2369
    .local v3, "disableColor":I
    new-array v4, v9, [[I

    .line 2370
    .local v4, "states":[[I
    new-array v5, v8, [I

    const v6, 0x101009e

    aput v6, v5, v7

    aput-object v5, v4, v7

    .line 2373
    new-array v5, v7, [I

    aput-object v5, v4, v8

    .line 2374
    new-array v2, v9, [I

    aput v0, v2, v7

    aput v3, v2, v8

    .line 2378
    .local v2, "colors":[I
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v4, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 2379
    .local v1, "colorList":Landroid/content/res/ColorStateList;
    return-object v1
.end method

.method private dismissDialogOnClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add determine whether the dialog can be dismiss"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2185
    const/4 v0, 0x1

    .line 2186
    .local v0, "dismiss":Z
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 2187
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveDismiss:Z

    .line 2193
    :cond_0
    :goto_0
    return v0

    .line 2188
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 2189
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeDismiss:Z

    goto :goto_0

    .line 2190
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 2191
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralDismiss:Z

    goto :goto_0
.end method

.method private getOneEditText(Landroid/view/View;)Landroid/widget/EditText;
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. get a editText object"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1857
    const/4 v4, 0x0

    .line 1858
    .local v4, "vg":Landroid/view/ViewGroup;
    instance-of v6, p1, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 1859
    check-cast p1, Landroid/widget/EditText;

    .line 1874
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-object p1

    .line 1861
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v4, p1

    .line 1862
    check-cast v4, Landroid/view/ViewGroup;

    .line 1864
    :cond_1
    if-nez v4, :cond_2

    move-object p1, v5

    .line 1865
    goto :goto_0

    .line 1867
    :cond_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1868
    .local v0, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 1869
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1870
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertController;->getOneEditText(Landroid/view/View;)Landroid/widget/EditText;

    move-result-object v2

    .line 1871
    .local v2, "editText":Landroid/widget/EditText;
    if-eqz v2, :cond_3

    move-object p1, v2

    .line 1872
    goto :goto_0

    .line 1868
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "editText":Landroid/widget/EditText;
    :cond_4
    move-object p1, v5

    .line 1874
    goto :goto_0
.end method

.method private hasEditTextCount(Landroid/view/View;)I
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. calculate how many editText in the view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1833
    const/4 v2, 0x0

    .line 1834
    .local v2, "editCount":I
    const/4 v4, 0x0

    .line 1835
    .local v4, "vg":Landroid/view/ViewGroup;
    instance-of v5, p1, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 1836
    const/4 v5, 0x1

    .line 1849
    :goto_0
    return v5

    .line 1838
    :cond_0
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 1839
    check-cast v4, Landroid/view/ViewGroup;

    .line 1841
    :cond_1
    if-nez v4, :cond_2

    .line 1842
    const/4 v5, 0x0

    goto :goto_0

    .line 1844
    :cond_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1845
    .local v0, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1846
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1847
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertController;->hasEditTextCount(Landroid/view/View;)I

    move-result v5

    add-int/2addr v2, v5

    .line 1845
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "child":Landroid/view/View;
    :cond_3
    move v5, v2

    .line 1849
    goto :goto_0
.end method

.method private hasGridView(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. whether the dialog has gridView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1910
    const/4 v3, 0x0

    .line 1911
    .local v3, "vg":Landroid/view/ViewGroup;
    instance-of v6, p1, Landroid/widget/GridView;

    if-eqz v6, :cond_1

    .line 1931
    :cond_0
    :goto_0
    return v4

    .line 1915
    :cond_1
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v3, p1

    .line 1916
    check-cast v3, Landroid/view/ViewGroup;

    .line 1919
    :cond_2
    if-nez v3, :cond_3

    move v4, v5

    .line 1920
    goto :goto_0

    .line 1923
    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1924
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 1925
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1926
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->hasEditTextCount(Landroid/view/View;)I

    move-result v6

    if-gtz v6, :cond_0

    .line 1924
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_4
    move v4, v5

    .line 1931
    goto :goto_0
.end method

.method private hasScrollTextView(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. whether the dialog has scrollTextView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1882
    const/4 v4, 0x0

    .line 1886
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.meizu.widget.ScrollTextView"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1902
    :cond_0
    :goto_0
    return v5

    .line 1889
    :cond_1
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v4, p1

    .line 1890
    check-cast v4, Landroid/view/ViewGroup;

    .line 1892
    :cond_2
    if-nez v4, :cond_3

    move v5, v6

    .line 1893
    goto :goto_0

    .line 1895
    :cond_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1896
    .local v1, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 1897
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1898
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->hasScrollTextView(Landroid/view/View;)Z

    move-result v0

    .line 1899
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 1896
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "b":Z
    .end local v2    # "child":Landroid/view/View;
    :cond_4
    move v5, v6

    .line 1902
    goto :goto_0
.end method

.method private isTextEditable(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1402
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1424
    :cond_0
    :goto_0
    return v2

    .line 1406
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 1407
    goto :goto_0

    .line 1410
    :cond_2
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 1414
    check-cast v1, Landroid/view/ViewGroup;

    .line 1415
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1416
    .local v0, "i":I
    :cond_3
    if-lez v0, :cond_0

    .line 1417
    add-int/lit8 v0, v0, -0x1

    .line 1418
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1419
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController;->isTextEditable(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 1420
    goto :goto_0
.end method

.method private limitCustomPanelHeight(I)V
    .locals 4
    .param p1, "dialogMaxHeight"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. Limit the height of custom panel"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2280
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020297

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2281
    .local v0, "parentPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2282
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/internal/app/AlertController$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/internal/app/AlertController$5;-><init>(Lcom/android/internal/app/AlertController;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2315
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 21
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .param p2, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "hasButtons"    # Z
    .param p5, "a"    # Landroid/content/res/TypedArray;
    .param p6, "hasTitle"    # Z
    .param p7, "buttonPanel"    # Landroid/view/View;

    .prologue
    .line 873
    const/16 v19, 0x0

    const v20, 0x10807e0

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 875
    .local v9, "fullDark":I
    const/16 v19, 0x1

    const v20, 0x10807ee

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 877
    .local v16, "topDark":I
    const/16 v19, 0x2

    const v20, 0x10807dd

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 879
    .local v7, "centerDark":I
    const/16 v19, 0x3

    const v20, 0x10807da

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 881
    .local v4, "bottomDark":I
    const/16 v19, 0x4

    const v20, 0x10807df

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 883
    .local v8, "fullBright":I
    const/16 v19, 0x5

    const v20, 0x10807ed

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 885
    .local v15, "topBright":I
    const/16 v19, 0x6

    const v20, 0x10807dc

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 887
    .local v6, "centerBright":I
    const/16 v19, 0x7

    const v20, 0x10807d9

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 889
    .local v3, "bottomBright":I
    const/16 v19, 0x8

    const v20, 0x10807db

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 901
    .local v5, "bottomMedium":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 902
    .local v18, "views":[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [Z

    .line 903
    .local v12, "light":[Z
    const/4 v11, 0x0

    .line 904
    .local v11, "lastView":Landroid/view/View;
    const/4 v10, 0x0

    .line 906
    .local v10, "lastLight":Z
    const/4 v13, 0x0

    .line 907
    .local v13, "pos":I
    if-eqz p6, :cond_0

    .line 908
    aput-object p1, v18, v13

    .line 909
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 910
    add-int/lit8 v13, v13, 0x1

    .line 918
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2    # "contentPanel":Landroid/widget/LinearLayout;
    :cond_1
    aput-object p2, v18, v13

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_0
    aput-boolean v19, v12, v13

    .line 921
    add-int/lit8 v13, v13, 0x1

    .line 922
    if-eqz p3, :cond_2

    .line 923
    aput-object p3, v18, v13

    .line 924
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v19, v0

    aput-boolean v19, v12, v13

    .line 925
    add-int/lit8 v13, v13, 0x1

    .line 927
    :cond_2
    if-eqz p4, :cond_3

    .line 928
    aput-object p7, v18, v13

    .line 929
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 932
    :cond_3
    const/4 v14, 0x0

    .line 933
    .local v14, "setView":Z
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 934
    aget-object v17, v18, v13

    .line 935
    .local v17, "v":Landroid/view/View;
    if-nez v17, :cond_5

    .line 933
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 920
    .end local v14    # "setView":Z
    .end local v17    # "v":Landroid/view/View;
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 938
    .restart local v14    # "setView":Z
    .restart local v17    # "v":Landroid/view/View;
    :cond_5
    if-eqz v11, :cond_6

    .line 939
    if-nez v14, :cond_8

    .line 940
    if-eqz v10, :cond_7

    move/from16 v19, v15

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 944
    :goto_4
    const/4 v14, 0x1

    .line 946
    :cond_6
    move-object/from16 v11, v17

    .line 947
    aget-boolean v10, v12, v13

    goto :goto_2

    :cond_7
    move/from16 v19, v16

    .line 940
    goto :goto_3

    .line 942
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v19, v6

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_9
    move/from16 v19, v7

    goto :goto_5

    .line 950
    .end local v17    # "v":Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_b

    .line 951
    if-eqz v14, :cond_e

    .line 956
    if-eqz v10, :cond_d

    if-eqz p4, :cond_c

    .end local v5    # "bottomMedium":I
    :goto_6
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 998
    .end local v8    # "fullBright":I
    :cond_b
    :goto_7
    return-void

    .restart local v5    # "bottomMedium":I
    .restart local v8    # "fullBright":I
    :cond_c
    move v5, v3

    .line 956
    goto :goto_6

    :cond_d
    move v5, v4

    goto :goto_6

    .line 959
    :cond_e
    if-eqz v10, :cond_f

    .end local v8    # "fullBright":I
    :goto_8
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v8    # "fullBright":I
    :cond_f
    move v8, v9

    goto :goto_8
.end method

.method private setDefaultIcon()V
    .locals 3
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add set the default icon"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2172
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020312

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2173
    .local v0, "idView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2174
    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 2175
    const v1, 0x108058d

    iput v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 2178
    :cond_0
    return-void
.end method

.method private setupButtons()Z
    .locals 4
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.modify. remove local variable to field, because some method will use these variables"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 785
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020019

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 786
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 802
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x102001a

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 803
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 806
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 819
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x102001b

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 820
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 823
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 836
    :goto_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_POSITIVE:I

    if-ne v0, v2, :cond_7

    .line 842
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 850
    :cond_0
    :goto_3
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_4
    return v0

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 795
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveTextColorId:I

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveTextColorId:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->createColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 799
    :cond_2
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_POSITIVE:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    goto :goto_0

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 812
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeTextColorId:I

    if-eqz v0, :cond_4

    .line 813
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeTextColorId:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->createColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 816
    :cond_4
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEGATIVE:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    goto :goto_1

    .line 825
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 829
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralTextColorId:I

    if-eqz v0, :cond_6

    .line 830
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget v2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralTextColorId:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->createColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 833
    :cond_6
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEUTRAL:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    goto/16 :goto_2

    .line 843
    :cond_7
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEGATIVE:I

    if-ne v0, v2, :cond_8

    .line 844
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 845
    :cond_8
    iget v0, p0, Lcom/android/internal/app/AlertController;->whichButtons:I

    iget v2, p0, Lcom/android/internal/app/AlertController;->BIT_BUTTON_NEUTRAL:I

    if-ne v0, v2, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    :cond_9
    move v0, v1

    .line 850
    goto/16 :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v5, 0x10202a0

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 741
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 742
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 745
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 746
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 771
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 756
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 760
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 764
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 768
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.modify. set the default icon"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const v6, 0x1020299

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 675
    const/4 v1, 0x1

    .line 677
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 679
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 682
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 685
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 686
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 737
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 688
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 690
    .local v0, "hasTextTitle":Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 697
    if-eqz v0, :cond_5

    .line 699
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102029a

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 701
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 705
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 712
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 713
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 714
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 715
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 716
    :cond_4
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 721
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 725
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 730
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 731
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 732
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 733
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 734
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 15

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x102029f

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 605
    .local v2, "contentPanel":Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 606
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v4

    .line 608
    .local v4, "hasButtons":Z
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x1020298

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 609
    .local v1, "topPanel":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v13, 0x101005d

    const/4 v14, 0x0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 611
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 613
    .local v6, "hasTitle":Z
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x102029c

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 614
    .local v7, "buttonPanel":Landroid/view/View;
    if-nez v4, :cond_0

    .line 615
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 619
    :cond_0
    const/4 v3, 0x0

    .line 620
    .local v3, "customPanel":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 621
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x10202a1

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "customPanel":Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 622
    .restart local v3    # "customPanel":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x102002b

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 623
    .local v8, "custom":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 625
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v11, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v12, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v13, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v11, v12, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 629
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 638
    .end local v8    # "custom":Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    .line 639
    const/4 v9, 0x0

    .line 640
    .local v9, "divider":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    .line 641
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x102029b

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 646
    :goto_1
    if-eqz v9, :cond_4

    .line 647
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 655
    .end local v9    # "divider":Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x1020312

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 656
    .local v10, "idView":Landroid/view/View;
    if-nez v10, :cond_5

    move-object v0, p0

    .line 657
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 659
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    .line 660
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 661
    iget v0, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    const/4 v11, -0x1

    if-le v0, v11, :cond_6

    .line 662
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    iget v11, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 663
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    iget v11, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setSelection(I)V

    .line 667
    :cond_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 668
    return-void

    .line 632
    .end local v10    # "idView":Landroid/view/View;
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x10202a1

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 643
    .restart local v9    # "divider":Landroid/view/View;
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x10202a2

    invoke-virtual {v0, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_1
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 374
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 375
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103ff

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 377
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected applyMeizuStyle()V
    .locals 60
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. setup the meizu style in dialog"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x1020312

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v28

    .line 1476
    .local v28, "idView":Landroid/view/View;
    if-nez v28, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 1480
    .local v9, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    move/from16 v55, v0

    move/from16 v0, v55

    or-int/lit16 v0, v0, 0x800

    move/from16 v55, v0

    move/from16 v0, v55

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 1481
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v55, v0

    and-int/lit8 v55, v55, 0x11

    if-eqz v55, :cond_2

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v55, v0

    if-nez v55, :cond_2

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v55, v0

    if-nez v55, :cond_2

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x105000c

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v55

    div-int/lit8 v55, v55, 0x2

    rsub-int/lit8 v55, v55, 0x0

    move/from16 v0, v55

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1485
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x1020297

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/LinearLayout;

    .line 1486
    .local v36, "parentPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x102029c

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1487
    .local v11, "buttonPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x10202a1

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout;

    .line 1488
    .local v21, "customPanel":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x102029f

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1489
    .local v16, "contentPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x1020298

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/LinearLayout;

    .line 1490
    .local v50, "topPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x1020299

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/LinearLayout;

    .line 1491
    .local v47, "titleTemplate":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x102002b

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    .line 1493
    .local v19, "custom":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x1020316

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/CheckBox;

    .line 1494
    .local v52, "vCheckBox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x1020317

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    .line 1495
    .local v53, "vCheckLabel":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x102029a

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    .line 1496
    .local v49, "titleView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x1020314

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    .line 1498
    .local v44, "summryView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->labelOfCheckBox:Ljava/lang/String;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v55

    if-nez v55, :cond_23

    const/4 v13, 0x1

    .line 1499
    .local v13, "checkBoxVisible":Z
    :goto_1
    invoke-virtual/range {v50 .. v50}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v55

    if-eqz v55, :cond_3

    if-eqz v13, :cond_24

    :cond_3
    const/16 v51, 0x1

    .line 1500
    .local v51, "topVisible":Z
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v55

    if-nez v55, :cond_25

    const/16 v17, 0x1

    .line 1501
    .local v17, "contentVisible":Z
    :goto_3
    invoke-virtual/range {v21 .. v21}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v55

    if-nez v55, :cond_26

    const/16 v22, 0x1

    .line 1502
    .local v22, "customVisible":Z
    :goto_4
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v55

    if-nez v55, :cond_27

    const/4 v12, 0x1

    .line 1504
    .local v12, "buttonVisible":Z
    :goto_5
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v40

    .line 1505
    .local v40, "parentPanelPaddingLeft":I
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v41

    .line 1506
    .local v41, "parentPanelPaddingRight":I
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v42

    .line 1507
    .local v42, "parentPanelPaddingTop":I
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v39

    .line 1510
    .local v39, "parentPanelPaddingButtom":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController;->clickOnPaddingDismiss(Landroid/widget/LinearLayout;)V

    .line 1514
    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    move-object/from16 v55, v0

    if-eqz v55, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/app/Dialog;->isCancelable()Z

    move-result v55

    if-nez v55, :cond_28

    .line 1515
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x3e19999a    # 0.15f

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->setDimAmount(F)V

    .line 1520
    :goto_6
    const v55, 0x10202a2

    move-object/from16 v0, v50

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .line 1521
    .local v46, "titleDividerTop":Landroid/view/View;
    const v55, 0x102029b

    move-object/from16 v0, v50

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v45

    .line 1522
    .local v45, "titleDivider":Landroid/view/View;
    if-eqz v46, :cond_5

    .line 1523
    const/16 v55, 0x8

    move-object/from16 v0, v46

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1525
    :cond_5
    if-eqz v45, :cond_6

    .line 1526
    const/16 v55, 0x8

    move-object/from16 v0, v45

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1530
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v55, v0

    if-eqz v55, :cond_29

    const/16 v25, 0x1

    .line 1531
    .local v25, "hasListView":Z
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController;->hasEditTextCount(Landroid/view/View;)I

    move-result v24

    .line 1532
    .local v24, "hasEditTextCount":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController;->hasScrollTextView(Landroid/view/View;)Z

    move-result v26

    .line 1535
    .local v26, "hasScrollTextView":Z
    if-eqz v25, :cond_2a

    .line 1536
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout$LayoutParams;

    .line 1537
    .local v33, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v55, v0

    if-eqz v55, :cond_7

    .line 1539
    invoke-virtual/range {v47 .. v47}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v48

    check-cast v48, Landroid/widget/LinearLayout$LayoutParams;

    .line 1540
    .local v48, "titleTemplateLP":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x105024a

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v55

    move/from16 v0, v55

    move-object/from16 v1, v48

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .end local v48    # "titleTemplateLP":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    move-object/from16 v14, v16

    .line 1544
    check-cast v14, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 1547
    .local v14, "content":Lcom/meizu/widget/LimitedHeightLinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    if-eqz v55, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    invoke-interface/range {v55 .. v55}, Landroid/widget/ListAdapter;->getCount()I

    move-result v55

    if-lez v55, :cond_c

    .line 1548
    const/16 v29, 0x0

    .line 1549
    .local v29, "itemHeight":I
    const/16 v43, 0x0

    .line 1551
    .local v43, "position":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v57, v0

    move-object/from16 v0, v55

    move/from16 v1, v43

    move-object/from16 v2, v56

    move-object/from16 v3, v57

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    .line 1552
    .local v31, "itemView":Landroid/view/View;
    if-eqz v31, :cond_9

    .line 1553
    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1554
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    .line 1556
    :cond_9
    add-int/lit8 v43, v43, 0x1

    .line 1557
    if-gtz v29, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    invoke-interface/range {v55 .. v55}, Landroid/widget/ListAdapter;->getCount()I

    move-result v55

    move/from16 v0, v43

    move/from16 v1, v55

    if-lt v0, v1, :cond_8

    .line 1559
    :cond_a
    if-lez v29, :cond_b

    .line 1560
    invoke-virtual {v14}, Lcom/meizu/widget/LimitedHeightLinearLayout;->getMaxHeight()I

    move-result v55

    div-int v18, v55, v29

    .line 1561
    .local v18, "countOneScreen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v56, v0

    div-int v56, v56, v18

    mul-int v56, v56, v18

    invoke-virtual/range {v55 .. v56}, Landroid/widget/ListView;->setSelection(I)V

    .line 1565
    .end local v18    # "countOneScreen":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v55, v0

    const/16 v56, 0x2

    invoke-virtual/range {v55 .. v56}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    invoke-interface/range {v55 .. v55}, Landroid/widget/ListAdapter;->getCount()I

    move-result v55

    mul-int v55, v55, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v57, v0

    invoke-interface/range {v57 .. v57}, Landroid/widget/ListAdapter;->getCount()I

    move-result v57

    add-int/lit8 v57, v57, -0x1

    mul-int v56, v56, v57

    add-int v15, v55, v56

    .line 1568
    .local v15, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v55, v0

    new-instance v56, Lcom/android/internal/app/AlertController$2;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2, v15}, Lcom/android/internal/app/AlertController$2;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;I)V

    invoke-virtual/range {v55 .. v56}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1644
    .end local v14    # "content":Lcom/meizu/widget/LimitedHeightLinearLayout;
    .end local v15    # "contentHeight":I
    .end local v29    # "itemHeight":I
    .end local v31    # "itemView":Landroid/view/View;
    .end local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v43    # "position":I
    :cond_c
    :goto_8
    if-eqz v51, :cond_e

    if-nez v17, :cond_d

    if-eqz v22, :cond_e

    :cond_d
    if-nez v25, :cond_e

    .line 1645
    invoke-virtual/range {v47 .. v47}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout$LayoutParams;

    .line 1646
    .restart local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v55, 0x0

    move/from16 v0, v55

    move-object/from16 v1, v33

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1650
    .end local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v55, v0

    if-eqz v55, :cond_f

    .line 1651
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mTitleStyle:I

    move/from16 v55, v0

    sparse-switch v55, :sswitch_data_0

    .line 1667
    :cond_f
    :goto_9
    invoke-virtual/range {v19 .. v19}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/FrameLayout$LayoutParams;

    .line 1668
    .local v23, "flp":Landroid/widget/FrameLayout$LayoutParams;
    if-lez v24, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mCustEditHasMargin:Z

    move/from16 v55, v0

    if-eqz v55, :cond_10

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x1050232

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v55

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v57

    const v58, 0x1050233

    invoke-virtual/range {v57 .. v58}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v58

    const v59, 0x1050235

    invoke-virtual/range {v58 .. v59}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v58

    move-object/from16 v0, v23

    move/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1677
    :cond_10
    if-gtz v24, :cond_11

    if-eqz v26, :cond_12

    :cond_11
    invoke-virtual/range {v47 .. v47}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v55

    const/16 v56, 0x8

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mCustEditHasMargin:Z

    move/from16 v55, v0

    if-eqz v55, :cond_12

    .line 1678
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v56

    const v57, 0x1050236

    invoke-virtual/range {v56 .. v57}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v56

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v57, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v58, v0

    move-object/from16 v0, v23

    move/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1682
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v55, v0

    if-eqz v55, :cond_13

    .line 1683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mMsgALignType:I

    move/from16 v55, v0

    const/16 v56, -0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_2b

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mMsgALignType:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Landroid/widget/TextView;->setGravity(I)V

    .line 1702
    :cond_13
    :goto_a
    if-nez v51, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v55, v0

    if-eqz v55, :cond_14

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v56, v0

    const v57, 0x1030334

    invoke-virtual/range {v55 .. v57}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1705
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout$LayoutParams;

    .line 1706
    .restart local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x1050244

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v55

    move/from16 v0, v55

    move-object/from16 v1, v33

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v55, v0

    const/16 v56, 0x11

    invoke-virtual/range {v55 .. v56}, Landroid/widget/TextView;->setGravity(I)V

    .line 1709
    const/16 v55, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1714
    .end local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mMaxHeight:I

    move/from16 v55, v0

    if-lez v55, :cond_2c

    .line 1715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mMaxHeight:I

    move/from16 v55, v0

    add-int v55, v55, v39

    add-int v37, v55, v42

    .local v37, "parentPanelMaxHeight":I
    :goto_b
    move-object/from16 v55, v36

    .line 1720
    check-cast v55, Lcom/meizu/widget/LimitedHeightLinearLayout;

    move-object/from16 v0, v55

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x1020318

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 1723
    .local v20, "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    if-eqz v22, :cond_2d

    .line 1724
    add-int v55, v39, v42

    sub-int v55, v37, v55

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController;->limitCustomPanelHeight(I)V

    .line 1730
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x1050215

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v55

    add-int v55, v55, v39

    add-int v6, v55, v42

    .line 1733
    .local v6, "MIN_HEIGHT_WITH_BUTTON":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x1050216

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v55

    add-int v55, v55, v39

    add-int v5, v55, v42

    .line 1737
    .local v5, "MIN_HEIGHT_ONLY_PANEL":I
    if-eqz v12, :cond_16

    if-nez v17, :cond_15

    if-nez v22, :cond_15

    if-eqz v51, :cond_16

    .line 1738
    :cond_15
    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 1741
    :cond_16
    if-nez v17, :cond_17

    if-nez v22, :cond_17

    if-eqz v51, :cond_17

    .line 1742
    invoke-virtual/range {v50 .. v50}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout$LayoutParams;

    .line 1743
    .restart local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v55, 0x3f800000    # 1.0f

    move/from16 v0, v55

    move-object/from16 v1, v33

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1744
    const/16 v55, 0x10

    move-object/from16 v0, v50

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1747
    .end local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_17
    if-nez v12, :cond_1c

    .line 1748
    if-nez v17, :cond_18

    if-nez v22, :cond_18

    if-eqz v51, :cond_18

    .line 1749
    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 1752
    :cond_18
    if-eqz v17, :cond_19

    if-nez v22, :cond_19

    if-nez v51, :cond_19

    .line 1753
    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 1756
    :cond_19
    if-nez v17, :cond_1a

    if-eqz v22, :cond_1a

    if-nez v51, :cond_1a

    .line 1757
    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 1761
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x1050244

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1763
    .local v10, "bottomMargin":I
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1764
    .restart local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v51, :cond_2e

    if-nez v17, :cond_2e

    if-nez v22, :cond_2e

    .line 1765
    invoke-virtual/range {v47 .. v47}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v33

    .end local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v33, Landroid/widget/LinearLayout$LayoutParams;

    .line 1771
    .restart local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1b
    :goto_d
    move-object/from16 v0, v33

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1775
    .end local v10    # "bottomMargin":I
    .end local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x1050217

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1777
    .local v7, "MIN_WIDTH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x1050218

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1779
    .local v8, "MIN_WIDTH_NO_BUTTON":I
    add-int v38, v40, v41

    .line 1780
    .local v38, "parentPanelMinWidth":I
    const/16 v30, 0x0

    .line 1781
    .local v30, "itemMaxWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mListViewWidth:I

    move/from16 v55, v0

    const/16 v56, -0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_1f

    if-eqz v25, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    if-eqz v55, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    invoke-interface/range {v55 .. v55}, Landroid/widget/ListAdapter;->getCount()I

    move-result v55

    if-lez v55, :cond_1f

    .line 1782
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    invoke-interface/range {v55 .. v55}, Landroid/widget/ListAdapter;->getCount()I

    move-result v55

    move/from16 v0, v27

    move/from16 v1, v55

    if-ge v0, v1, :cond_1e

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v57, v0

    move-object/from16 v0, v55

    move/from16 v1, v27

    move-object/from16 v2, v56

    move-object/from16 v3, v57

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    .line 1784
    .restart local v31    # "itemView":Landroid/view/View;
    if-eqz v31, :cond_2f

    .line 1785
    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1786
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    .line 1787
    .local v32, "itemWidth":I
    move/from16 v0, v32

    move/from16 v1, v30

    if-le v0, v1, :cond_1d

    .line 1788
    move/from16 v30, v32

    .line 1789
    :cond_1d
    move/from16 v0, v30

    if-le v0, v7, :cond_2f

    .line 1790
    move/from16 v30, v7

    .line 1795
    .end local v31    # "itemView":Landroid/view/View;
    .end local v32    # "itemWidth":I
    :cond_1e
    add-int v55, v40, v41

    add-int v30, v30, v55

    .line 1797
    .end local v27    # "i":I
    :cond_1f
    if-nez v12, :cond_20

    if-nez v25, :cond_30

    .line 1798
    :cond_20
    add-int v38, v38, v7

    .line 1804
    :cond_21
    :goto_f
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v35

    check-cast v35, Landroid/widget/FrameLayout$LayoutParams;

    .line 1805
    .local v35, "pLp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 1806
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mWidth:I

    move/from16 v55, v0

    if-lez v55, :cond_31

    .line 1807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mWidth:I

    move/from16 v55, v0

    add-int v55, v55, v40

    add-int v55, v55, v41

    move/from16 v0, v55

    move-object/from16 v1, v35

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1811
    :goto_10
    invoke-virtual/range {v36 .. v36}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1815
    if-eqz v25, :cond_22

    if-nez v12, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    move-object/from16 v55, v0

    if-eqz v55, :cond_22

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v54

    .line 1817
    .local v54, "window":Landroid/view/Window;
    invoke-virtual/range {v54 .. v54}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v34

    .line 1819
    .local v34, "p":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController;->adjustLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 1823
    .end local v34    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v54    # "window":Landroid/view/Window;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v55, v0

    if-eqz v55, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    move-object/from16 v55, v0

    const/16 v56, 0x8

    invoke-virtual/range {v55 .. v56}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1498
    .end local v5    # "MIN_HEIGHT_ONLY_PANEL":I
    .end local v6    # "MIN_HEIGHT_WITH_BUTTON":I
    .end local v7    # "MIN_WIDTH":I
    .end local v8    # "MIN_WIDTH_NO_BUTTON":I
    .end local v12    # "buttonVisible":Z
    .end local v13    # "checkBoxVisible":Z
    .end local v17    # "contentVisible":Z
    .end local v20    # "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    .end local v22    # "customVisible":Z
    .end local v23    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v24    # "hasEditTextCount":I
    .end local v25    # "hasListView":Z
    .end local v26    # "hasScrollTextView":Z
    .end local v30    # "itemMaxWidth":I
    .end local v35    # "pLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v37    # "parentPanelMaxHeight":I
    .end local v38    # "parentPanelMinWidth":I
    .end local v39    # "parentPanelPaddingButtom":I
    .end local v40    # "parentPanelPaddingLeft":I
    .end local v41    # "parentPanelPaddingRight":I
    .end local v42    # "parentPanelPaddingTop":I
    .end local v45    # "titleDivider":Landroid/view/View;
    .end local v46    # "titleDividerTop":Landroid/view/View;
    .end local v51    # "topVisible":Z
    :cond_23
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1499
    .restart local v13    # "checkBoxVisible":Z
    :cond_24
    const/16 v51, 0x0

    goto/16 :goto_2

    .line 1500
    .restart local v51    # "topVisible":Z
    :cond_25
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1501
    .restart local v17    # "contentVisible":Z
    :cond_26
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 1502
    .restart local v22    # "customVisible":Z
    :cond_27
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 1517
    .restart local v12    # "buttonVisible":Z
    .restart local v39    # "parentPanelPaddingButtom":I
    .restart local v40    # "parentPanelPaddingLeft":I
    .restart local v41    # "parentPanelPaddingRight":I
    .restart local v42    # "parentPanelPaddingTop":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->setDimAmount(F)V

    goto/16 :goto_6

    .line 1530
    .restart local v45    # "titleDivider":Landroid/view/View;
    .restart local v46    # "titleDividerTop":Landroid/view/View;
    :cond_29
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 1621
    .restart local v24    # "hasEditTextCount":I
    .restart local v25    # "hasListView":Z
    .restart local v26    # "hasScrollTextView":Z
    :cond_2a
    if-eqz v13, :cond_c

    .line 1622
    const/16 v55, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1623
    const/16 v55, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1624
    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1625
    const/16 v55, 0x8

    move-object/from16 v0, v49

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1630
    const/16 v55, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v55, v0

    const v56, 0x1020315

    invoke-virtual/range {v55 .. v56}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/LinearLayout;

    invoke-virtual/range {v55 .. v55}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v56

    const v57, 0x105021c

    invoke-virtual/range {v56 .. v57}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v56

    move/from16 v0, v56

    move-object/from16 v1, v55

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1634
    const/16 v55, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->labelOfCheckBox:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1636
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->isChecked:Z

    move/from16 v55, v0

    move-object/from16 v0, v52

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v55, v0

    if-eqz v55, :cond_c

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v55, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_8

    .line 1653
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v56, v0

    const v57, 0x10301b3

    invoke-virtual/range {v55 .. v57}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v55, v0

    sget-object v56, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual/range {v55 .. v56}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_9

    .line 1660
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mTitleStyle:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_9

    .line 1687
    .restart local v23    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    move-object/from16 v55, v0

    new-instance v56, Lcom/android/internal/app/AlertController$3;

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/AlertController$3;-><init>(Lcom/android/internal/app/AlertController;)V

    invoke-virtual/range {v55 .. v56}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_a

    .line 1717
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x1050214

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v55

    add-int v55, v55, v39

    add-int v37, v55, v42

    .restart local v37    # "parentPanelMaxHeight":I
    goto/16 :goto_b

    .line 1726
    .restart local v20    # "customLimitedPanel":Lcom/meizu/widget/LimitedHeightLinearLayout;
    :cond_2d
    const/16 v55, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setVisibility(I)V

    goto/16 :goto_c

    .line 1766
    .restart local v5    # "MIN_HEIGHT_ONLY_PANEL":I
    .restart local v6    # "MIN_HEIGHT_WITH_BUTTON":I
    .restart local v10    # "bottomMargin":I
    .restart local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2e
    if-eqz v17, :cond_1b

    if-nez v25, :cond_1b

    if-nez v22, :cond_1b

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x1050248

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1769
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v33

    .end local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v33, Landroid/widget/LinearLayout$LayoutParams;

    .restart local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_d

    .line 1782
    .end local v10    # "bottomMargin":I
    .end local v33    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7    # "MIN_WIDTH":I
    .restart local v8    # "MIN_WIDTH_NO_BUTTON":I
    .restart local v27    # "i":I
    .restart local v30    # "itemMaxWidth":I
    .restart local v31    # "itemView":Landroid/view/View;
    .restart local v38    # "parentPanelMinWidth":I
    :cond_2f
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_e

    .line 1800
    .end local v27    # "i":I
    .end local v31    # "itemView":Landroid/view/View;
    :cond_30
    add-int v38, v38, v8

    .line 1801
    move/from16 v0, v30

    move/from16 v1, v38

    if-le v0, v1, :cond_21

    move/from16 v38, v30

    goto/16 :goto_f

    .line 1809
    .restart local v35    # "pLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_31
    move/from16 v0, v38

    move-object/from16 v1, v35

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_10

    .line 1651
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_1
        0x11 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add get the anchor view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 581
    packed-switch p1, :pswitch_data_0

    .line 589
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 583
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 585
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 587
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 567
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 568
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 569
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 444
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 446
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 451
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 452
    return-void
.end method

.method public installContent(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/Dialog;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. add the reference of a dialog in order to apply the meizu style"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/high16 v2, 0x20000

    .line 1385
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 1387
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1394
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 1395
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 1397
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    .line 1398
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->applyMeizuStyle()V

    .line 1399
    return-void

    .line 1390
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mAutoShowSoftInput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->isTextEditable(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShowingCheck()V
    .locals 4
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add for alertdialog, do some check every time it shows"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2411
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2412
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->isTextEditable(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2413
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2414
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2415
    .local v1, "softInputMode":I
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_0

    .line 2416
    and-int/lit8 v1, v1, -0x6

    .line 2417
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2424
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "softInputMode":I
    :cond_0
    :goto_0
    return-void

    .line 2419
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController;->mAutoShowSoftInput:Z

    if-eqz v2, :cond_0

    .line 2420
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchorView"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add set the anchor view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2046
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAnchorView:Landroid/view/View;

    .line 2047
    return-void
.end method

.method public setAnchorViewXCoordinate(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "xcoordinate"    # Ljava/lang/Integer;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add set the anchor view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2391
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mXCoordinate:Ljava/lang/Integer;

    .line 2392
    return-void
.end method

.method public setAutoShowSoftInput(Z)V
    .locals 0
    .param p1, "show"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add whether the keyboard will show auto"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1968
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mAutoShowSoftInput:Z

    .line 1969
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 511
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 515
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 519
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 535
    :goto_0
    return-void

    .line 523
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 524
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 528
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 529
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonClickDismiss(IZ)V
    .locals 0
    .param p1, "whichButton"    # I
    .param p2, "dismiss"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. whether the dialog can be dismiss when every button is clicked"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1942
    packed-switch p1, :pswitch_data_0

    .line 1956
    :goto_0
    return-void

    .line 1945
    :pswitch_0
    iput-boolean p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveDismiss:Z

    goto :goto_0

    .line 1948
    :pswitch_1
    iput-boolean p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeDismiss:Z

    goto :goto_0

    .line 1951
    :pswitch_2
    iput-boolean p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralDismiss:Z

    goto :goto_0

    .line 1942
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonTextColor(II)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "textColorId"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add set the positiveButton with textColor"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2219
    packed-switch p1, :pswitch_data_0

    .line 2243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2222
    :pswitch_0
    iput p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveTextColorId:I

    .line 2223
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/android/internal/app/AlertController;->createColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2245
    :cond_0
    :goto_0
    return-void

    .line 2229
    :pswitch_1
    iput p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeTextColorId:I

    .line 2230
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2231
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/android/internal/app/AlertController;->createColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 2236
    :pswitch_2
    iput p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralTextColorId:I

    .line 2237
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, p2}, Lcom/android/internal/app/AlertController;->createColorList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 2219
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCheckBoxListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "checkBoxListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. set the checkbox\'s CheckedChangeListener"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1465
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add set the checkbox\'s checked state"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1451
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->isChecked:Z

    .line 1452
    return-void
.end method

.method public setCustEditViewHasMargin(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add determine whether the custom view containing EditText has margin"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2399
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mCustEditHasMargin:Z

    .line 2400
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 466
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add set the ellipsis type of the text in the listView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2201
    sput-object p1, Lcom/android/internal/app/AlertController;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 2202
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 543
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 544
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 545
    if-lez p1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    if-nez p1, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 555
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 558
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 574
    return-void
.end method

.method public setLabelOfCheckBox(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelOfCheckBox"    # Ljava/lang/String;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add set the label of checkbox"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->labelOfCheckBox:Ljava/lang/String;

    .line 1439
    return-void
.end method

.method public setListViewLayoutWidth(I)V
    .locals 0
    .param p1, "width"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add to set listView\'s layout width"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2431
    iput p1, p0, Lcom/android/internal/app/AlertController;->mListViewWidth:I

    .line 2432
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add set the dialog\'s max height"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2035
    iput p1, p0, Lcom/android/internal/app/AlertController;->mMaxHeight:I

    .line 2036
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 470
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_0
    return-void
.end method

.method public setMsgAlignType(I)V
    .locals 0
    .param p1, "msgAlignType"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add Set the message to display and mark the align type"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 2256
    sparse-switch p1, :sswitch_data_0

    .line 2268
    :goto_0
    return-void

    .line 2262
    :sswitch_0
    iput p1, p0, Lcom/android/internal/app/AlertController;->mMsgALignType:I

    goto :goto_0

    .line 2256
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x11 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 456
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    :cond_0
    return-void
.end method

.method public setTitleStyle(I)V
    .locals 0
    .param p1, "style"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add set the title style"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1979
    iput p1, p0, Lcom/android/internal/app/AlertController;->mTitleStyle:I

    .line 1980
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 480
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 481
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 490
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 491
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 492
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 493
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 494
    return-void
.end method

.method public setWidth(I)V
    .locals 12
    .param p1, "width"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add set the dialog\'s width, if the width is\'t greater then 0, using the min width"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1990
    iput p1, p0, Lcom/android/internal/app/AlertController;->mWidth:I

    .line 1992
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v10}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_1

    .line 2023
    :cond_0
    :goto_0
    return-void

    .line 1996
    :cond_1
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x1020312

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1997
    .local v5, "idView":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x1020297

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1998
    .local v7, "parentPanel":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_0

    if-eqz v7, :cond_0

    .line 1999
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2000
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v8

    .line 2001
    .local v8, "parentPanelPaddingLeft":I
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v9

    .line 2002
    .local v9, "parentPanelPaddingRight":I
    add-int v4, v8, v9

    .line 2003
    .local v4, "extraWidth":I
    if-eqz v6, :cond_0

    .line 2004
    iget v10, p0, Lcom/android/internal/app/AlertController;->mWidth:I

    if-lez v10, :cond_2

    .line 2005
    iget v10, p0, Lcom/android/internal/app/AlertController;->mWidth:I

    add-int/2addr v10, v4

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 2007
    :cond_2
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v11, 0x102029c

    invoke-virtual {v10, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2008
    .local v2, "buttonPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    const/4 v3, 0x1

    .line 2010
    .local v3, "buttonVisible":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 2011
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050217

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2013
    .local v0, "MIN_WIDTH":I
    add-int v10, v0, v4

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 2008
    .end local v0    # "MIN_WIDTH":I
    .end local v3    # "buttonVisible":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 2015
    .restart local v3    # "buttonVisible":Z
    :cond_4
    iget-object v10, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050218

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2017
    .local v1, "MIN_WIDTH_NO_BUTTON":I
    add-int v10, v1, v4

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method
