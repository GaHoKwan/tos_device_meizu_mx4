.class public Lcom/android/internal/view/menu/GridMenuPopupHelper;
.super Ljava/lang/Object;
.source "GridMenuPopupHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MzMenuPopupHelper"


# instance fields
.field gridView:Landroid/widget/GridView;

.field private mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/view/menu/GridMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 91
    iput-object p2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 92
    iput-boolean p4, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mOverflowOnly:Z

    .line 93
    iput-object p3, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 95
    invoke-virtual {p2, p0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/GridMenuPopupHelper;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/GridMenuPopupHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/GridMenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/view/menu/GridMenuPopupHelper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private getNumColumns(I)I
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x6

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "numColumns":I
    if-gt p1, v1, :cond_1

    .line 182
    const/4 v0, 0x3

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    if-le p1, v1, :cond_0

    .line 184
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private measureContentHeight(Landroid/widget/GridView;)I
    .locals 17
    .param p1, "view"    # Landroid/widget/GridView;

    .prologue
    .line 237
    const/4 v8, 0x0

    .line 238
    .local v8, "maxItemHeight":I
    const/4 v7, 0x0

    .line 239
    .local v7, "itemView":Landroid/view/View;
    const/4 v6, 0x0

    .line 241
    .local v6, "itemType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    .line 242
    .local v1, "adapter":Landroid/widget/ListAdapter;
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 243
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 244
    .local v3, "heightMeasureSpec":I
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 245
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 246
    invoke-interface {v1, v4}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v11

    .line 247
    .local v11, "positionType":I
    if-eq v11, v6, :cond_0

    .line 248
    move v6, v11

    .line 249
    const/4 v7, 0x0

    .line 252
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v15, :cond_1

    .line 253
    new-instance v15, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 256
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v1, v4, v7, v15}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 257
    invoke-virtual {v7, v14, v3}, Landroid/view/View;->measure(II)V

    .line 259
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 260
    .local v5, "itemHeight":I
    if-le v5, v8, :cond_2

    .line 261
    move v8, v5

    .line 245
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 264
    .end local v5    # "itemHeight":I
    .end local v11    # "positionType":I
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->getNumColumns(I)I

    move-result v9

    .line 265
    .local v9, "numColumns":I
    div-int v16, v2, v9

    rem-int v15, v2, v9

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    :goto_1
    add-int v10, v16, v15

    .line 266
    .local v10, "numRows":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result v13

    .line 267
    .local v13, "verticalSpacing":I
    mul-int v15, v8, v10

    add-int/lit8 v16, v10, -0x1

    mul-int v16, v16, v13

    add-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v16

    add-int v12, v15, v16

    .line 269
    .local v12, "totalHeight":I
    return v12

    .line 265
    .end local v10    # "numRows":I
    .end local v12    # "totalHeight":I
    .end local v13    # "verticalSpacing":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private measureContentWidth(Landroid/widget/GridView;)I
    .locals 5
    .param p1, "view"    # Landroid/widget/GridView;

    .prologue
    .line 225
    iget-object v2, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105015e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 226
    .local v0, "itemWidth":I
    invoke-virtual {p1}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getCount()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->getNumColumns(I)I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/GridView;->getRequestedHorizontalSpacing()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->getNumColumns(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int v1, v2, v3

    .line 228
    .local v1, "width":I
    return v1
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 193
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 323
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 319
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->dismiss()V

    .line 395
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    iput-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    .line 197
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 198
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 201
    iput-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 204
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 276
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->dismiss()V

    .line 283
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 278
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 212
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    .line 213
    .local v0, "adapter":Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;
    # getter for: Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->access$000(Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 214
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 217
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->dismiss()V

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 425
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 9
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 338
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-direct {p0, v5}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->measureContentHeight(Landroid/widget/GridView;)I

    .line 340
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 341
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuItemImpl;->isSubMenuShowAsGrid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 342
    new-instance v4, Lcom/android/internal/view/menu/GridMenuPopupHelper;

    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v8, v7}, Lcom/android/internal/view/menu/GridMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 343
    .local v4, "subPopup":Lcom/android/internal/view/menu/GridMenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 345
    const/4 v3, 0x0

    .line 346
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 347
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 348
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 349
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 350
    const/4 v3, 0x1

    .line 354
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->setForceShowIcon(Z)V

    .line 356
    invoke-virtual {v4}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 357
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 358
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    :cond_1
    move v5, v6

    .line 386
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/GridMenuPopupHelper;
    :goto_1
    return v5

    .line 347
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/android/internal/view/menu/GridMenuPopupHelper;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/GridMenuPopupHelper;
    :cond_3
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v5, p1, v8, v7}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 364
    .local v4, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 366
    const/4 v3, 0x0

    .line 367
    .restart local v3    # "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 368
    .restart local v1    # "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 369
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 370
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 371
    const/4 v3, 0x1

    .line 375
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_4
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 377
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 378
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v5, :cond_5

    .line 379
    iget-object v5, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    :cond_5
    move v5, v6

    .line 381
    goto :goto_1

    .line 368
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_7
    move v5, v7

    .line 386
    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 293
    .local v0, "addGlobalListener":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 294
    if-eqz v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 297
    .end local v0    # "addGlobalListener":Z
    :cond_0
    return-void

    .line 292
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 312
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 314
    :cond_2
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 100
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 334
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mForceShowIcon:Z

    .line 104
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 13

    .prologue
    .line 113
    new-instance v8, Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const v11, 0x1010076

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    .line 114
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 116
    new-instance v8, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    iget-object v9, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v8, p0, v9}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;-><init>(Lcom/android/internal/view/menu/GridMenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    iput-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    .line 117
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x1090075

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 118
    .local v6, "view":Landroid/view/View;
    const v8, 0x102032b

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    iput-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    .line 119
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    if-nez v8, :cond_0

    .line 120
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Content view is null!"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 122
    :cond_0
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setOverScrollMode(I)V

    .line 123
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v8, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v8, p0}, Landroid/widget/GridView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 126
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    invoke-virtual {v8}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->getCount()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->getNumColumns(I)I

    move-result v3

    .line 127
    .local v3, "numColumns":I
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v8, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 129
    const/4 v8, 0x3

    if-le v3, v8, :cond_2

    .line 130
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getRequestedHorizontalSpacing()I

    move-result v8

    if-eqz v8, :cond_1

    .line 131
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/widget/GridView;->getRequestedHorizontalSpacing()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 132
    :cond_1
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v8

    if-lez v8, :cond_2

    .line 133
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v9}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v10}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v11}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    iget-object v12, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 137
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_7

    .line 138
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v8, :cond_6

    const/4 v0, 0x1

    .line 139
    .local v0, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 140
    if-eqz v0, :cond_3

    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v8, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 141
    :cond_3
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 146
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 147
    .local v4, "popupBackground":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-direct {p0, v8}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->measureContentWidth(Landroid/widget/GridView;)I

    move-result v7

    .line 148
    .local v7, "width":I
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-direct {p0, v8}, Lcom/android/internal/view/menu/GridMenuPopupHelper;->measureContentHeight(Landroid/widget/GridView;)I

    move-result v2

    .line 149
    .local v2, "height":I
    if-eqz v4, :cond_4

    .line 150
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 151
    .local v5, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 152
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 153
    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 155
    .end local v5    # "tempRect":Landroid/graphics/Rect;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 156
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 157
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 158
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->gridView:Landroid/widget/GridView;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 159
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 160
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 163
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 164
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setLayoutMode(I)V

    .line 167
    :cond_5
    iget-object v8, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v9, v10, v11}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 169
    const/4 v8, 0x1

    .end local v0    # "addGlobalListener":Z
    .end local v2    # "height":I
    .end local v4    # "popupBackground":Landroid/graphics/drawable/Drawable;
    .end local v7    # "width":I
    :goto_1
    return v8

    .line 138
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_7
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/GridMenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/GridMenuPopupHelper$GridMenuAdapter;->notifyDataSetChanged()V

    .line 329
    :cond_0
    return-void
.end method
