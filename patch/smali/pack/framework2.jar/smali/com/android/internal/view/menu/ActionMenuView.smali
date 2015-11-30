.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mCellWidth:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mCellWidth"
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

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mItemPadding:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mItemPadding"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuShowGravity:I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mMenuShowGravity"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z

.field private mShouldDectePaddingAjustment:Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mShouldDectePaddingAjustment"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field

.field mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_FIELD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add mSmartBarConfig"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to update padding and smartbar configuration"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 73
    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    .line 85
    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 97
    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExpandedTouchWidth:I

    .line 103
    iput-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mShouldDectePaddingAjustment:Z

    .line 119
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 121
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 122
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 124
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuView;->updatePaddingsForItem()V

    .line 132
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuView;->updateSmartBarConfiguration()V

    .line 134
    return-void
.end method

.method private getTextMenuMaxWidth(I)I
    .locals 4
    .param p1, "cellsWidthSize"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to expand width of menu"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    .line 1283
    .local v0, "count":I
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 1284
    .local v1, "maxWidth":I
    if-lez v0, :cond_0

    .line 1285
    packed-switch v0, :pswitch_data_0

    .line 1300
    :cond_0
    :goto_0
    return v1

    .line 1287
    :pswitch_0
    move v1, p1

    .line 1288
    goto :goto_0

    .line 1290
    :pswitch_1
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 1291
    goto :goto_0

    .line 1294
    :pswitch_2
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    mul-int/2addr v3, v0

    sub-int v3, p1, v3

    add-int v1, v2, v3

    .line 1295
    goto :goto_0

    .line 1285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getVisibleChildAt(IZ)Landroid/view/View;
    .locals 5
    .param p1, "index"    # I
    .param p2, "allVisiable"    # Z
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add getVisibleChildAt"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 882
    if-eqz p2, :cond_0

    .line 883
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 901
    :goto_0
    return-object v3

    .line 885
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v0

    .line 886
    .local v0, "childCount":I
    const/4 v2, -0x1

    .line 887
    .local v2, "visibleIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 888
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 889
    add-int/lit8 v2, v2, 0x1

    .line 892
    :cond_1
    if-ne v2, p1, :cond_3

    .line 893
    move v2, v1

    .line 898
    :cond_2
    if-ltz v2, :cond_4

    if-ge v2, v0, :cond_4

    .line 899
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 887
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 901
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isActionView(Landroid/view/View;)Z
    .locals 4
    .param p0, "child"    # Landroid/view/View;
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to determine whether the custom action view"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1232
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 1233
    .local v0, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return v1

    .line 1236
    :cond_1
    instance-of v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/meizu/widget/KeyBackButton;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/meizu/widget/KeyBackButton;

    if-nez v2, :cond_0

    instance-of v2, p0, Lcom/meizu/widget/MzActionMenuItem;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SelectionButton"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutMenuItems(III)V
    .locals 24
    .param p1, "visibleItemCount"    # I
    .param p2, "widthRemaining"    # I
    .param p3, "midVertical"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add updateSmartBarConfiguration"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 911
    const/4 v5, 0x0

    .line 912
    .local v5, "child":Landroid/view/View;
    const/16 v18, 0x0

    .line 913
    .local v18, "startLeft":I
    const/4 v10, 0x0

    .line 914
    .local v10, "endRight":I
    const/4 v7, 0x0

    .line 915
    .local v7, "childLeft":I
    const/4 v8, 0x0

    .line 916
    .local v8, "childRight":I
    const/4 v12, 0x0

    .line 917
    .local v12, "height":I
    const/16 v20, 0x0

    .line 918
    .local v20, "width":I
    const/16 v19, 0x0

    .line 919
    .local v19, "t":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 920
    .local v6, "childCount":I
    const/4 v11, 0x0

    .line 922
    .local v11, "expand":I
    move/from16 v0, p1

    if-ne v0, v6, :cond_1

    const/4 v14, 0x1

    .line 924
    .local v14, "isAllVisible":Z
    :goto_0
    sget-object v21, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_12

    .line 925
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x5

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 926
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int v4, v21, p1

    .line 927
    .local v4, "cellWidth":I
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_1
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 928
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 929
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 930
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 931
    add-int/lit8 v21, v13, 0x1

    mul-int v10, v21, v4

    .line 932
    add-int v21, v18, v10

    sub-int v21, v21, v20

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v7, v21, v22

    .line 933
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 934
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 935
    move/from16 v18, v10

    .line 927
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 922
    .end local v4    # "cellWidth":I
    .end local v13    # "index":I
    .end local v14    # "isAllVisible":Z
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 937
    .restart local v14    # "isAllVisible":Z
    :cond_2
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 939
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 940
    const/4 v9, 0x1

    .line 941
    .local v9, "enableBackButton":Z
    instance-of v0, v5, Lcom/meizu/widget/KeyBackButton;

    move/from16 v21, v0

    if-nez v21, :cond_3

    const/4 v9, 0x0

    .line 942
    :cond_3
    if-nez v9, :cond_6

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int/lit8 v17, v21, 0x2

    .line 944
    .local v17, "perMaxWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 945
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 946
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v21, v21, v17

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    .line 948
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 951
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 952
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 953
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 954
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 955
    add-int v21, p2, v17

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    .line 956
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1156
    .end local v9    # "enableBackButton":Z
    .end local v17    # "perMaxWidth":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mShouldDectePaddingAjustment:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1b

    .line 1157
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 1158
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1159
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1180
    :cond_5
    if-lez p1, :cond_1c

    const/16 v21, 0x5

    move/from16 v0, p1

    move/from16 v1, v21

    if-ge v0, v1, :cond_1c

    .line 1181
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_3
    if-ge v13, v6, :cond_1c

    .line 1182
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExpandedTouchWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->expandTouchWidth(I)V

    .line 1181
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 958
    .end local v13    # "index":I
    .restart local v9    # "enableBackButton":Z
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 959
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 960
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 964
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 965
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 966
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 967
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 968
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 970
    .end local v9    # "enableBackButton":Z
    :cond_7
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 972
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 973
    const/4 v9, 0x1

    .line 974
    .restart local v9    # "enableBackButton":Z
    instance-of v0, v5, Lcom/meizu/widget/KeyBackButton;

    move/from16 v21, v0

    if-nez v21, :cond_8

    const/4 v9, 0x0

    .line 975
    :cond_8
    if-nez v9, :cond_b

    .line 976
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 977
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 978
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 979
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int/lit8 v17, v21, 0x3

    .line 980
    .restart local v17    # "perMaxWidth":I
    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 981
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    add-int v21, v21, v17

    sub-int v7, v21, v20

    .line 985
    :goto_4
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 988
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 989
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 990
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 991
    sub-int v21, p2, v20

    div-int/lit8 v7, v21, 0x2

    .line 992
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 993
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 996
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 997
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 998
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 999
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1000
    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 1001
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v22, v17, 0x2

    add-int v7, v21, v22

    .line 1005
    :goto_5
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 983
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int v21, v21, v17

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    goto :goto_4

    .line 1003
    :cond_a
    mul-int/lit8 v21, v17, 0x2

    add-int v21, v21, p2

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    goto :goto_5

    .line 1007
    .end local v17    # "perMaxWidth":I
    :cond_b
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1008
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1009
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1010
    instance-of v0, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1011
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    .line 1012
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v22, v22, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1018
    :goto_6
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1019
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1020
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1021
    sub-int v21, p2, v20

    div-int/lit8 v7, v21, 0x2

    .line 1022
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1023
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1026
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1027
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1028
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1029
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1030
    instance-of v0, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 1031
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    .line 1032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    add-int v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v22, v22, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1014
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    .line 1034
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1037
    .end local v9    # "enableBackButton":Z
    :cond_e
    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1038
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 1039
    .restart local v4    # "cellWidth":I
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_7
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 1040
    div-int/lit8 v21, p1, 0x2

    move/from16 v0, v21

    if-ge v13, v0, :cond_10

    .line 1041
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1042
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1043
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    move/from16 v22, v0

    add-int v22, v22, v4

    mul-int v22, v22, v13

    add-int v7, v21, v22

    .line 1045
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1046
    instance-of v0, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1047
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    .line 1048
    sub-int v21, v7, v11

    add-int v22, v7, v20

    add-int v22, v22, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1039
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1050
    :cond_f
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    .line 1053
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1054
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1055
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1056
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    add-int/lit8 v22, p1, -0x1

    sub-int v22, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    move/from16 v23, v0

    add-int v23, v23, v4

    mul-int v22, v22, v23

    sub-int v8, v21, v22

    .line 1058
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1059
    instance-of v0, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_11

    move-object/from16 v21, v5

    check-cast v21, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1060
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    div-int/lit8 v11, v21, 0x2

    .line 1061
    sub-int v21, v8, v20

    add-int v21, v21, v11

    add-int v22, v8, v11

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    .line 1063
    :cond_11
    sub-int v21, v8, v20

    add-int v22, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v8, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_8

    .line 1069
    .end local v4    # "cellWidth":I
    .end local v13    # "index":I
    :cond_12
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v21, v0

    if-lez v21, :cond_13

    .line 1070
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1071
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1072
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1073
    const/4 v15, 0x0

    .line 1074
    .local v15, "l":I
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1075
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 1092
    :goto_9
    :pswitch_0
    add-int v21, v15, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v15, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1077
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 1078
    goto :goto_9

    .line 1081
    :pswitch_2
    div-int/lit8 v16, p2, 0x2

    .line 1082
    .local v16, "midHorizontal":I
    div-int/lit8 v21, v20, 0x2

    sub-int v15, v16, v21

    .line 1083
    goto :goto_9

    .line 1086
    .end local v16    # "midHorizontal":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v15, v21, v20

    .line 1087
    goto :goto_9

    .line 1093
    .end local v15    # "l":I
    :cond_13
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    const/16 v21, 0x5

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 1094
    :cond_14
    div-int v4, p2, p1

    .line 1095
    .restart local v4    # "cellWidth":I
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_a
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 1096
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1097
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1098
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1099
    add-int/lit8 v21, v13, 0x1

    mul-int v10, v21, v4

    .line 1100
    add-int v21, v18, v10

    sub-int v21, v21, v20

    div-int/lit8 v7, v21, 0x2

    .line 1101
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1102
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1103
    move/from16 v18, v10

    .line 1095
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 1105
    .end local v4    # "cellWidth":I
    .end local v13    # "index":I
    :cond_15
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 1107
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1108
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1109
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1110
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1114
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1115
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1116
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1117
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1119
    :cond_16
    const/16 v21, 0x3

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 1121
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1122
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1123
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1124
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    add-int v22, v22, v20

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1128
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1129
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1130
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1131
    sub-int v21, p2, v20

    div-int/lit8 v7, v21, 0x2

    .line 1132
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1133
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1136
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1137
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1138
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1139
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v22, v0

    sub-int v22, p2, v22

    add-int v23, v19, v12

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 1141
    :cond_17
    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 1142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v21, p2, v21

    div-int v4, v21, p1

    .line 1143
    .restart local v4    # "cellWidth":I
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_b
    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    .line 1144
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1145
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1146
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1147
    add-int/lit8 v21, v13, 0x1

    mul-int v10, v21, v4

    .line 1148
    add-int v21, v18, v10

    sub-int v21, v21, v20

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    move/from16 v22, v0

    add-int v7, v21, v22

    .line 1149
    div-int/lit8 v21, v12, 0x2

    sub-int v19, p3, v21

    .line 1150
    add-int v21, v7, v20

    add-int v22, v19, v12

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v7, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1151
    move/from16 v18, v10

    .line 1143
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 1161
    .end local v4    # "cellWidth":I
    .end local v13    # "index":I
    :cond_18
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_c
    move/from16 v0, p1

    if-ge v13, v0, :cond_5

    .line 1162
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/view/menu/ActionMenuView;->getVisibleChildAt(IZ)Landroid/view/View;

    move-result-object v5

    .line 1164
    if-nez v13, :cond_19

    .line 1165
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1161
    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 1166
    :cond_19
    add-int/lit8 v21, p1, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_1a

    .line 1167
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_d

    .line 1169
    :cond_1a
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_d

    .line 1174
    .end local v13    # "index":I
    :cond_1b
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_e
    if-ge v13, v6, :cond_5

    .line 1175
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1176
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1174
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1186
    .end local v13    # "index":I
    :cond_1c
    return-void

    .line 1075
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. measureChildForCells add to measure child"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 510
    .local v8, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 512
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 513
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 515
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_4

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 517
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v6, 0x1

    .line 519
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 520
    .local v0, "cellsUsed":I
    if-lez p2, :cond_6

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_6

    .line 521
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 523
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 525
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 526
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 527
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 528
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 536
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    :goto_2
    iget-boolean v11, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_7

    if-eqz v6, :cond_7

    const/4 v5, 0x1

    .line 537
    .local v5, "expandable":Z
    :goto_3
    iput-boolean v5, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 540
    if-eqz v5, :cond_3

    mul-int v11, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 541
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 544
    :cond_3
    iput v0, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 545
    mul-int v10, v0, p1

    .line 546
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 548
    return v0

    .line 515
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 517
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 532
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_6
    if-eqz v6, :cond_2

    const/4 v11, 0x1

    if-ne p2, v11, :cond_2

    .line 533
    move v0, p2

    goto :goto_2

    .line 536
    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private onMeasureExactFormat(II)V
    .locals 48
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. onMeasureExactFormat add to calculate size of cell"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 226
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 227
    .local v23, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v43

    .line 228
    .local v43, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 230
    .local v25, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v45

    add-int v42, v44, v45

    .line 231
    .local v42, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingTop()I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingBottom()I

    move-result v45

    add-int v24, v44, v45

    .line 233
    .local v24, "heightPadding":I
    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v44

    if-ne v0, v1, :cond_1

    sub-int v44, v25, v24

    const/high16 v45, 0x40000000    # 2.0f

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 238
    .local v28, "itemHeightSpec":I
    :goto_0
    sub-int v43, v43, v42

    .line 242
    const/16 v21, 0x0

    .line 243
    .local v21, "hasCustomAction":Z
    invoke-static/range {v28 .. v28}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v44

    sub-int v15, v44, v24

    .line 244
    .local v15, "childHeightSize":I
    invoke-static/range {v28 .. v28}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 245
    .local v14, "childHeightMode":I
    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 246
    .local v16, "childHeightSpec":I
    const/16 v17, 0x0

    .line 247
    .local v17, "childWidthSpec":I
    move/from16 v10, v43

    .line 249
    .local v10, "cellsWidthSize":I
    sget-object v44, Landroid/os/Build;->HAS_PERMANENTKEY:Ljava/lang/Boolean;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v44

    if-nez v44, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v44, v0

    mul-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    if-le v10, v0, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v44, v0

    mul-int/lit8 v44, v44, 0x2

    sub-int v10, v10, v44

    .line 259
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v44, v0

    div-int v4, v10, v44

    .line 260
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v44, v0

    rem-int v6, v10, v44

    .line 262
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_2

    .line 264
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 487
    :goto_1
    return-void

    .line 233
    .end local v4    # "cellCount":I
    .end local v6    # "cellSizeRemaining":I
    .end local v10    # "cellsWidthSize":I
    .end local v14    # "childHeightMode":I
    .end local v15    # "childHeightSize":I
    .end local v16    # "childHeightSpec":I
    .end local v17    # "childWidthSpec":I
    .end local v21    # "hasCustomAction":Z
    .end local v28    # "itemHeightSpec":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v44, v0

    sub-int v45, v25, v24

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->min(II)I

    move-result v44

    const/high16 v45, -0x80000000

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    goto :goto_0

    .line 268
    .restart local v4    # "cellCount":I
    .restart local v6    # "cellSizeRemaining":I
    .restart local v10    # "cellsWidthSize":I
    .restart local v14    # "childHeightMode":I
    .restart local v15    # "childHeightSize":I
    .restart local v16    # "childHeightSpec":I
    .restart local v17    # "childWidthSpec":I
    .restart local v21    # "hasCustomAction":Z
    .restart local v28    # "itemHeightSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v44, v0

    div-int v45, v6, v4

    add-int v5, v44, v45

    .line 270
    .local v5, "cellSize":I
    move v8, v4

    .line 271
    .local v8, "cellsRemaining":I
    const/16 v31, 0x0

    .line 272
    .local v31, "maxChildHeight":I
    const/16 v30, 0x0

    .line 273
    .local v30, "maxCellsUsed":I
    const/16 v19, 0x0

    .line 274
    .local v19, "expandableItemCount":I
    const/16 v40, 0x0

    .line 275
    .local v40, "visibleItemCount":I
    const/16 v22, 0x0

    .line 278
    .local v22, "hasOverflow":Z
    const-wide/16 v38, 0x0

    .line 280
    .local v38, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v13

    .line 281
    .local v13, "childCount":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_2
    move/from16 v0, v26

    if-ge v0, v13, :cond_b

    .line 282
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 283
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_3

    .line 281
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 285
    :cond_3
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v27, v0

    .line 286
    .local v27, "isGeneratedItem":Z
    add-int/lit8 v40, v40, 0x1

    .line 297
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 298
    .local v29, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 299
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 300
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 301
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 302
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 303
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 304
    if-eqz v27, :cond_7

    move-object/from16 v44, v12

    check-cast v44, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v44

    if-eqz v44, :cond_7

    const/16 v44, 0x1

    :goto_4
    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 307
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v44, v0

    if-eqz v44, :cond_8

    const/4 v7, 0x1

    .line 309
    .local v7, "cellsAvailable":I
    :goto_5
    move/from16 v0, v28

    move/from16 v1, v24

    invoke-static {v12, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 312
    .local v9, "cellsUsed":I
    move/from16 v0, v30

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 313
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v44, v0

    if-eqz v44, :cond_4

    add-int/lit8 v19, v19, 0x1

    .line 314
    :cond_4
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v44, v0

    if-eqz v44, :cond_5

    const/16 v22, 0x1

    .line 316
    :cond_5
    sub-int/2addr v8, v9

    .line 317
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v44

    move/from16 v0, v31

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v31

    .line 318
    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v9, v0, :cond_6

    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    or-long v38, v38, v44

    .line 323
    :cond_6
    if-eqz v27, :cond_9

    move-object/from16 v44, v12

    check-cast v44, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v44

    if-eqz v44, :cond_9

    move-object/from16 v44, v12

    .line 324
    check-cast v44, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getTextMenuMaxWidth(I)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/internal/view/menu/ActionMenuItemView;->setMaxWidth(I)V

    .line 325
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->getTextMenuMaxWidth(I)I

    move-result v44

    const/high16 v45, -0x80000000

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 326
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->measureChild(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 304
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_7
    const/16 v44, 0x0

    goto/16 :goto_4

    :cond_8
    move v7, v8

    .line 307
    goto :goto_5

    .line 327
    .restart local v7    # "cellsAvailable":I
    .restart local v9    # "cellsUsed":I
    :cond_9
    invoke-static {v12}, Lcom/android/internal/view/menu/ActionMenuView;->isActionView(Landroid/view/View;)Z

    move-result v44

    if-eqz v44, :cond_a

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 329
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_3

    .line 331
    :cond_a
    const/16 v21, 0x1

    goto/16 :goto_3

    .line 338
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    .end local v12    # "child":Landroid/view/View;
    .end local v27    # "isGeneratedItem":Z
    .end local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_b
    if-eqz v22, :cond_d

    const/16 v44, 0x2

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_d

    const/4 v11, 0x1

    .line 343
    .local v11, "centerSingleExpandedItem":Z
    :goto_6
    const/16 v36, 0x0

    .line 348
    .local v36, "needsExpansion":Z
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v44, v0

    if-nez v44, :cond_11

    if-lez v19, :cond_11

    if-lez v8, :cond_11

    .line 350
    const v32, 0x7fffffff

    .line 351
    .local v32, "minCells":I
    const-wide/16 v33, 0x0

    .line 352
    .local v33, "minCellsAt":J
    const/16 v35, 0x0

    .line 353
    .local v35, "minCellsItemCount":I
    const/16 v26, 0x0

    :goto_8
    move/from16 v0, v26

    if-ge v0, v13, :cond_10

    .line 354
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 355
    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 358
    .restart local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v44, v0

    if-nez v44, :cond_e

    .line 353
    :cond_c
    :goto_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 338
    .end local v11    # "centerSingleExpandedItem":Z
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v32    # "minCells":I
    .end local v33    # "minCellsAt":J
    .end local v35    # "minCellsItemCount":I
    .end local v36    # "needsExpansion":Z
    :cond_d
    const/4 v11, 0x0

    goto :goto_6

    .line 361
    .restart local v11    # "centerSingleExpandedItem":Z
    .restart local v12    # "child":Landroid/view/View;
    .restart local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v32    # "minCells":I
    .restart local v33    # "minCellsAt":J
    .restart local v35    # "minCellsItemCount":I
    .restart local v36    # "needsExpansion":Z
    :cond_e
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v32

    if-ge v0, v1, :cond_f

    .line 362
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v32, v0

    .line 363
    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v33, v0

    .line 364
    const/16 v35, 0x1

    goto :goto_9

    .line 365
    :cond_f
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 366
    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    or-long v33, v33, v44

    .line 367
    add-int/lit8 v35, v35, 0x1

    goto :goto_9

    .line 372
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_10
    or-long v38, v38, v33

    .line 374
    move/from16 v0, v35

    if-le v0, v8, :cond_16

    .line 403
    .end local v32    # "minCells":I
    .end local v33    # "minCellsAt":J
    .end local v35    # "minCellsItemCount":I
    :cond_11
    if-nez v22, :cond_1b

    const/16 v44, 0x1

    move/from16 v0, v40

    move/from16 v1, v44

    if-ne v0, v1, :cond_1b

    const/16 v37, 0x1

    .line 410
    .local v37, "singleItem":Z
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    move/from16 v44, v0

    if-nez v44, :cond_23

    if-lez v8, :cond_23

    const-wide/16 v44, 0x0

    cmp-long v44, v38, v44

    if-eqz v44, :cond_23

    if-eqz v21, :cond_23

    add-int/lit8 v44, v40, -0x1

    move/from16 v0, v44

    if-lt v8, v0, :cond_12

    if-nez v37, :cond_12

    const/16 v44, 0x1

    move/from16 v0, v30

    move/from16 v1, v44

    if-le v0, v1, :cond_23

    .line 414
    :cond_12
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->bitCount(J)I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v18, v0

    .line 416
    .local v18, "expandCount":F
    if-nez v37, :cond_14

    .line 418
    const-wide/16 v44, 0x1

    and-long v44, v44, v38

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-eqz v44, :cond_13

    .line 419
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 420
    .restart local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-nez v44, :cond_13

    const/high16 v44, 0x3f000000    # 0.5f

    sub-float v18, v18, v44

    .line 422
    .end local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_13
    const/16 v44, 0x1

    add-int/lit8 v45, v13, -0x1

    shl-int v44, v44, v45

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    and-long v44, v44, v38

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-eqz v44, :cond_14

    .line 423
    add-int/lit8 v44, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 424
    .restart local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-nez v44, :cond_14

    const/high16 v44, 0x3f000000    # 0.5f

    sub-float v18, v18, v44

    .line 428
    .end local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_14
    const/16 v44, 0x0

    cmpl-float v44, v18, v44

    if-lez v44, :cond_1c

    mul-int v44, v8, v5

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    div-float v44, v44, v18

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v20, v0

    .line 431
    .local v20, "extraPixels":I
    :goto_b
    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    if-ge v0, v13, :cond_22

    .line 432
    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    and-long v44, v44, v38

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-nez v44, :cond_1d

    .line 431
    :cond_15
    :goto_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    .line 377
    .end local v18    # "expandCount":F
    .end local v20    # "extraPixels":I
    .end local v37    # "singleItem":Z
    .restart local v32    # "minCells":I
    .restart local v33    # "minCellsAt":J
    .restart local v35    # "minCellsItemCount":I
    :cond_16
    add-int/lit8 v32, v32, 0x1

    .line 379
    const/16 v26, 0x0

    :goto_e
    move/from16 v0, v26

    if-ge v0, v13, :cond_1a

    .line 380
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 381
    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 382
    .restart local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    and-long v44, v44, v33

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-nez v44, :cond_18

    .line 384
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    const/16 v44, 0x1

    shl-int v44, v44, v26

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    or-long v38, v38, v44

    .line 379
    :cond_17
    :goto_f
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 388
    :cond_18
    if-eqz v11, :cond_19

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-eqz v44, :cond_19

    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v8, v0, :cond_19

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v44, v0

    add-int v44, v44, v5

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v46, v0

    const/16 v47, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 392
    :cond_19
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 393
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 394
    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .line 397
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1a
    const/16 v36, 0x1

    .line 398
    goto/16 :goto_7

    .line 403
    .end local v32    # "minCells":I
    .end local v33    # "minCellsAt":J
    .end local v35    # "minCellsItemCount":I
    :cond_1b
    const/16 v37, 0x0

    goto/16 :goto_a

    .line 428
    .restart local v18    # "expandCount":F
    .restart local v37    # "singleItem":Z
    :cond_1c
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 434
    .restart local v20    # "extraPixels":I
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 435
    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 436
    .restart local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v44, v0

    if-eqz v44, :cond_1f

    .line 438
    move/from16 v0, v20

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 439
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 440
    if-nez v26, :cond_1e

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v44, v0

    if-nez v44, :cond_1e

    .line 443
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v44, v0

    div-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 445
    :cond_1e
    const/16 v36, 0x1

    goto/16 :goto_d

    .line 446
    :cond_1f
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v44, v0

    if-eqz v44, :cond_20

    .line 447
    move/from16 v0, v20

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 448
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 449
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v44, v0

    div-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 450
    const/16 v36, 0x1

    goto/16 :goto_d

    .line 455
    :cond_20
    if-eqz v26, :cond_21

    .line 456
    div-int/lit8 v44, v20, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 458
    :cond_21
    add-int/lit8 v44, v13, -0x1

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_15

    .line 459
    div-int/lit8 v44, v20, 0x2

    move/from16 v0, v44

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_d

    .line 464
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_22
    const/4 v8, 0x0

    .line 468
    .end local v18    # "expandCount":F
    .end local v20    # "extraPixels":I
    :cond_23
    if-eqz v36, :cond_25

    .line 469
    const/16 v26, 0x0

    :goto_10
    move/from16 v0, v26

    if-ge v0, v13, :cond_25

    .line 470
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 471
    .restart local v12    # "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 473
    .restart local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v44, v0

    if-nez v44, :cond_24

    .line 469
    :goto_11
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 475
    :cond_24
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v44, v0

    mul-int v44, v44, v5

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v45, v0

    add-int v41, v44, v45

    .line 476
    .local v41, "width":I
    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v41

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    move/from16 v0, v44

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_11

    .line 481
    .end local v12    # "child":Landroid/view/View;
    .end local v29    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v41    # "width":I
    :cond_25
    const/high16 v44, 0x40000000    # 2.0f

    move/from16 v0, v23

    move/from16 v1, v44

    if-eq v0, v1, :cond_26

    .line 482
    move/from16 v25, v31

    .line 485
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v43

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 486
    mul-int v44, v8, v5

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method

.method private setChildLayoutPosition(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutPosition"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add updateSmartBarConfiguration"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1193
    instance-of v0, p1, Lcom/meizu/widget/LayoutPositionState;

    if-eqz v0, :cond_0

    .line 1194
    check-cast p1, Lcom/meizu/widget/LayoutPositionState;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1, p2}, Lcom/meizu/widget/LayoutPositionState;->setLayoutPosition(I)V

    .line 1196
    :cond_0
    return-void
.end method

.method private setChildrenLayoutPosition()V
    .locals 4
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to setChildrenLayoutPosition"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1268
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 1270
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1271
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1272
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 1273
    invoke-virtual {v0, v3}, Landroid/view/View;->expandTouchWidth(I)V

    .line 1270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1275
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updatePaddingsForItem()V
    .locals 5
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add to updatePaddingsForItem"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1249
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1250
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10500c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 1251
    const v2, 0x10500ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    .line 1253
    const v2, 0x10500c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    .line 1254
    const v2, 0x10500cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 1255
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1256
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1257
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v4, v4, v2, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setPadding(IIII)V

    .line 1261
    :goto_0
    return-void

    .line 1259
    :cond_0
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateSmartBarConfiguration()V
    .locals 1
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add updateSmartBarConfiguration"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/widget/SmartBarConfiguration;->get(Landroid/content/Context;)Lcom/meizu/widget/SmartBarConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    .line 1213
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPadding()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    .line 1214
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getHorizontalPaddingFor4()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPaddingFor4:I

    .line 1215
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonPadding()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mItemPadding:I

    .line 1216
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getButtonWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mCellWidth:I

    .line 1217
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mSmartBarConfig:Lcom/meizu/widget/SmartBarConfiguration;

    invoke-virtual {v0}, Lcom/meizu/widget/SmartBarConfiguration;->getExpandedTouchWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mExpandedTouchWidth:I

    .line 1218
    sget-object v0, Landroid/os/Build;->IS_MX:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1219
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mShouldDectePaddingAjustment:Z

    .line 1225
    :cond_1
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 784
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 823
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 757
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 759
    .local v0, "params":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 760
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 765
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 770
    if-eqz p1, :cond_2

    .line 771
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 774
    .local v0, "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 775
    const/16 v1, 0x10

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 779
    .end local v0    # "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 771
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 779
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 789
    .local v0, "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 790
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 807
    if-nez p1, :cond_1

    .line 808
    const/4 v2, 0x0

    .line 819
    :cond_0
    :goto_0
    return v2

    .line 810
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 811
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 812
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 813
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 814
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 816
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 817
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 803
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 152
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, v10}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 154
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 156
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 161
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x109001b

    invoke-virtual {v3, v6, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 165
    .local v5, "tempActionMenuItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    if-eqz v5, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 167
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 170
    .local v4, "isGeneratedItem":Z
    if-eqz v4, :cond_1

    .line 171
    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 167
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "isGeneratedItem":Z
    :cond_2
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 181
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10500d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0, v10, v10, v6, v10}, Lcom/android/internal/view/menu/ActionMenuView;->setPadding(IIII)V

    .line 186
    :goto_1
    return-void

    .line 183
    :cond_3
    invoke-virtual {p0, v10, v10, v10, v10}, Lcom/android/internal/view/menu/ActionMenuView;->setPadding(IIII)V

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 743
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 744
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 745
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 36
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->CHANGE_CODE:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. onLayout add to layout child"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 557
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v34, v0

    if-nez v34, :cond_1

    .line 558
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 561
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->setChildrenLayoutPosition()V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    .line 567
    .local v6, "childCount":I
    add-int v34, p3, p5

    div-int/lit8 v16, v34, 0x2

    .line 568
    .local v16, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getDividerWidth()I

    move-result v7

    .line 569
    .local v7, "dividerWidth":I
    const/16 v19, 0x0

    .line 570
    .local v19, "overflowWidth":I
    const/16 v18, 0x0

    .line 571
    .local v18, "nonOverflowWidth":I
    const/16 v17, 0x0

    .line 572
    .local v17, "nonOverflowCount":I
    sub-int v34, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v35

    sub-int v34, v34, v35

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v35

    sub-int v33, v34, v35

    .line 573
    .local v33, "widthRemaining":I
    const/4 v9, 0x0

    .line 574
    .local v9, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->isLayoutRtl()Z

    move-result v12

    .line 577
    .local v12, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v34, v0

    mul-int/lit8 v34, v34, 0x2

    sub-int v33, v33, v34

    .line 578
    const/4 v8, 0x0

    .line 579
    .local v8, "hasCustomAction":Z
    const/16 v31, 0x0

    .line 583
    .local v31, "visibleItemCount":I
    const/16 v28, 0x0

    .line 585
    .local v28, "toTakePlaceChildCount":I
    const/16 v29, -0x1

    .line 586
    .local v29, "toTakePlaceChildIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v6, :cond_8

    .line 587
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 588
    .local v30, "v":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_3

    .line 586
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 593
    :cond_3
    add-int/lit8 v28, v28, 0x1

    .line 594
    move/from16 v29, v11

    .line 598
    add-int/lit8 v31, v31, 0x1

    .line 600
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 601
    .local v20, "p":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v34, v0

    if-eqz v34, :cond_6

    .line 602
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 603
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 604
    add-int v19, v19, v7

    .line 607
    :cond_4
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 610
    .local v10, "height":I
    if-eqz v12, :cond_5

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v34

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v35, v0

    add-int v13, v34, v35

    .line 614
    .local v13, "l":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v34, v0

    add-int v13, v13, v34

    .line 616
    add-int v21, v13, v19

    .line 624
    .local v21, "r":I
    :goto_3
    div-int/lit8 v34, v10, 0x2

    sub-int v27, v16, v34

    .line 625
    .local v27, "t":I
    add-int v5, v27, v10

    .line 626
    .local v5, "b":I
    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 628
    sub-int v33, v33, v19

    .line 629
    const/4 v9, 0x1

    .line 630
    goto :goto_2

    .line 618
    .end local v5    # "b":I
    .end local v13    # "l":I
    .end local v21    # "r":I
    .end local v27    # "t":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v35

    sub-int v34, v34, v35

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v35, v0

    sub-int v21, v34, v35

    .line 620
    .restart local v21    # "r":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v34, v0

    sub-int v21, v21, v34

    .line 622
    sub-int v13, v21, v19

    .restart local v13    # "l":I
    goto :goto_3

    .line 631
    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v21    # "r":I
    :cond_6
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v35, v0

    add-int v22, v34, v35

    .line 632
    .local v22, "size":I
    add-int v18, v18, v22

    .line 633
    sub-int v33, v33, v22

    .line 634
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 635
    add-int v18, v18, v7

    .line 637
    :cond_7
    add-int/lit8 v17, v17, 0x1

    .line 641
    invoke-static/range {v30 .. v30}, Lcom/android/internal/view/menu/ActionMenuView;->isActionView(Landroid/view/View;)Z

    move-result v34

    if-nez v34, :cond_2

    .line 642
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 651
    .end local v20    # "p":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v22    # "size":I
    .end local v30    # "v":Landroid/view/View;
    :cond_8
    const/16 v34, 0x1

    move/from16 v0, v31

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v0, v34

    instance-of v0, v0, Lcom/meizu/widget/KeyBackButton;

    move/from16 v34, v0

    if-eqz v34, :cond_a

    .line 652
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 653
    .restart local v30    # "v":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 654
    .restart local v10    # "height":I
    div-int/lit8 v34, v10, 0x2

    sub-int v27, v16, v34

    .line 655
    .restart local v27    # "t":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v34, v0

    add-int p2, p2, v34

    .line 656
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    add-int v34, v34, p2

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v35

    add-int v35, v35, v27

    move-object/from16 v0, v30

    move/from16 v1, p2

    move/from16 v2, v27

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mShouldDectePaddingAjustment:Z

    move/from16 v34, v0

    if-eqz v34, :cond_9

    .line 658
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    .line 662
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExpandedTouchWidth:I

    move/from16 v34, v0

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->expandTouchWidth(I)V

    goto/16 :goto_0

    .line 660
    :cond_9
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->setChildLayoutPosition(Landroid/view/View;I)V

    goto :goto_4

    .line 667
    .end local v10    # "height":I
    .end local v27    # "t":I
    .end local v30    # "v":Landroid/view/View;
    :cond_a
    if-nez v8, :cond_b

    if-lez v31, :cond_b

    const/16 v34, 0x5

    move/from16 v0, v31

    move/from16 v1, v34

    if-gt v0, v1, :cond_b

    .line 669
    sub-int v34, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v35

    sub-int v34, v34, v35

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v35

    sub-int v33, v34, v35

    .line 670
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->layoutMenuItems(III)V

    goto/16 :goto_0

    .line 682
    :cond_b
    const/16 v34, 0x1

    move/from16 v0, v34

    if-ne v6, v0, :cond_c

    if-nez v9, :cond_c

    .line 684
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 686
    .restart local v30    # "v":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    .line 687
    .local v32, "width":I
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 688
    .restart local v10    # "height":I
    sub-int v34, p4, p2

    div-int/lit8 v15, v34, 0x2

    .line 689
    .local v15, "midHorizontal":I
    div-int/lit8 v34, v32, 0x2

    sub-int v13, v15, v34

    .line 690
    .restart local v13    # "l":I
    div-int/lit8 v34, v10, 0x2

    sub-int v27, v16, v34

    .line 691
    .restart local v27    # "t":I
    add-int v34, v13, v32

    add-int v35, v27, v10

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 695
    .end local v10    # "height":I
    .end local v13    # "l":I
    .end local v15    # "midHorizontal":I
    .end local v27    # "t":I
    .end local v30    # "v":Landroid/view/View;
    .end local v32    # "width":I
    :cond_c
    if-eqz v9, :cond_e

    const/16 v34, 0x0

    :goto_5
    sub-int v23, v17, v34

    .line 696
    .local v23, "spacerCount":I
    const/16 v35, 0x0

    if-lez v23, :cond_f

    div-int v34, v33, v23

    :goto_6
    move/from16 v0, v35

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 698
    .local v24, "spacerSize":I
    if-eqz v12, :cond_11

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getWidth()I

    move-result v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingRight()I

    move-result v35

    sub-int v26, v34, v35

    .line 702
    .local v26, "startRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v34, v0

    sub-int v26, v26, v34

    .line 704
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v6, :cond_0

    .line 705
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 706
    .restart local v30    # "v":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 707
    .local v14, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_d

    iget-boolean v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v34, v0

    if-eqz v34, :cond_10

    .line 704
    :cond_d
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 695
    .end local v14    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v23    # "spacerCount":I
    .end local v24    # "spacerSize":I
    .end local v26    # "startRight":I
    .end local v30    # "v":Landroid/view/View;
    :cond_e
    const/16 v34, 0x1

    goto :goto_5

    .line 696
    .restart local v23    # "spacerCount":I
    :cond_f
    const/16 v34, 0x0

    goto :goto_6

    .line 711
    .restart local v14    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v24    # "spacerSize":I
    .restart local v26    # "startRight":I
    .restart local v30    # "v":Landroid/view/View;
    :cond_10
    iget v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v34, v0

    sub-int v26, v26, v34

    .line 712
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    .line 713
    .restart local v32    # "width":I
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 714
    .restart local v10    # "height":I
    div-int/lit8 v34, v10, 0x2

    sub-int v27, v16, v34

    .line 715
    .restart local v27    # "t":I
    sub-int v34, v26, v32

    add-int v35, v27, v10

    move-object/from16 v0, v30

    move/from16 v1, v34

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 716
    iget v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v34, v0

    add-int v34, v34, v32

    add-int v34, v34, v24

    sub-int v26, v26, v34

    goto :goto_8

    .line 719
    .end local v10    # "height":I
    .end local v14    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v26    # "startRight":I
    .end local v27    # "t":I
    .end local v30    # "v":Landroid/view/View;
    .end local v32    # "width":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getPaddingLeft()I

    move-result v25

    .line 722
    .local v25, "startLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mExtraPadding:I

    move/from16 v34, v0

    add-int v25, v25, v34

    .line 724
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v6, :cond_0

    .line 725
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 726
    .restart local v30    # "v":Landroid/view/View;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 727
    .restart local v14    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getVisibility()I

    move-result v34

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_12

    iget-boolean v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v34, v0

    if-eqz v34, :cond_13

    .line 724
    :cond_12
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 731
    :cond_13
    iget v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v34, v0

    add-int v25, v25, v34

    .line 732
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    .line 733
    .restart local v32    # "width":I
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 734
    .restart local v10    # "height":I
    div-int/lit8 v34, v10, 0x2

    sub-int v27, v16, v34

    .line 735
    .restart local v27    # "t":I
    add-int v34, v25, v32

    add-int v35, v27, v10

    move-object/from16 v0, v30

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 736
    iget v0, v14, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v34, v0

    add-int v34, v34, v32

    add-int v34, v34, v24

    add-int v25, v25, v34

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 191
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 192
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 194
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 195
    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 200
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 201
    .local v5, "widthSize":I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 202
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 203
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 206
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 218
    :goto_1
    return-void

    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 192
    goto :goto_0

    .line 210
    .restart local v5    # "widthSize":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 211
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 214
    .local v3, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 216
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public onSmartBarConfigurationChanged()V
    .locals 0
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add updateSmartBarConfiguration"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 1203
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuView;->updateSmartBarConfiguration()V

    .line 1204
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 1205
    return-void
.end method

.method public setMaxItemHeight(I)V
    .locals 0
    .param p1, "maxItemHeight"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 147
    return-void
.end method

.method public setMenuShowGravity(I)V
    .locals 0
    .param p1, "showGravity"    # I
    .annotation build Landroid/annotation/FlymeHook;
        level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_METHOD:Landroid/annotation/FlymeHook$FlymeHookType;
        note = "cjy@SDK.Feature. add setMenuShowGravity"
        property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
    .end annotation

    .prologue
    .line 874
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenuShowGravity:I

    .line 875
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 753
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 138
    return-void
.end method
