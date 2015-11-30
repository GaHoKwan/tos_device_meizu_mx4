.class public Lcom/android/internal/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mAnchorView:Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the anchor view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMaxHeight:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the max height"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public mMessage:Ljava/lang/CharSequence;

.field public mMsgAlignType:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add message text align type"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mPositiveButtonTextColorId:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the posivive button textColor"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleStyle:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the title style"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I

.field public mWidth:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the width"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field public mX:Ljava/lang/Integer;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add the x-coordinate of anchorView"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 1027
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 1049
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1053
    iput v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 1061
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1087
    iput v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonTextColorId:I

    .line 1096
    iput v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMsgAlignType:I

    .line 1125
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1126
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 1127
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1128
    return-void
.end method

.method private createListView(Lcom/android/internal/app/AlertController;)V
    .locals 11
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. modify set the content ellipsis type"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const v4, 0x1020014

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1202
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    # getter for: Lcom/android/internal/app/AlertController;->mListLayout:I
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->access$900(Lcom/android/internal/app/AlertController;)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/AlertController$RecycleListView;

    .line 1206
    .local v7, "listView":Lcom/android/internal/app/AlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 1207
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 1208
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams$1;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->access$1000(Lcom/android/internal/app/AlertController;)I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    # getter for: Lcom/android/internal/app/AlertController;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static {}, Lcom/android/internal/app/AlertController;->access$1100()Landroid/text/TextUtils$TruncateAt;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/AlertController$AlertParams$1;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/text/TextUtils$TruncateAt;Lcom/android/internal/app/AlertController$RecycleListView;)V

    .line 1275
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 1276
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v7}, Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1282
    :cond_0
    # setter for: Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/android/internal/app/AlertController;->access$1402(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1283
    iget v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    # setter for: Lcom/android/internal/app/AlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/android/internal/app/AlertController;->access$1502(Lcom/android/internal/app/AlertController;I)I

    .line 1285
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 1286
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/AlertController$AlertParams$3;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v7, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1329
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 1330
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1333
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 1334
    invoke-virtual {v7, v10}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1338
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v7, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1342
    invoke-virtual {v7, v9}, Lcom/android/internal/app/AlertController$RecycleListView;->setDelayTopOverScrollEnabled(Z)V

    .line 1344
    # setter for: Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v7}, Lcom/android/internal/app/AlertController;->access$1602(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1345
    return-void

    .line 1228
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/android/internal/app/AlertController$AlertParams$2;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, p0

    move v4, v9

    move-object v5, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/AlertController$AlertParams$2;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1259
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    # getter for: Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->access$1200(Lcom/android/internal/app/AlertController;)I

    move-result v3

    .line 1261
    .local v3, "layout":I
    :goto_3
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 1262
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 1259
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "layout":I
    :cond_6
    # getter for: Lcom/android/internal/app/AlertController;->mListItemLayout:I
    invoke-static {p1}, Lcom/android/internal/app/AlertController;->access$1300(Lcom/android/internal/app/AlertController;)I

    move-result v3

    goto :goto_3

    .line 1262
    .restart local v3    # "layout":I
    :cond_7
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    # getter for: Lcom/android/internal/app/AlertController;->mEllipsize:Landroid/text/TextUtils$TruncateAt;
    invoke-static {}, Lcom/android/internal/app/AlertController;->access$1100()Landroid/text/TextUtils$TruncateAt;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;Landroid/text/TextUtils$TruncateAt;)V

    move-object v0, v1

    goto :goto_4

    .line 1270
    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v5, v10, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v1, v5, v9

    new-array v6, v10, [I

    aput v4, v6, v9

    move-object v1, v0

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_0

    .line 1316
    .end local v3    # "layout":I
    :cond_9
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 1317
    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v7, p1}, Lcom/android/internal/app/AlertController$AlertParams$4;-><init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V

    invoke-virtual {v7, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1335
    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 1336
    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method

.method private setMeizuStyle(Lcom/android/internal/app/AlertController;)V
    .locals 2
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature.add. set some properties for AlertController"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1352
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitleStyle:I

    if-lez v0, :cond_0

    .line 1353
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitleStyle:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitleStyle(I)V

    .line 1356
    :cond_0
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mWidth:I

    if-lez v0, :cond_1

    .line 1357
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mWidth:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setWidth(I)V

    .line 1360
    :cond_1
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMaxHeight:I

    if-lez v0, :cond_2

    .line 1361
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMaxHeight:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMaxHeight(I)V

    .line 1364
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1365
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setAnchorView(Landroid/view/View;)V

    .line 1367
    :cond_3
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMsgAlignType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1368
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMsgAlignType:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMsgAlignType(I)V

    .line 1370
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mX:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1371
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mX:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setAnchorViewXCoordinate(Ljava/lang/Integer;)V

    .line 1373
    :cond_5
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/AlertController;)V
    .locals 6
    .param p1, "dialog"    # Lcom/android/internal/app/AlertController;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "suyouxiong@SDK.Feature. modify set some properties for AlertController"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1135
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1136
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1151
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1157
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonTextColorId:I

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/app/AlertController;->setButtonTextColor(II)V

    .line 1159
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1160
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1163
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1164
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1167
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 1168
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 1172
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 1173
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    .line 1175
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1176
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_d

    .line 1177
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/android/internal/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 1193
    :cond_8
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;->setMeizuStyle(Lcom/android/internal/app/AlertController;)V

    .line 1195
    return-void

    .line 1138
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 1139
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1141
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 1142
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1144
    :cond_b
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_c

    .line 1145
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 1147
    :cond_c
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    if-lez v0, :cond_0

    .line 1148
    iget v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1180
    :cond_d
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
