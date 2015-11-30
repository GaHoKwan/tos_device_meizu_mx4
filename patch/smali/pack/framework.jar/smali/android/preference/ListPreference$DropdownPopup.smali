.class Landroid/preference/ListPreference$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "ListPreference.java"


# annotations
.annotation build Landroid/annotation/FlymeHook;
    level = .enum Landroid/annotation/FlymeHook$FlymeHookType;->NEW_CLASS:Landroid/annotation/FlymeHook$FlymeHookType;
    note = "xiaohongzhi@SDK.Feature"
    property = .enum Landroid/annotation/FlymeHook$FlymeRomType;->ROM:Landroid/annotation/FlymeHook$FlymeRomType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/ListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/preference/ListPreference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleRes"    # I

    .prologue
    .line 589
    iput-object p1, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    .line 590
    const v0, 0x10102ff

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 592
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference$DropdownPopup;->setModal(Z)V

    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference$DropdownPopup;->setPromptPosition(I)V

    .line 594
    new-instance v0, Landroid/preference/ListPreference$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/preference/ListPreference$DropdownPopup$1;-><init>(Landroid/preference/ListPreference$DropdownPopup;Landroid/preference/ListPreference;)V

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 603
    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 607
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 608
    iput-object p1, p0, Landroid/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 609
    return-void
.end method

.method public show()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 613
    invoke-virtual {p0}, Landroid/preference/ListPreference$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 614
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 615
    .local v4, "hOffset":I
    if-eqz v3, :cond_8

    .line 616
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 617
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    iget v4, v10, Landroid/graphics/Rect;->right:I

    .line 622
    :goto_0
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 623
    .local v0, "anchorViewPaddingLeft":I
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 624
    .local v1, "anchorViewPaddingRight":I
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 627
    .local v2, "anchorViewWidth":I
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mDropDownWidth:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$300(Landroid/preference/ListPreference;)I

    move-result v10

    if-lez v10, :cond_0

    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mDropDownWidth:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$300(Landroid/preference/ListPreference;)I

    move-result v10

    sub-int v11, v2, v0

    sub-int/2addr v11, v1

    if-le v10, v11, :cond_1

    .line 628
    :cond_0
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    sub-int v11, v2, v0

    sub-int/2addr v11, v1

    # setter for: Landroid/preference/ListPreference;->mDropDownWidth:I
    invoke-static {v10, v11}, Landroid/preference/ListPreference;->access$302(Landroid/preference/ListPreference;I)I

    .line 630
    :cond_1
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mDropDownWidth:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$300(Landroid/preference/ListPreference;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/preference/ListPreference$DropdownPopup;->setContentWidth(I)V

    .line 633
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Landroid/preference/ListPreference$DropdownPopup;->setLayoutMode(I)V

    .line 636
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mMaxDropDownHeight:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$400(Landroid/preference/ListPreference;)I

    move-result v10

    if-lez v10, :cond_5

    .line 637
    const/4 v7, 0x0

    .line 638
    .local v7, "listHeight":I
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-lez v10, :cond_4

    .line 639
    const/4 v8, 0x0

    .line 641
    .local v8, "position":I
    :cond_2
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/preference/ListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v12

    invoke-interface {v10, v8, v11, v12}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 642
    .local v5, "itemView":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 643
    invoke-virtual {v5, v13, v13}, Landroid/view/View;->measure(II)V

    .line 644
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v7, v10

    .line 646
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 647
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    if-lt v8, v10, :cond_2

    .line 651
    .end local v5    # "itemView":Landroid/view/View;
    .end local v8    # "position":I
    :cond_4
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mMaxDropDownHeight:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$400(Landroid/preference/ListPreference;)I

    move-result v10

    if-le v7, v10, :cond_5

    .line 652
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mMaxDropDownHeight:I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$400(Landroid/preference/ListPreference;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/preference/ListPreference$DropdownPopup;->setHeight(I)V

    .line 656
    .end local v7    # "listHeight":I
    :cond_5
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/preference/ListPreference$DropdownPopup;->setInputMethodMode(I)V

    .line 657
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 658
    invoke-virtual {p0}, Landroid/preference/ListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 661
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # invokes: Landroid/preference/ListPreference;->getValueIndex()I
    invoke-static {v10}, Landroid/preference/ListPreference;->access$500(Landroid/preference/ListPreference;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/preference/ListPreference$DropdownPopup;->setSelection(I)V

    .line 663
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mAnchorView:Landroid/view/View;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$200(Landroid/preference/ListPreference;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    .line 664
    .local v9, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v9, :cond_6

    .line 665
    new-instance v6, Landroid/preference/ListPreference$DropdownPopup$2;

    invoke-direct {v6, p0}, Landroid/preference/ListPreference$DropdownPopup$2;-><init>(Landroid/preference/ListPreference$DropdownPopup;)V

    .line 680
    .local v6, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v9, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 681
    new-instance v10, Landroid/preference/ListPreference$DropdownPopup$3;

    invoke-direct {v10, p0, v6}, Landroid/preference/ListPreference$DropdownPopup$3;-><init>(Landroid/preference/ListPreference$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v10}, Landroid/preference/ListPreference$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 693
    .end local v6    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_6
    return-void

    .line 617
    .end local v0    # "anchorViewPaddingLeft":I
    .end local v1    # "anchorViewPaddingRight":I
    .end local v2    # "anchorViewWidth":I
    .end local v9    # "vto":Landroid/view/ViewTreeObserver;
    :cond_7
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v4, v10

    goto/16 :goto_0

    .line 619
    :cond_8
    iget-object v10, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/graphics/Rect;

    move-result-object v10

    iget-object v11, p0, Landroid/preference/ListPreference$DropdownPopup;->this$0:Landroid/preference/ListPreference;

    # getter for: Landroid/preference/ListPreference;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v11}, Landroid/preference/ListPreference;->access$100(Landroid/preference/ListPreference;)Landroid/graphics/Rect;

    move-result-object v11

    iput v13, v11, Landroid/graphics/Rect;->right:I

    iput v13, v10, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0
.end method
